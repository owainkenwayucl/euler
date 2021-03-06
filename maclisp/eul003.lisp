(fasload suport)

; Function that checks if n divides x
(defun divides (x n) (= (mod x n) 0))

; Function that generates a list of all the integer factors of n
(defun factors (n) (loop for x from 2 to (ceiling (sqrt n)) if (divides n x) append (list x (quotient n x))))

; Function that returns n if prime, 0 if not.
(defun iseprime (n) (if (oddp n ) (if (not (factors n)) n 0) 0 ))
(defun isprime (n) (if (not (factors n)) n 0))

; grab the first item of a sorted list of prime factors.
(defun sol (n) (car (sort (mapcar #'isprime (factors n)) '>)))
(defun sole (n) (car (sort (mapcar #'iseprime (factors n)) '>)))

; Time our work.
(fasload bench)
(defun bencheul (n) (bench #'sol n)(bench #'sole n) 'DONE)
