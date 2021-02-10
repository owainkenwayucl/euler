(fasload suport)

(defun divok (x)
        (if (= (mod x 3) 0)
                x
                (if (= (mod x 5) 0)
                        x
                        0
                )
        )
)

; Version using do
(defun sol (n)
        (setq r 0)
        (do ((i 1 (+ i 1))) ((> i (- n 1))) 
                (setq r (+ r (divok i)))
        )
        r
)

; Version using loop macros
(defun soll (n) (loop for x from 1 to (- n 1) sum (+ (divok x))))

; Time our work.
(fasload bench)
(defun bencheul (n) (bench #'sol n)(bench #'soll n) 'DONE)
