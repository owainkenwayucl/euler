; The sum of the squares of the first 10 numbers is
; 1^2 + 2^2 + .. + 10^2 = 385
; The square of the sum of the first 10 numbers is
; (1 + 2 + .. + 10)^2 = 55^2 = 3025

; The difference of between the sum of the squares and the square of the sums
; is (3025 - 285) = 2640.

; What is the difference between the sum of the squares and the square of the
; sums for the first 100 numbers?

(fasload suport)

(defun sqsum (n) (loop for i from 1 to n sum (* i i)))

(defun sumsq (n) (expt (loop for i from 1 to n sum i) 2))

(defun sol (n) (- (sumsq n) (sqsum n)))

; Time our work.
(fasload bench)
(defun bencheul (n) (bench #'sol n) 'DONE)

