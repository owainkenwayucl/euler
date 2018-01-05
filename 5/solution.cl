; Project Euler solution 5.
; Owain Kenway

; 2520 is the smallest number that can be evenly divided by each of the numbers
; from 1 -> 10.

; What is the smallest number that can be evenly divided by each of the numbers
; from 1 -> 20.

; To run (load "solution.cl") and then (sol 20).

; Returns T if n divides x.
(defun divides (x n) (= (mod x n) 0))

; Function to check to see if a number n is divisible by all the numbers up to
; l. In an effort to save time we count down from l and exit if we hit a number
; that doesn't work, returning nil.  If we reach 2 we know it's fine so return
; T.
(defun ok (n l) (loop for i from l downto 2 if (not (divides n i)) return nil finally (return T)))

; We know that n! divides by all the numbers up to + including n 
; Recursion can be problematic but we will always be using small n for this
; problem.
(defun fact (n) (if (= n 1) 1 (* n (fact (- n 1)))))

; Find the first number that divides all the numbers up to n.  We know that the
; smallest number that can possibly do this is n, and the largest we need to 
; search in n! since that is the product of all numbers up to n.
(defun sol (n) (loop for i from n to (fact n) if (ok i n) return i))

