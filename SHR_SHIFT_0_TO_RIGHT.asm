format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; Your program begins here:

    call    read_hex    ; Reads eax as hex from console.
    call    print_eax_binary
    shr     eax,1
    call    print_eax_binary  ; Prints eax as hex back to console.
    call    print_eax
    shr     eax,1
    call    print_eax_binary
    call    print_eax
    shr     eax,1
    call    print_eax_binary
    call    print_eax
    shr     eax,1
    call    print_eax_binary
    call    print_eax
    shr     eax,1
    call    print_eax_binary
    call    print_eax

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'