(defvar *my-team* nil)

(defun ADD-TO-TEAM ()	
	(defvar pname Nil)
	(defvar pposition Nil)
	(defvar confirmation Nil)
	(defvar player-info Nil)
	(print " what's the name of the player you want to add?")
	(setq pname (read-line)) 
	(print " what's the position of the player you want to add?")
	(setq pposition (read-line))
	(setq player-info (list :name pname :position pposition))
	(format t " you have entered: ~{ ~a : ~a~} ~%" player-info)
	(print "is this correct? Y N")
	(setq confirmation (read)) 
	(cond ((or(eq confirmation 'N)(eq confirmation 'NO))
			(format t "TRY AGAIN ~& ")
			(ADD-TO-TEAM))
		  ((or(eq confirmation 'Y)(eq confirmation 'YES))
			(push player-info *my-team*)
			(format t "SUCCESS! ~%The player has been added to the team ~%"))
		  (t
			(format t "unkown answer! we are going to ignore the transaction! 
			         ~%please try again ~%")
			))
)

(defun DISPLAY-TEAM ()
(defvar x 1)
	(cond ((not(eq *my-team* Nil))
			(dolist (temp *my-team*)
			(format t "~{ ~d ~a : ~a~} ~%" x temp)))
		  (t(print "There is nobody in the team currently") (return-from DISPLAY-TEAM)))
		
)	

(ADD-TO-TEAM)

(ADD-TO-TEAM)

(DISPLAY-TEAM)
