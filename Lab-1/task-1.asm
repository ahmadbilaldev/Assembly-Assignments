;Student Name: Ahmad Bilal
;Student Roll Number: 2018-CS-4

; Code goes here

INCLUDE Irvine32.inc

.data  

 Miles DWORD 0                 ; To store Input miles
 ConvertToMeters DWORD 1600    ; To multiply with the miles to convert them to meters

 AtoB BYTE "Enter miles from City A to B:", 0ah, 0dh, 0 ; Prompt for distance
 BtoC BYTE "Enter miles from City B to C:", 0ah, 0dh, 0 ; Prompt for distance
 CtoD BYTE "Enter miles from City C to D:", 0ah, 0dh, 0 ; Prompt for distance
 Result BYTE "Total distance in meters is: "            ; Prompt for result

.code
main proc
	  
	  MOV  edx, OFFSET AtoB ; Prompt for distance
	  Call WriteString      ; Print prompt

	  Call ReadInt      ; Take input
	  MOV  Miles, Eax   ; Store the input to Miles

	  MOV  edx, OFFSET BtoC ; Prompt for distance
	  Call WriteString      ; Print prompt
	  
	  Call ReadInt     ; Take input
	  ADD  Miles, Eax  ; Increment Miles

	  MOV  edx, OFFSET CtoD  ; Prompt for distance
	  Call WriteString       ; Print prompt

	  Call ReadInt     ; Take input
	  ADD  Miles, Eax  ; Increment Miles
	  
	  MOV  Eax, Miles      ; Move miles to eax
	  IMUL ConvertToMeters ; multiply with 1600 to convvert miles to meters


	  MOV  edx, OFFSET Result ; Add prompt for result
	  Call WriteString        ; Print Result String
	  Call WriteInt           ; Print Resultant meters
	  Call CRLF	

	exit
main ENDP
end main
