; Project Euler Problem 7
; Owain Kenway

; From listing the first 6 prime numbers, 2,3,5,7,11,13 we can see that the
; 6th prime number is 13.

; What is the 10001st prime number?

; To run (load "solution.cl") them (sol 10001).

; Function that checks if n divides x
(defun divides (x n) (= (mod x n) 0))

; Function that generates a list of all the integer factors of n
(defun factors (n) (loop for x from 2 to (ceiling (sqrt n)) if (divides n x) append (list x (/ n x))))

; Function that returns n if prime, 0 if not.
(defun isprime (n) (not (factors n)) )

; Function to get the next prime number;
(defun nextprime (n) (loop for i from (+ 1 n) if (isprime i) return i))

(defun sol (n) (loop for i from 1 to n for j = 2 then (nextprime j) maximize j))
