(defun mod (x y) (remainder x y))

(defun ceiling (x) (if (greaterp x (fix x)) (+ 1 (fix x)) (fix x)))

(defun evenp (x) (not (oddp x)))

(defun round (x) 
        (if (greaterp x 0)
                (fix (+$ 0.5 (float x)))
                (* -1 (fix (+$ 0.5 (*$ -1.0 (float x)))))
        )
)

(defun floor (x) (fix x))
