;input 2x sum them , double it and increment by one
format PE console
entry start

include 'win32a.inc'

;==========================================================
section '.text' code readable executable

start:
    ;Program starts now!!!!!!!!!!!!!!!!
	call read_hex ;Input required
	mov edx,eax   ;Copy input into EDX from EAX
	call read_hex ;Input required
	add eax,edx   ;Copy the 1-input into second input register = TOTAL in EAX
	add eax,eax   ;Double the total in EAX
	inc eax       ;Increment it by 1	
	call print_eax;Output resoult
	
	;Exit process, Edns the program
	    push     0  ; end of a program
		call     [ExitProcess]
		
include 'training.inc'