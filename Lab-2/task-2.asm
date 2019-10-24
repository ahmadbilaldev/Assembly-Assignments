;Student Name: Ahmad Bilal
;Student Roll Number: 2018-CS-4
;Task Name: 2

; Code goes here

INCLUDE Irvine32.inc
.data

; Grades
A_grade byte "A"	
B_grade byte "B"	
C_grade byte "C"
D_grade byte "D"	

avg dword ?	; Input average marks

prompt byte "Enter your average marks: ", 0 ; Prompt for input marks
result byte "The grade is: ", 0             ; Prompt for resulting grade

.code
main PROC

mov edx, offset prompt ; Prompt for input
call writestring

call readint	; Take input number
mov avg, eax	; Store input in avg


cmp avg, 70			; Compare marks with 70
jg greater_than_70  ; If marks>70 jump to greater_than_70
jmp less_than_70    ; If marks<70 jump to less_than_70 

less_than_70:

	cmp avg, 50
	jg greater_than_50
	jmp less_than_50

less_than_50:
	
	; Assign D grade
	mov edx, offset result ; Prompt for result
	call writestring
	mov al, D_grade 	   ; Move grade (character) to al
	call writechar		   ; Print grade
	jmp _exit			   ; Jump to end of program

greater_than_50:
	; Assign C grade
	mov edx, offset result ; Prompt for result
	call writestring
	mov al, C_grade 	   ; Move grade (character) to al
	call writechar		   ; Print grade
	jmp _exit			   ; Jump to end of program

greater_than_70:
	; Assign B grade
	cmp avg, 90			   ; Compare marks with 90
	jg greater_than_90     ; If marks>90 jump
	
	mov edx, offset result 
	call writestring
	mov al, B_grade        ; Move grade to al
	call writechar
	jmp _exit              ; Jump to end of program

greater_than_90:
	; Assign A grade
	mov edx, offset result
	call writestring
	mov al, A_grade			; Assign A grade
	call writechar
	jmp _exit               ; Jump to end of program

_exit:	; Continue the program
call readint
exit
main ENDP
END main
