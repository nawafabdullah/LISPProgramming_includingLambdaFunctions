
; Nawaf Alharbi 
;Lab1
;CSCI 330

(defun evens (L)
 (let* ((tracker Nil))
       (cond
		((or(not(listp L)) (null L)) 'Nil)

		(t
    			(loop for x from 0 to (-(length L)1)
                	do
                	(push (nth x L) tracker)
                	(setf x (+ x 1))
      			)

	(setf tracker (reverse tracker)))
       	(return-from evens tracker))
      ))

(defun revodds (L &optional (sofar Nil))
   (cond
       ((or(not(listp L)) (null L)) sofar)
       (t
		(revodds (cdr(cdr L)) (push (car(cdr L)) sofar))
          )))

 