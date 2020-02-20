format PE console
entry start

include 'win32a.inc'

;=========================================

section '.text' code readable executable

start:
   ;              Program starts here
   call read_hex ;input
   mov ecx,1
   ;              input EAX , and Move ECX 1
   ;===================================================
label_1:
   add ecx,ecx   ;ECX = ECX + ECX
   dec eax       ;EAX - 1
   jnz label_1
   ;If input is equal to 0 well decrement starts from FFFFFFFF
   ;And the sum will be large, because you sum of the sum per times u decrement FFFFFFFF
   ;Back to label till eax = 0
   mov eax,ecx 
   call print_eax
   
   ;Exit process
   push 0
   call [ExitProcess]
   
include 'training.inc'
   
