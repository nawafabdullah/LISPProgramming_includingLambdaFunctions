;Nawaf ALharbi 
:Lab 3 
;CSCI330

(defun buildFormatter (N)
    (if (and (numberp N) (> N -1))
       
        (lambda (L) (if (listp L) 
                        (format nil (format nil "~~{~~~AA~~}" N) L)
                    (format nil "~vA" N L)))

     'BADWIDTH))

