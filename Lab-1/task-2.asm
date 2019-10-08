; Student Name: Ahmad Bilal
; Student Roll Number: 2018-CS-4
; code goes here

INCLUDE Irvine32.inc

.data  

 AgeInHours DWORD 0     ; To store age in hours

 YearsToHours WORD 8760 ; To multiply with the years to convert them to hours
 MonthsToHours WORD 720 ; To multiply with the months to convert them to hours
 DaysToHours BYTE 24    ; To multiply with the days to convert them to hours 

 AgeYears BYTE  "Enter age in years:", 0ah, 0dh, 0  ; Prompt for years
 AgeMonths BYTE "Enter age in months:", 0ah, 0dh, 0 ; Prompt for months
 AgeDays BYTE   "Enter age in days:", 0ah, 0dh, 0   ; Prompt for days
 
 Result BYTE "Total age in hours is: " ; Prompt for result

.code
main proc
	  
	  MOV  edx, OFFSET AgeYears ; Prompt for years
	  Call WriteString          ; Print prompt

	  Call ReadInt         ; Take input
	  IMUL YearsToHours    ; Multiply with 365*24 i.e., 8760
	  MOV  AgeInHours, Eax ; Store the product to AgeInHours

	  MOV  edx, OFFSET AgeMonths ; Prompt for months
	  Call WriteString           ; Print prompt
	  
	  Call ReadInt         ; Take input
	  IMUL MonthsToHours   ; Multiply with 30*24 i.e., 720
	  ADD  AgeInHours, Eax ; Add the product to AgeInHours

	  MOV  edx, OFFSET AgeDays ; Prompt for days
	  Call WriteString         ; Print prompt

	  Call ReadInt         ; Take input
	  IMUL DaysToHours     ; Multiply with 24
	  ADD  AgeInHours, Eax ; Increment Hours

	  Call CRLF

	  MOV  edx, OFFSET Result ; Add prompt for result
	  Call WriteString        ; Print Result String

	  MOV Eax, AgeInHours ; Move Age in hours to Eax for output
	  Call WriteInt       ; Print Resultant hours
	  Call CRLF	

	exit
main ENDP
end main
