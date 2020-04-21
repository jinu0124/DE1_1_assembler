.text
.global _start

_start: MOV	R0, #54
	MOV	R1, #24

GCD:	CMP	R0, R1
	SUBGT	R0, R0, R1
	SUBLT R1, R1, R0
	BNE GCD

STOP:	B	STOP

.end