;Student Name: Ahmad Bilal
;Student Roll Number: 2018-CS-4
;Task Name: 1


; Code goes here

INCLUDE Irvine32.inc
.data
num dword ?	; Input number
count dword ?	; To store iteration of first loop L1
count2 dword 1	; To print the number in L2 and increment it in L1


prompt byte "Enter a number: ", 0 ; Prompt

.code
main PROC

mov edx, offset prompt ; Prompt
call writestring

call readint	; Take input number
mov num, eax	; Store input in num

mov ecx, num

L1:
	mov count, ecx	; Store iteration of L1 in count
	mov ecx, count2	; Move count2 to iteration of L2
	L2:
		mov eax, count2 ; Print the number
		call writeint
		loop L2
	call CRLF	; Move the next line
	inc count2	; Increment the number to be printed in the next line
	mov ecx, count ; Move back count to ecx for L1
	loop L1
	
call readint
exit
main ENDP
END main
