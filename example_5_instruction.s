@ Author: Dahir Muhammad Dahir
@ Date: 15th-June-2019 07:22 AM
@ About: I will tell u later
@ example_3_conditionals.s


// possible variation of data instructions

add		r0, r1, #1			// r0 = r1 + 1 ; immediate addtion
add 	r0, r1, r2			// r0 = r1 + r2 ; all registers
add 	r0, r1, r2, lsl #4	// r0 = r1 + r2 << 4 ; with immediate shifting
add 	r0, r1, r2, lsl r3	// r0 = r1 + r2 << r3 ; with immediate shifting on registers

// op variants

add 	r0, r0, #2			// r0 += 2
add 	r0, #2				// r0 += 2 ; alternative but not on all assemblers

// multiplication via shifted add / sub

add 	r0, r1, r1, lsl #4	// r0 = r1 + 16 * r1 = 17 * r1
rsb		r0, r1, r1, lsl #4	// r0 = r1 - 16 * r1 = 15 * r1
rsb 	r0, r1, #0			// r0 = 0 - r1 = -r1

// difference between asr and lsr

mvn		r1, #0				// r1 = ~0 = 0xFFFFFFFF = -1
mov		r0, r1, asr #16		// r0 = -1 >> 16 = -1
mov		r0, r1, lsr #16		// r0 = 0xFFFFFFFF >> 16 = 0xFFFF = 65535

// SIGNED DIVISION USING SHIFTS. r0 = r0 / 16

mov		r1, r0, asr #31		// r0 = (r0 >= ? 0 : -1)
add 	r0, r0, r1, lsr #28 // will tell later
mov		r1, r0, asr #4		// r1 = r0 >> 4 ;