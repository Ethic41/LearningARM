@ Author: Dahir Muhammad Dahir
@ Date: 14th-June-2019 06:27 AM
@ About: I will tell u later
@ example_2.s


// Assembly Version of while(1) {...} endless loop

// Label for possible branching destination
endless:
		add		r0, r0, #2		// r0 += 2
		b 		endless			// branch to endless label i.e the begining