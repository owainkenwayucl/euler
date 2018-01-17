; Project Euler Problem 17 Solution
; Owain Kenway

; If the numbers are written out in words one, two, three, four, five then 
; there are 3 + 3 + 5 + 4 + 4 = 19 letters.

; How many letters are there for the numbers from 1 to 1000?

; Do not count spaces or hyphens.

; To run (load "solution.cl") then (sol)

; Some strings to define what things look like as words.
(defvar numbers (list "" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen" "seventeen" "eighteen" "nineteen" "twenty"))

(defvar tens (list "" "ten" "twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety"))

; Process numbers up to 99
; -> 1 -> 20 straight from numbers
; -> Above 20 = tens + numbers of remainder
(defun u100 (n) 
	(if (> n 20)
		(concatenate 'string (nth (floor (/ n 10)) tens) (nth (mod n 10) numbers))
		(nth n numbers)
	)
)

; Process numbers up to 999
; -> 1 -> 99 = u100 
; -> 100 + = number + "hundred" + ("and" + u100 remainder)
(defun u1000 (n) 
	(if (< 99 n) 
		(concatenate'string 
			(if (< 99 n) (concatenate 'string (nth (floor (/ n 100)) numbers) "hundred") "") 
			(if (< 0 (mod n 100)) (concatenate 'string "and" (u100 (mod n 100))) "" )
		)
		(u100 n)
	)
)

; 1000 is 11 characters long, so loop from 1 to 999 and add 11.
(defun sol () (+ 11 (loop for a from 1 to 999 sum (length (u1000 a)))))
