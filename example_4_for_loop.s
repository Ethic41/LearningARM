@ Author: Dahir Muhammad Dahir
@ Date: 14th-June-2019 06:27 AM
@ About: I will tell u later
@ example_4_for_loop.s


// Assembly version of for(a = 0; a != 16; a++)
mov		a, #0				// declaring 'a' variable

// Start of for loop
for_start:
		add		r0, r0, #2	// r0 += 2 ; this is code in the loop block
		add		a, #1		// increment a
		cmp		a, #16		// test a == 16
		bne		for_start	// branch to 'for_start' if test fails