;Noah Alharbi
;Lab 0


; function (sizeof N) needs to be defined
(defun sizeof (N)
    (cond 
		((numberp N) (return-from sizeof N))
		((listp N) (return-from sizeof(length N)))
		(t (return-from sizeof 0))))





; function (cumulative A B C) needs to be defined
(defun cumulative (A B C)
	(if (or(not(numberp A)) (not(numberp B)) (not(numberp C))) 'error)
	 (+ A B C))
	
