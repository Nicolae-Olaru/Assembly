format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:
    
    call    read_hex    ; Reads eax as hex from console.
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    sal     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    sal     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'