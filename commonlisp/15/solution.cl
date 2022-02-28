; Project Euler solution 15
; Owain Kenway

; Starting at the top left corner of a 2x2 grid, if we are only able to move
; right and down, there are six possible routes to the bottom right corner.

; __  _    _
;   |  |_   |   |__  |_    |
;   |    |  |_     |   |_  |__

; How many are there for a 20x20 grid?

; To run (load "solution.cl") then (sol 20)

; Searching naively is too slow with a 20x20 grid.
; For a square grid the number of paths is the binomial coefficient (2n n)

(defun fact (n) (if (= n 1) 1 (* n (fact (- n 1)))))

(defun binomialc (n k) (/ (fact n) (* (fact k) (fact (- n k)))))

(defun sol (n) (binomialc (* 2 n) n))
