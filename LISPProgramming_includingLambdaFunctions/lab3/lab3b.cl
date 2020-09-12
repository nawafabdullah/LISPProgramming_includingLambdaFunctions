#! /usr/bin/gcl -f


;Nawaf ALharbi 
:Lab 3 
;CSCI330

(load "lab3a.cl")

(defun main()
    (format t "==================== Welcome ==================== 
	          ~% how many spaces do you want the content to ba padded? ")
	(defvar N (read))
	(buildFormatter N)

    (defvar f (buildFormatter N))
        (if (functionp f)
            (progn
                (format t "please enter a list or a number ~%")
                (defvar L (read))
                (print (funcall f L))
                (format t "~%"))
            
           (format t "~A ~%" f)))

(main)
