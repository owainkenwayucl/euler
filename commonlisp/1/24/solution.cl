; Project Euler Problem 24 solution
; Owain Kenway

; Find the 1 millionth lexographical order permutation of (0 1 2 3 4 5 6 7 8 9)

; To be honest I found this really hard to do efficiently.  I did write a brute
; force solution which got the answer in about half an hour.

; This is a better method as described here:
; https://en.wikipedia.org/wiki/Permutation#Generation_in_lexicographic_order

; At the moment this is the pseudocode transcribed directly into LISP.  I need
; to re-write it so it's... "LISPy".

; To run, (load "solution.cl") then (sol 1000000 '(0 1 2 3 4 5 6 7 8 9)).


(defun step1 (l) (loop for i from 0 to (- (length l) 2) if (< (nth i l) (nth (+ i 1) l)) maximize i))

(defun step2 (l p) (loop for i from p to (- (length l) 1) if (> (nth i l) (nth p l)) maximize i))

(defun step3 (l p1 p2) (rotatef (nth p1 l) (nth p2 l)))

(defun step4 (l p) (append (subseq l 0 p) (reverse (nthcdr p l))))

(defun sol (n lst) 
	(let ((k) (l)) 
	(loop for i from 1 to (- n 1) do
		(setq k (step1 lst))
		(setq l (step2 lst k))
		(step3 lst k l)
		(setq lst (step4 lst (+ k 1)))
	)
	lst
	)
)
