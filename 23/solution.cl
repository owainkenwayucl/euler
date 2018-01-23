; Project Euler Problem 23 solution
; Owain Kenway

; A perfect number is a number for which the sum of its proper divisors is 
; exactly equal to the number. For example, the sum of the proper divisors of 
; 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

; A number n is called deficient if the sum of its proper divisors is less than
; n and it is called abundant if this sum exceeds n.

; As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
; number that can be written as the sum of two abundant numbers is 24. By
; mathematical analysis, it can be shown that all integers greater than 28123
; can be written as the sum of two abundant numbers. However, this upper limit
; cannot be reduced any further by analysis even though it is known that the
; greatest number that cannot be expressed as the sum of two abundant numbers
; is less than this limit.

; Find the sum of all the positive integers which cannot be written as the sum
; of two abundant numbers.

; To run (load "solution.cl") then (sol 28123)
(defun divides (x n) (= (mod x n) 0))

; Get divisors of a number.  Since our agorithm breaks down for n = 2 return 1.
(defun divisors (n) (if (= n 2) (list 1) (remove-duplicates (append (loop for x from 2 to (ceiling (sqrt n)) if (divides n x) append (list x (/ n x))) (list 1)))))

; Check to see if a number is abundant.
(defun abundant (n) (< n (loop for i in (divisors n) sum i)))

; Loop from 1 to ceiling n/2, return first two numbers i, n-i for which both
; are abundant (returns nil if this fails)
(defun sum-abundant (n) (loop for i from 1 to (ceiling (/ n 2)) if (and (abundant i) (abundant (- n i))) return (list i (- n i)) ))

; Loop from 1 to n, if sum-abundant is null, sum.
(defun sol (n) (loop for i from 1 to n if (null (sum-abundant i)) sum i))

