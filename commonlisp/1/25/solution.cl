; Project Euler Problem 25 solution
; Dr Owain Kenway

; What is the index of the first term in the Fibonacci sequence to contain
; 1000 digits?

; (note number from 1 so F1 = 1, F2 = 1, F3 = 2 ...)

; To run (load "solution.cl") and then (sol 1000)

(defun sol (n) 
	(loop for currnum = 0 then nextnum
 	      and nextnum = 1 then (+ currnum nextnum)
	      for i from 0 
	      when (= (length (write-to-string currnum)) n) return i 
	)
)
