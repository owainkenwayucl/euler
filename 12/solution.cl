; Solution to Euler problem 12
; Owain Kenway

; The sequence of triangle numbers is generated by adding the natural numbers.
; So the 7th triangle number would be 1 + 2 +..+7 = 28

; The first ten triangle numbers would be 1, 3, 6, 10, 15, 21, 28, 36, 45, 55

; The factors of the first 7 triangle numbers are:

; 1  :1
; 3  :1,3
; 6  :1,2,3,6
; 10 :1,2,5,10
; 15 :1,3,5,15
; 21 :1,3,7,21
; 28 :1,2,4,7,14,28

; -> 28 is the first triangle number to have >5 divisors

; Find the first triangle number to have >500 divisors.

; To run (load "solution.cl") and then (sol 500)

(defun gentri (n) (loop for i from 1 to n sum i))

(defun divides (x n) (= (mod x n) 0))

(defun factors (n) (remove-duplicates (loop for x from 1 to (ceiling (sqrt n)) if (divides n x) append (list x (/ n x)))))

(defun sol (n) (loop for i from 1 if (> (length (factors (gentri i))) n) return (gentri i)))
