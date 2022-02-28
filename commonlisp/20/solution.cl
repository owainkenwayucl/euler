; Project Euler Problem 20 solution
; Owain Kenway

; The sum of the digits in 10! (3628800) is 27
; What is the sum of the digits of 100!?

; To run (load "solution.cl") then (sol 100).

(defun fact (n) (apply #'* (loop for i from 1 to n collect i)))

(defun sumdigits (n) (loop for a in (map 'list #'(lambda (c) (parse-integer (string c)))(write-to-string n)) sum a))

(defun sol (n) (sumdigits (fact n)))
