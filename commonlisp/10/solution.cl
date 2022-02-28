; Project Euler solution 10
; Owain Kenway

; The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
; Find the sum of all the primes below 2,000,000

; To run (load "solution.cl") then (sol 2000000)

; Function that checks if n divides x
(defun divides (x n) (= (mod x n) 0))

; Function that returns T if a number has factors.
(defun hasfactors (n) (if (= n 2) nil (loop for x from 2 to (ceiling (sqrt n)) if (divides n x) return T)))

; Loop from 2 to n and sum all the primes.
(defun sol (n) (loop for i from 2 to n if (not (hasfactors i)) sum i))

