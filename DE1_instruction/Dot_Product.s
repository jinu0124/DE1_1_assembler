.text
.global	_start

_start:	LDR		r0, =AVECTOR
			LDR		r1, =BVECTOR
			LDR		r2, N
			MOV 	r3, #0

LOOP:		LDR		r4, [r0], #4
			LDR		r5, [r1], #4
			MLA		r3,r4,r5,r3

			SUBS 	r2, r2, #1
			BGT		LOOP
			STR 	r3, DOTP

STOP:		B 		STOP

N:			.word	6
AVECTOR:	.word	5,3,-6,19,8,12
BVECTOR:	.word	2,14,-3,2,-5,36
DOTP:		.space	4

.end
