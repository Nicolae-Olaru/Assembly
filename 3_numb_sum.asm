; 3 numbers and sum them

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Program star
	call read_hex  ;input number -> EAX
	mov edx,eax    ;Copy eax(1st num) -> edx
	call read_hex  ;input number -> EAX
	add edx,eax    ;ADD into EDX(1st) , EAX (2st num) save into EDX
	call read_hex  ;input number -> EAX
	add eax,edx    ;copy into EAX(3th num) the EDX (1st + 2st)
	call print_eax ;output
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'