; Project Euler solution 1.
; Owain Kenway

; Sum up all the numbers that are divisible by 3 or 5 below 1000.

; To run this, (load "solution.cl") then (sol 1000)

; Function to give us the value to add for this number.  This is the number
; if it is divisible by 3 or 5, or 0 if not.
(defun divok (x)
	(if (= (nth-value 1 (floor (/ x 3))) 0)
		x	
		(if (= (nth-value 1 (floor (/ x 5))) 0)
			x
			0
		)
	)
)

; Function to do our loop and sum.
(defun sol (n) 
	(apply #'+ (loop for x from 1 to (- n 1) collect (+ (divok x))))
)
