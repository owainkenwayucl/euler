; Project Euler solution 2.
; Owain Kenway

; Sum up all the even Fibonacci numbers <= 4000000.

; To run this, (load "solution.cl") then (sol 4000000)

; Function to do our loop and sum.
(defun sol (n) (do (
	(sum)
	(prevnum)
	(currnum)
	(nextnum)) (

	(setq sum 0)
	(setq prevnum 0)
	(setq currnum 1)
	(setq nextnum 0)

	(loop while (<= currnum n) do
		(if (evenp currnum) (setq sum (+ sum currnum)))
		(setq nextnum (+ prevnum currnum))
		(setq prevnum currnum)
		(setq currnum nextnum)
		
	)
	sum
	))
)
