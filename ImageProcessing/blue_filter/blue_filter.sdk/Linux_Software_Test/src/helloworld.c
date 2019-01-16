/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include<stdlib.h>

#include "imageinterface.h"

#define TestLength 4u

int main()
{
	unsigned long ImageSend[TestLength];
	unsigned long ImageReceive[TestLength];
	unsigned int error = ImageInterfaceOK;
	unsigned int i;

	ImageSend[0] = 0x00000001u;
	ImageSend[0] = 0x000000f0u;
	ImageSend[0] = 0x000f0001u;
	ImageSend[0] = 0xffffffffu;


    printf("Hello World\n");

    error = ImageInterfaceWrite(&ImageSend, TestLength);
    if (error != ImageInterfaceOK)
    {
    	printf("Write Process failed\n");
    }
    else
    {
    	delay(2000);
    	error = ImageInterfaceRead(&ImageReceive, TestLength);
    	if (error != ImageInterfaceOK)
    	{
    		printf("Read Process failed\n");
    	}
    	else
    	{
    		for (i = 0u; i < TestLength; i++)
    		{
    			printf("Register Value %d: %x \n" ,i , ImageReceive[i]);
    		}
    	}
    }


    return 0;
}