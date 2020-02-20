format PE console
entry start

include 'win32a.inc'

;=========================================

section '.text' code readable executable

start:
   ;              Program starts here
   call read_hex
   mov ecx,eax
   call read_hex
   ;substract EAX - ECX
   add   eax,ecx
   jo label1
   
   mov eax,0
   call print_eax
   jmp exit
label1:
   mov eax,1
   call print_eax
exit:
   push 0
   call [ExitProcess]
   
include 'training.inc'