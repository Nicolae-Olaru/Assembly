;4input
format PE console
entry start

include 'win32a.inc'

;=====================================================
section '.text' code readable executable

start:
   ;lets start
   call read_hex               ;  1 input
   mov  ecx,eax                ;  ECX copy
                               ;  ECX - 1st input
   ;======================================================================
   call read_hex               ;  2 input
   mov  edx,eax                ;  EDX copy
   ;======================================================================
   call read_hex               ;  3 input
   mov  esi,eax                ;  ESI input
   ;======================================================================
   call read_hex               ;  4 input  EAX copy
   ;======================================================================
   add eax,ecx                 ; EAX = EAX + ECX
   ;======================================================================
   add edx,esi                 ; EDX = EDX + ESI
   ;======================================================================
   sub eax,edx                 ; EAX - EDX
   ;======================================================================
   jnz   jump_if_not_0         ; Jump if result is not 0
   ;======================================================================
                               ; If result is 0 , continue
   mov eax,1
   call print_eax
   jmp exit
                               ;  Print 1 if result is 0...
   ;======================================================================
jump_if_not_0:
   mov eax,0
   call print_eax
                               ;print 0 if result is not 0
   ;======================================================================
exit:
   ;exit the program
   push 0
   call [ExitProcess]
   
include 'training.inc'
	
	
	
	
	
	



   
   