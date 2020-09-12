#! /usr/bin/gcl -f
;Nawaf Alharbi
;Lab 1
:CSCI330

;this program also accepts a list that is fed to the program as a comand line argument

(load "lab1a.cl")

(defun main (arglist)

(if (>(length arglist) 1)
    (progn
	(format t " Too many argumrnts ~% The allowed number for command line arguments is 1 ~% Terminating the program ~%")
	(quit)))

(let ((L Nil))
(if (=(length arglist) 0)
    (progn
        (format t "please insert a list ~%")
        (setf L (read)))
        
 
 (setf L (read-from-string (car arglist)))
)
 (format t "generating the members in even positions of the list ~A, ~% the numbers in the even positions are: ~A ~%" L (evens L))
 (format t "generating the members in odd positions of the list ~A, ~% the numbers in the odd positions are: ~A ~%" L (revodds L)))
)
(main (cdr si::*command-args*))


