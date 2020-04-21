.text
.global _start
_start: 
	mov r0, #0x10
	mov r1, #0x20
	mov r2, #0		// r2
	add r3, r0, r1		// r3
	sub r4, r0, r1		// r4, NZCV(CPSR의 상위4비트)
	movlt r2, #1		// r2, conditional move
	subs r4, r0, r1		// r4, NZCV
	movlt r2, #2		// r2, conditional move
	rsb r4, r0, r1		// r4, NZCV
	movlt r2, #3		// r2
	rsbs r4, r0, r1		// r4, NZCV
	movlt r2, #4		// r2
stop: 
	b stop
.end 

