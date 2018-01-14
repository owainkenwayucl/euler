; Project Euler solution 14
; Owain Kenway

; The following iterative sequence is defined for the set of positive integers:
; n -> n/2 (if n even)
; n -> 3n + 1 (if n is odd)
; Finish at n = 1

; starting with 13 we get 13, 40, 20, 10, 5, 16, 8, 4, 2, 1

; Which starting number under 1000000 produces the longest sequence?

; To run (load "solution.cl") then (sol 1000000).

(defun next (n) (if (evenp n) (/ n 2) (+ 1 (* 3 n))))

(defun genseq (n) 
	(append 
		(loop for currnum = n then (next currnum)
			while (> currnum 1)
			collect currnum) 
		(list 1)
	)
)

(defun gen (n) (loop for i from 1 to n collect (length (genseq i))))

; Use a let to avoid calculating gen n twice.
(defun sol (n) 
	(let ((r (gen n))) 
		(+ 1 (position (loop for i in r maximize i) r))
	)
)
