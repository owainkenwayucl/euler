; Project Euler solution 3.
; Owain Kenway

; The largest prime factor of 13195 is 29 (5,7,13)
; What is the largest prime factor of 600851475143 ?

; To run this, (load "solutions.cl") then (sol 600851475143)

; Function that checks if n divides x
(defun divides (x n) (= (nth-value 1 (floor (/ x n))) 0))

; Function that generates all the factors of n
(defun factors (n) (let ((result '()))
	(loop for x from 2 to (ceiling (sqrt n)) do
		(if (divides n x) (setq result (append result (list x (/ n x)))))
	)
	result
	)
)

; Function that returns n if prime, 0 if not.
(defun isprime (n) (let ((result '())) (if (= (list-length (factors n)) 0) n 0)))

; grab the first item of a sorted list of prime factors.
(defun sol (n) (car (sort (map 'list #'isprime (remove-if #'evenp (factors n))) '>)))
 
