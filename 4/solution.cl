; Project Euler solution 4.
; Owain Kenway

; The largest palindromic number that is a product of 2x 2 digit numbers is 9009
; What is the largest palindromic number that is a product of 2x 3 digit 
; numbers?

; To run (load "solution.cl") and then (sol 3).

; Function that returns n if n is a palindrome or 0 if not.

; What I've done here is convert the number to a string and reverse it, then back
; to a number.  If the result is = the original it's a palindrome.  
(defun ispalindrome (n) (if (= n (parse-integer (reverse (write-to-string n)))) n 0))

; Get the largest palindrome from the list of palindromes from numbers of n.

; We have to do a nested loop from a lower limit which is 1 followed by n-1 0s 
; to an upper limit which is n 9s.
; digits.

; Common LISP's "maximize" (note American spelling) reduction picks the largest
; value from the loop which is really neat - no need to pass about and process
; lists of palindromes.

; I've done this inside a let for the bounds because it looks a bit neater. 
(defun sol (n)
	(let ((l (expt 10 (- n 1))) (u  (- (expt 10 n) 1) ))
		(loop for x from l to u maximize
			(loop for y from l to u maximize (ispalindrome (* x y))) 
		)
	)
)
