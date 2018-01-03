; Project Euler solution 3.
; Owain Kenway

; The largest prime factor of 13195 is 29 (5,7,13)
; What is the largest prime factor of 600851475143 ?

; To run this, (load "solution.cl") then (sol 600851475143)

; Function that checks if n divides x
(defun divides (x n) (= (mod x n) 0))

; Function that generates all the factors of n
(defun factors (n) (remove-if #'null (loop for x from 2 to (ceiling (sqrt n)) collect (if (divides n x) x) collect (if (divides n x) (/ n x)))))

; Function that returns n if prime, 0 if not.
(defun isprime (n) (if (not (factors n)) n 0))

; grab the first item of a sorted list of prime factors.
(defun sol (n) (car (sort (map 'list #'isprime (remove-if #'evenp (factors n))) '>)))
 
