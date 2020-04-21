.text
.global _start
_start: 
	mov r0, #0x12		// r0 (small number)
	ldr r1, data1		// r1 (large number)

	ldr r2, =0x104		// 실제 코드
	ldr r3, =0xffffff55	// 실제 코드, 
	ldr r4, =0x102		// 실제 코드, PC offset, 숫자 저장위치
	ldr r5, =0x77777777	// 실제 코드, PC offset, 숫자 저장위치
stop: 
	b stop
data1:	.word 0x12345678	// 32-bit data
.end
