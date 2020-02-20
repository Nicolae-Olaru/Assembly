format PE console
entry start
include 'win32a.inc'
;=====================================================
section '.text' code readable executable
start:
   call read_hex
   cdq
   cmp edx,0
   jz edx_is_zero
   mov edx,1
   call print_eax
   jmp end_if
edx_is_zero:
   mov eax,0
   call print_eax
end_if:
   ;ExitProcess
   push 0
   call [ExitProcess]
include 'training.inc'
