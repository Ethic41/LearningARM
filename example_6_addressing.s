@ Author: Dahir Muhammad Dahir
@ Date: 15th-June-2019 07:22 AM
@ About: I will tell u later
@ example_6_addressing.s


// Example of addressing modes

mov		r1, #4					// normal
mov		r2, #1
adr 	r0, fooData				//

// PC-relative and indirect addressing

ldr		r3, fooData				// r3 = fooData[0]
ldr		r3, [r0]				// r3 = src[0]
ldr		r3, fooData+4			// r3 = fooData[1]
ldr 	r3, [r0, r1] 			// r3 = src[1] ;
ldr		r3, [r0, r2, lsl #2]	// r3 = src[1] ;

// pre and post indexing write-back

ldr 	r3, [r0, #4]!			// src++, r3 = *src
ldr 	r3, [r0], #4			// r3 = *src, src++

// u32 fooData

fooData:
		.word	0x0000F000
		.word	0x0000F001
		.word	0x0000F002

// pc-relative specials
// normal pc-relative method

.lpool:
		.word	0x6010000
		.word	far_var

ldr		r0, .lpool				// load a value from the pool
ldr		r0, .lpool+4			// load far_var's address
ldr		r0, [r0]				// load far_var's content


// short-hand gcc will manage the pool

ldr		r0, =0x6010000			// load a value from pool
ldr 	r0, =far_var			// load far_var's address into r0
ldr 	r0, [r0]				// load far_var's contents