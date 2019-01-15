/*
 * imageinterface.h
 *
 *  Created on: 06.01.2019
 *      Author: Florian
 */

#define ImageInterfaceOK 		0u
#define ImageInterfaceNullError 	1u
#define ImageInterfaceAddressRangeError	2u

/*
	The maximum address range of an image related storage is 8192u related to allocated 2^13 registers of the memory
	ImageRowNumb, ImageColumnNumb can be used as terms for resolution
*/
#define ImageRowNumb			80u
#define ImageColumnNumb			100u
#define ImageAddressRange		8192u

/*
	The following steps have to be done for using the Image Interface:
*/

/*
	Step 1:
	ImageInterfaceWrite: Use this function to write image array to dedicated memory space
	param: unsigned long ImageIn[ImageAddressRange]
	return: ImageInterfaceNullError if address of ImageIn is Null, else ImageInterfaceOK
*/
extern unsigned int ImageInterfaceWrite(unsigned long* ImageIn, int length);
/*
	Step 2:
	wait a Time until hardware process is finalized
*/
/*	
	Step 3:
	ImageInterfaceRead: Use this function to read image array to dedicated memory space
	param: unsigned long ImageIn[ImageAddressRange]
	return: ImageInterfaceNullError if address of ImageIn is Null, else ImageInterfaceOK
*/
extern unsigned int ImageInterfaceRead(unsigned long* ImageOut, int length);
