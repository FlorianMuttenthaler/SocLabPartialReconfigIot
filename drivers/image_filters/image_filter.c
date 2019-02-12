#include <linux/kernel.h>
#include <linux/module.h>
#include <asm/uaccess.h> /* Needed for copy_from_user */
#include <asm/io.h> /* Needed for IO Read/Write Functions */
#include <linux/proc_fs.h> /* Needed for Proc File System Functions */
#include <linux/seq_file.h> /* Needed for Sequence File Operations */
#include <linux/platform_device.h> /* Needed for Platform Driver Functions */

/* Define Driver Name */
#define DRIVER_NAME "image_filter"

#define IMAGE_SIZE_MAX 4096	/* Maximum Imgae resolution is 64 * 64 */

//unsigned long *base_addr;	/* Vitual Base Address */
unsigned long *image_addr;	
unsigned long *enable_addr;
struct resource *res;		/* Device Resource Structure */
unsigned long remap_size;	/* Device Memory Size */

static struct file *filp = NULL;
static uint32_t filesize = 0;

static uint32_t image_data[IMAGE_SIZE_MAX];

/* Write operation for /proc/image_filter
* -----------------------------------
* When user cat a string to /proc/image_filter file, the string will be stored in
* const char __user *buf. This function will copy the string from user
* space into kernel space, and change it to an unsigned long value.
* It will then write the value to the register of myled controller,
* and turn on the corresponding LEDs eventually.
*/
static ssize_t proc_image_filter_write(struct file *file, const char __user * buf, size_t count, loff_t * ppos)
{
	char filename[64];
	mm_segment_t oldfs;
	unsigned long i;

	if(filp > 0 && !IS_ERR(filp))
	{
		printk("image_filter Module busy");
		return -EFAULT;
	}

	if (count < 64) {
		if (copy_from_user(filename, buf, count))
			return -EFAULT;
		filename[count-1] = '\0';
	}

	oldfs = get_fs();
	set_fs(get_ds());
	filp = filp_open(filename, O_RDONLY, 0);

	if(IS_ERR(filp))
	{
		printk("File \"%s\" is invalid\n", filename);
		return -EFAULT;
	}

	set_fs(oldfs);

	filesize = vfs_llseek(filp, 0, SEEK_END);
	vfs_llseek(filp, 0, 0);
	printk("File %s is %u (0x%x) bytes long\n", filename, filesize, filesize);

	for(i = 0; i < filesize; i++)
	{

	}


	char myled_phrase[16];
	u32 myled_value;
	if (count < 11) {
		if (copy_from_user(myled_phrase, buf, count))
			return -EFAULT;
		myled_phrase[count] = '\0';
	}
	myled_value = simple_strtoul(myled_phrase, NULL, 0);
	wmb();
	iowrite32(myled_value, base_addr);
	return count;
}

/* Callback function when opening file /proc/image_filter
* ------------------------------------------------------
* Read the register value of image_filter controller, print the value to
* the sequence file struct seq_file *p. In file open operation for /proc/image_filter
* this callback function will be called first to fill up the seq_file,
* and seq_read function will print whatever in seq_file to the terminal.
*/
static int proc_image_filter_show(struct seq_file *p, void *v)
{
	u32 myled_value;
	myled_value = ioread32(base_addr);
	seq_printf(p, "0x%x", myled_value);
	return 0;
}

/* Open function for /proc/image_filter
* ------------------------------------
* When user want to read /proc/image_filter (i.e. cat /proc/image_filter), the open function
* will be called first. In the open function, a seq_file will be prepared and the
* status of image_filter will be filled into the seq_file by proc_image_filter_show function.
*/
static int proc_image_filter_open(struct inode *inode, struct file *file)
{
	unsigned int size = 16;
	char *buf;
	struct seq_file *m;
	int res;
	buf = (char *)kmalloc(size * sizeof(char), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	res = single_open(file, proc_image_filter_show, NULL);
	if (!res) {
		m = file->private_data;
		m->buf = buf;
		m->size = size;
	} else {
		kfree(buf);
	}
	return res;
}

/* File Operations for /proc/image_filter */
static const struct file_operations proc_image_filter_operations = {
	.open = proc_image_filter_open,
	.read = seq_read,
	.write = proc_image_filter_write,
	.llseek = seq_lseek,
	.release = single_release
};

/* Shutdown function for myled
* -----------------------------------
* Before myled shutdown, turn-off all the leds
*/
static void myled_shutdown(struct platform_device *pdev)
{
	iowrite32(0, base_addr);
}

/* Remove function for myled
* ----------------------------------
* When myled module is removed, turn off all the leds first,
* release virtual address and the memory region requested.
*/
static int myled_remove(struct platform_device *pdev)
{
	myled_shutdown(pdev);
	/* Remove /proc/myled entry */
	remove_proc_entry(DRIVER_NAME, NULL);
	/* Release mapped virtual address */
	iounmap(base_addr);
	/* Release the region */
	release_mem_region(res->start, remap_size);
	return 0;
}

/* Device Probe function for myled
* ------------------------------------
* Get the resource structure from the information in device tree.
* request the memory regioon needed for the controller, and map it into
* kernel virtual memory space. Create an entry under /proc file system
* and register file operations for that entry.
*/
static int __devinit myled_probe(struct platform_device *pdev)
{
	struct proc_dir_entry *myled_proc_entry;
	int ret = 0;
	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		dev_err(&pdev->dev, "No memory resource\n");
		return -ENODEV;
	}
	remap_size = res->end - res->start + 1;
	if (!request_mem_region(res->start, remap_size, pdev->name)) {
		dev_err(&pdev->dev, "Cannot request IO\n");
	return -ENXIO;
	}
	base_addr = ioremap(res->start, remap_size);
	if (base_addr == NULL) {
		dev_err(&pdev->dev, "Couldn't ioremap memory at 0x%08lx\n",
		(unsigned long)res->start);
		ret = -ENOMEM;
		goto err_release_region;
	}
	myled_proc_entry = proc_create(DRIVER_NAME, 0, NULL,
	&proc_myled_operations);
	if (myled_proc_entry == NULL) {
		dev_err(&pdev->dev, "Couldn't create proc entry\n");
		ret = -ENOMEM;
		goto err_create_proc_entry;
	}
	printk(KERN_INFO DRIVER_NAME " probed at VA 0x%08lx\n",(unsigned long) base_addr);
	return 0;
	err_create_proc_entry:
iounmap(base_addr);
	err_release_region:
release_mem_region(res->start, remap_size);
	return ret;
}

/* device match table to match with device node in device tree */
static const struct of_device_id myled_of_match[] __devinitconst = {
	{.compatible = "dglnt,myled-1.00.a"},
	{},
};

MODULE_DEVICE_TABLE(of, myled_of_match);

/* platform driver structure for myled driver */
static struct platform_driver image_filter = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table = image_filter_of_match},
		.probe = image_filter_probe,
		.remove = __devexit_p(image_filter_remove),
		.shutdown = __devexit_p(image_filter_shutdown)
};

/* Register myled platform driver */
module_platform_driver(image_filter_driver);

/* Module Infomations */
MODULE_AUTHOR("Florian Muttenthaler");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION(DRIVER_NAME ": Image Filtering driver for blue, green, red filter purpose");
MODULE_ALIAS(DRIVER_NAME);
