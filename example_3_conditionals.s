@ Author: Dahir Muhammad Dahir
@ Date: 14th-June-2019 06:27 AM
@ About: I will tell u later
@ example_3_conditionals.s


// Traditional Code
start:
		cmp		r0, r1		// perform test here
		blt		.lbmax		// branch
		mov		r2, r0		// r0 is higher
		b 		.lrest		// continue the rest, skipping r1 is higher

.lbmax:
		mov		r2, r1		// r1 is higher

.lrest:
		...

// with conditionals; much cleaner

start:
		cmp		r0, r1		// perform test
		movge 	r2, r0		// r0 is higher
		movlt	r2, r1		// r1 is higher
		...