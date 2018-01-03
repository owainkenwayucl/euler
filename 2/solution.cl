; Project Euler solution 2.
; Owain Kenway

; Sum up all the even Fibonacci numbers <= 4000000.

; To run this, (load "solution.cl") then (sol 4000000)

; Function to do our loop and sum.

; Significantly re-written as per discussion here:
; https://twitter.com/RainerJoswig/status/948602262062092289
(defun sol (n) 
	(loop for currnum = 0 then nextnum
 	      and nextnum = 1 then (+ currnum nextnum)
	      while (< currnum n) 
	      when (evenp currnum) sum currnum
	)
)
