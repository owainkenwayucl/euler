; Project Euler problem 19
; Owain Kenway

; You are given the following information, but you may prefer to do some 
; research for yourself.

;*   1 Jan 1900 was a Monday.
;*   Thirty days has September,
;    April, June and November.
;    All the rest have thirty-one,
;    Saving February alone,
;    Which has twenty-eight, rain or shine.
;    And on leap years, twenty-nine.
;*   A leap year occurs on any year evenly divisible by 4, but not on a century
;    unless it is divisible by 400.

; How many Sundays fell on the first of the month during the twentieth century 
; (1 Jan 1901 to 31 Dec 2000)?

; To run (load "solution.cl") and then (sol 2000).

(defvar daymonth '(31 28 31 30 31 30 31 31 30 31 30 31))

(defvar daymonthly '(31 28 31 30 31 30 31 31 30 31 30 31))

(defun leapyear (year) (and (= 0 (mod year 4)) (or (< 0 (mod year 100))(= 0 (mod year 400)))))

; If the 1st Jan 1900 is monday, 1st Jan 1901 is a Tuesday
(defvar FJ1901 2)

(defun countsundays (lastyear)
	(let ((pos FJ1901))
		(loop for year from 1901 to lastyear sum
			(if (leapyear year)
				(loop for m in daymonthly sum (if (= 0 (mod (setq pos (+ pos m)) 7 )) 1 0))
				(loop for m in daymonth sum (if (= 0 (mod (setq pos (+ pos m)) 7 )) 1 0))
			)
		)
	)
)

(defun sol () (countsundays 2000))
