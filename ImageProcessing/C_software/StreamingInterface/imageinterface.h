/*
 * imageinterface.h
 *
 *  Created on: 06.01.2019
 *      Author: Florian
 */

#define ImageInterfaceOK 		0u
#define ImageInterfaceNullError 	1u

#define ImageRowNumb			16u
#define ImageColumnNumb			16u

//unsigned int Image[ImageColumnNumb][ImageRowNumb];

extern unsigned int ImageInterfaceWrite(unsigned int* ImageIn);
extern unsigned int ImageInterfaceRead(unsigned int* ImageOut);
