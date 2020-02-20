format PE console
entry start
include 'win32a.inc'
;===================================
section '.text' code readable executable
start:
    call read_hex      ; Input
	mov esi,eax        ; 1st Number -> ESI
	call read_hex      ; Input
	mov edi,eax        ; 2st Number -> EDI
	mov eax,esi        ; ESI -> EAX        1st EAX , 2st EDI 
	mov edx,0              ; CDQ knows how to exted eax to edx:eax Both if positive or negative number 
	                   ; Tiene conto del segno in esecuzione,
	idiv edi
	call print_eax
	
	;Exit process
	push 0
	call [ExitProcess]
include 'training.inc'