; Project Euler Problem 22 solution
; Owain Kenway

; Using names.txt, a 46K text file 
; containing over five-thousand first names, begin by sorting it into 
; alphabetical order. Then working out the alphabetical value for each name, 
; multiply this value by its alphabetical position in the list to obtain a 
; name score.

; For example, when the list is sorted into alphabetical order, COLIN, which is
; worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN 
; would obtain a score of 938 × 53 = 49714.

; What is the total of all the name scores in the file?

; To run, download names.txt from Project Euler then 
; (load "solution.cl") then (sol "names.txt")

; String to get values from (note space so start from 1)
(defvar caps " ABCDEFGHIJKLMNOPQRSTUVWXYZ")

; Function to split strings on commas (thanks to Rosetta code for help!)
(defun split-comma (txt) (loop 
	for start = 0 then (+ 1 finish)
	for finish = (position #\, txt :start start)
	collect (subseq txt start finish)
	until (null finish))) 

; Function to read in our text file, remove "s, split on ,s and then sort.
(defun read-names (txt) (let ((in (open txt))( out ""))
			(setq out (read-line in))
			(close in)
			(sort (split-comma (remove #\" out)) #'string-lessp)))

; Function to score words.
(defun score-word (word) (loop for a in (coerce word 'list) sum (position a caps)))

; Our solution.
(defun sol (txt) (loop
	for a in (read-names txt) 
	for b from 1
	sum (* b (score-word a))))

