#! /usr/bin/gcl -f


(defun combine (f g H)
   (cond
       ((and (not (functionp f)) (not (functionp g)))'NOTFUNCTIONS)

      ; ((not (listp L)) (format t "~A is not a list of operands~%" L))

;        ((and (functionp f) (not(functionp g)))
 ;       (funcall f g h))



  ;      ((and (not(functionp f)) (functionp g))
   ;     (funcall g f h))




       (t (setf gh (apply g h))
          (funcall f gh))

      )


)




;(print (combine '+ 2 12))


;(print (combine 2 '+ 12))


(print (combine '+ '-  '(12 2)))


;(format t "3+3 is ~A~%" (+( + 1)))

