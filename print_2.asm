format PE console
entry start

include 'win32a.inc'

;=========================================

section '.text' code readable executable

start:
   ;              Program starts here
   call read_hex
   mov ecx,eax
   ;1st input to ECX
   call read_hex
   ;2st input to EAX
   sub eax,ecx
   ;substract eax from ecx
   jc label2
   ;jump to label2 if carryflag is 0
label1:
   call print_eax
   ;continue if carry flag is 1
   mov eax,0
   call print_eax
   jmp exit
label2:
   call print_eax
   mov eax,1
   call print_eax
exit:
   push 0
   call [ExitProcess]
   
include 'training.inc'