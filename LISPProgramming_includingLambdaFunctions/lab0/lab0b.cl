#! /usr/bin/gcl -f

(load "lab0a.cl")

(defun main (arglist)
	

	(if(>(length arglist) 3) 
		(progn
			(format t "too many arguments, the allowed number of arguments is 3 ~%quitting the program ~%")
			(quit)))

	(if(=(length arglist) 0)
		(let* ((X nil) (Y nil) (Z nil))

		(format t "the number required for command line arguments is 3 ~% please enter the first number or list now ~%	")	 
		
			
			(setf X (read))
			; example of setting Y and Z by reading them from the user
			(format t "Enter the second number or list~%")
			(setf Y (read))
			(format t "Enter the third number or list~%")
			(setf Z (read))			
			(format t "the size of ~A is ~A ~%" X (sizeof X))
			(format t "the size of ~A is ~A ~%" Y (sizeof Y))
			(format t "the size of ~A is ~A ~%" Z (sizeof Z))
			(format t "the total size of ~A ~A ~A is ~A ~%" X Y Z (cumulative(sizeof X) (sizeof Y) (sizeof Z)))
			))
		  


	(if(=(length arglist) 1)
		(let* ((X nil) (Y nil) (Z nil))
		(setf X (read-from-string (car arglist)))
		(format t "the number required for command line arguments is 3 ~% please enter the second number or list now ~%	")	
			(setf Y (read))
			(format t "Enter the third number or list~%")
			(setf Z (read))			
			(format t "the size of ~A is ~A ~%" X (sizeof X))
			(format t "the size of ~A is ~A ~%" Y (sizeof Y))
			(format t "the size of ~A is ~A ~%" Z (sizeof Z))
			(format t "the total size of ~A ~A ~A is ~A ~%" X Y Z (cumulative(sizeof X) (sizeof Y) (sizeof Z)))
			))
		  
		(if(=(length arglist) 2)
		(let* ((X nil) (Y nil) (Z nil))
		(setf X (read-from-string (car arglist)))
		(setf Y (read-from-string (car(cdr arglist))))
		(format t "the number required for command line arguments is 3 ~% please enter the third number or list now ~%	")	
			(setf Z (read))			
			(format t "the size of ~A is ~A ~%" X (sizeof X))
			(format t "the size of ~A is ~A ~%" Y (sizeof Y))
			(format t "the size of ~A is ~A ~%" Z (sizeof Z))
			(format t "the total size of ~A ~A ~A is ~A ~%" X Y Z (cumulative(sizeof X) (sizeof Y) (sizeof Z)))
			))


		(if(=(length arglist) 3)
		(let* ((X nil) (Y nil) (Z nil))
		(setf X (read-from-string (car arglist)))
		(setf Y (read-from-string (car(cdr arglist))))
		(setf Z (read-from-string (car(cdr (cdr arglist)))))			
			(format t "the size of ~A is ~A ~%" X (sizeof X))
			(format t "the size of ~A is ~A ~%" Y (sizeof Y))
			(format t "the size of ~A is ~A ~%" Z (sizeof Z))
			(format t "the total size of ~A ~A ~A is ~A ~%" X Y Z (cumulative(sizeof X) (sizeof Y) (sizeof Z)))
			)))		
	
			


(main (cdr si::*command-args*))
