.text
.global _start
_start: 
	mov r0, #0x12		// r0 (small number)
	ldr r1, data1		// r1 (large number)

	ldr r2, =0x104		// ���� �ڵ�
	ldr r3, =0xffffff55	// ���� �ڵ�, 
	ldr r4, =0x102		// ���� �ڵ�, PC offset, ���� ������ġ
	ldr r5, =0x77777777	// ���� �ڵ�, PC offset, ���� ������ġ
stop: 
	b stop
data1:	.word 0x12345678	// 32-bit data
.end
