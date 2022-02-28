; Project Euler Problem 16 solution.
; Owain Kenway

; 2^15 = 32768 and the sum of its digits is 26.
; What is the sum of the digits of 2^1000?

; To run (load "solution.cl") and then (sol 1000)

(defun sol (n) (loop for b in (map 'list #'(lambda (c) (parse-integer (string c))) (write-to-string (expt 2 n))) sum b))
