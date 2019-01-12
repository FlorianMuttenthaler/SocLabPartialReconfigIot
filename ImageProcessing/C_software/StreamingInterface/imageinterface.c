/*
 * imageinterface.c
 *
 *  Created on: 06.01.2019
 *      Author: Florian
 */

#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stddef.h>
#include <sys/mman.h>

#include "imageinterface.h"

#define MAP_SIZE 	4096UL
#define MAP_MASK 	(MAP_SIZE - 1)

#define BASE_ADDR 	0x43C00000u

#define BASE_ADDR_OUT	0x43C00100u

static void *getvaddr(int phys_addr);

static void *getvaddr(int phys_addr) {
	void *mapped_base;
	int memfd;

	void *mapped_dev_base;
	off_t dev_base = phys_addr;

	memfd = open("/dev/mem", O_RDWR | O_SYNC); // to open this program needs to run as root
	if (memfd == -1) {
		printf("Can't open /dev/mem. \n");
		exit(0);
	}

	// Map one page of memory of the device in user space such that the device is in that page but it may not be at the start of the page
	mapped_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, memfd, dev_base & ~MAP_MASK);
	if (mapped_base == (void *) -1)
	{
		printf("Can't map the memory to user space. \n");
		exit(0);
	}
	// get the address of the device in user space which will be on offset from the base that was mapped as memory is mapped at the start of a page

	mapped_dev_base = mapped_base + (dev_base & MAP_MASK);
	return mapped_dev_base;
}

unsigned int ImageInterfaceWrite(unsigned int* ImageIn)
{
	unsigned int error = ImageInterfaceOK;
	unsigned int i,j;
	unsigned int * dev_base_vaddr = getvaddr(BASE_ADDR);
	unsigned int ImagePost[ImageColumnNumb][ImageRowNumb] = dev_base_vaddr;
	
	if (ImageIn == NULL)
	{
		error = ImageInterfaceNullError;
	}
	else
	{
		//dev_base_vaddr = getvaddr(BASE_ADDR);
		for (i = 0; i < ImageRowNumb; i++)
		{
			for (j = 0; j < ImageColumnNumb; j++)
			{
				//&ImagePost[j][i] = dev_base_vaddr + (i * j);
				ImagePost[j][i] = ImageIn[j][i];
			}
		}
	}

	return error;
}

unsigned int ImageInterfaceRead(unsigned int* ImageOut)
{
	unsigned int error = ImageInterfaceOK;
	unsigned int i,j;
	unsigned int * dev_base_vaddr = getvaddr(BASE_ADDR_OUT);
	unsigned int ImagePre[ImageColumnNumb][ImageRowNumb] = dev_base_vaddr;
	
	if (ImageIn == NULL)
	{
		error = ImageInterfaceNullError;
	}
	else
	{
		//dev_base_vaddr = getvaddr(BASE_ADDR_OUT);
		for (i = 0; i < ImageRowNumb; i++)
		{
			for (j = 0; j < ImageColumnNumb; j++)
			{
				//&ImagePre[j][i] = dev_base_vaddr + (i * j);
				ImageOut[j][i] = ImagePre[j][i];
			}
		}
	}

	return error;
}

/*int main(void) {
	int * dev_base_vaddr = getvaddr(BASE_ADDR);
	int *row_pointers_send = dev_base_vaddr;
	int *row_pointers_receive = dev_base_vaddr;
	
	
    return 0;
}*/
