; 

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Program star
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'