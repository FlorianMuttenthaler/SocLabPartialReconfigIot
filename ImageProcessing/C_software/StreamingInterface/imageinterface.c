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
	unsigned int i;
	unsigned int * dev_base_vaddr = getvaddr(BASE_ADDR);
	unsigned int * ImagePost = dev_base_vaddr + 4u;// + 4 because of internal structure of AXI address handeling
	
	if (ImageIn == NULL)
	{
		error = ImageInterfaceNullError;
	}
	else
	{

		for (i = 0; i < ImageAddressRange; i++)
		{
			ImagePost[i] = ImageIn[i];
		}
	}

	return error;
}

unsigned int ImageInterfaceRead(unsigned int* ImageOut)
{
	unsigned int error = ImageInterfaceOK;
	unsigned int i;
	unsigned int * dev_base_vaddr = getvaddr(BASE_ADDR_OUT);
	unsigned int * ImagePre = dev_base_vaddr + 4u;
	
	if (ImageOut == NULL)
	{
		error = ImageInterfaceNullError;
	}
	else
	{
		for (i = 0; i < ImageAddressRange; i++)
		{
			ImageOut[i] = ImagePre[i];
		}
	}

	return error;
}

int main(void) {
	while (1)
	{

	}		
    return 0;
}
