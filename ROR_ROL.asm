format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:
    call    read_hex
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    ror     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    ror     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    ror     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    ror     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    ;---------------------------------------------------------
    rol     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    rol     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    rol     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number
    rol     eax,1
    call    print_eax_binary ;Print binary of a number
    call    print_eax  ;Print value of number


    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'