
format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:
    call read_hex
    mov ebx,eax
    inc eax	
	call print_eax ;x+1 done!
	dec eax
	mul eax
	call print_eax ;x'2 done!
    mul ebx
	call print_eax ;x'3 done!
  	; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'