format PE console
entry start
include 'win32a.inc'
; ========================================0
section 'text' code readable executable
start:
     call read_hex
	 neg eax ;negation 0010 - 1101+1 = 1110	
	 inc eax ;increment 1110 +1 = 1111
	 neg eax ;negation 1111 -> 0000 +1 -> 0001
	 inc eax ;increment 0001 + 1= 0010
	 call print_eax 
	 ;Exit Process
	     push 0
		 call [ExitProcess]
include 'training.inc'