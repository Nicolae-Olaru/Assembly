format PE console
entry start
include 'win32a.inc'
;======================================================
section '.text' code readable executable
start:
   call read_hex
   mov esi,eax
   call read_hex
   mov edi,eax
   mov eax,esi
   cdq
   idiv edi
   call print_eax
   ;Exit Process
     push 0
     call [ExitProcess]
include 'training.inc'

array
functi 
strutt array
stringhe
passa para

