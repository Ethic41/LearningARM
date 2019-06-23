@ Author: Dahir Muhammad Dahir
@ Date: 13th-June-2019 10:40 PM
@ About: I will tell u later
@ example_1.s


start:
add 	r0, r0, #2  	// Add immediate: r0 += 2
add 	r0, r0, r1  	// Add registers: r0 += r1
add 	r0, r1, r2  	// Add registers: r0 = r1 + r2

ldr 	r0, [r2]		// Load int from memory: r0 = r2[0]
ldr 	r0, [r2, #4]	// Load int from memory: r0 = r2[1]
ldmia	r2, {r0, r1}	// Load mulitple: r0 = r2[0]; r1 = r2[1]
