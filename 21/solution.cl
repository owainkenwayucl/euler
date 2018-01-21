; Project Euler problem 21 solution.
; Owain Kenway

; Let d(n) be defined as the sum of proper divisors of n (numbers less than n 
; which divide evenly into n).

; If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and 
; each of a and b are called amicable numbers.

; For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 
; 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 
; 71 and 142; so d(284) = 220.

; Evaluate the sum of all the amicable numbers under 10000.

; To run (load "solution.cl") then (sol 10000).

(defun divides (x n) (= (mod x n) 0))

(defun divisors (n) (append (remove-duplicates (loop for x from 2 to (ceiling (sqrt n)) if (divides n x) append (list x (/ n x)))) (list 1)))

(defun d (n) (loop for a in (divisors n) sum a))

(defun sol (n) (loop for a from 1 to n if (and (= a (d (d a))) (not (= a (d a)))) sum a))
