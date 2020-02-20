format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:
    
    mov eax,0ffffffffh
    


    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number

    mov eax,0f1f2f3f4h
    and eax,eax
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    
    mov edx,11111111111111111111111111111111b
    and eax,edx
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'