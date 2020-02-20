format PE  console
entry start

include 'win32a.inc'
;=================================================
section '.text' code readable executable

start:
    ;program beggins here:
	call read_hex               ; Input EAX
	mov ecx,eax                 ; Copy EAX into ECX
	                            ;ECX 1st number
	call read_hex               ; Input EAX
	                            ;EAX 2st number
	
	sub eax,ecx                 ; 1st - 2st
	jnz jump_if_not_0           ;Jump if NOT 0
	                            ;if result is 0 , continue (Print 1)
	mov eax,1                   ;EAX =1
	call print_eax              ; output 1
    jmp exit                    ;exit


jump_if_not_0:
    mov eax, 0                  ;If Eax is not zero(EAX == 8) print 0
	call print_eax
exit:
    ;exit process
    push 0
    call [ExitProcess]

include 'training.inc'