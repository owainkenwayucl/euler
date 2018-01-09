; Project Euler Problem 9 solution
; Owain Kenway

; A Pythagorean triplet is three numbers a < b < c for which
; a^2 + b^2 = c^2

; e.g. 3^2 + 4^2 = 25 = 5^2
; a + b + c = 3 + 4 + 5 = 12
; abc = 3*4*5 = 60

; There exists one pythagorean triplet for which a + b + c = 1000
; Find product abc 

; To run (load "solution.cl") then (sol 1000)

; This function returns T if a triplet follows the rules above.
(defun pythagorean (a b c) (and (= (+ (* a a) (* b b)) (* c c)) (> b a)))

; This function loops over a from 1 to n
;                          b from a to n (because a < b)
;                          c from b to n (because b < c)
; and returns a b c as a list if a + b + c = 1000
(defun gettriplet (n) 
	(loop for a from 1 to n append
		(loop for b from a to n append
			(loop for c from b to n if (and (pythagorean a b c) (= n (+ a b c))) return (list a b c))
		)
	)
)

; For reasons the solution is a * b * c.
(defun sol (n) (apply #'* (gettriplet n)))
