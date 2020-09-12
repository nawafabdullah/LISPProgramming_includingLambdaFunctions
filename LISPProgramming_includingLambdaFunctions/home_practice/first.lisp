;;;; Nawaf Alharbi ;;;;
;;;; First LISP Program ;;;;
;;;; Nov 2018 ;;;;
(print "Hello world") 

(format t "~% ====== Welcome to my first application ===== ~% please enter your name?")

(defvar name (read))

(if(eq name 'Nawaf)
(print "Welcome!")
(print "Goodbye" (quit)))



(format t " Hello ~a! ~% please continue to the next step... ~% " name )

(format t " Now enter a number and we will subtract 3 from it ~% ") 

(defvar number (read))

(setf number (- number 3))

(format t " the number after the operation is: ~a! ~%" number)

(format t " enter your bank's account balance ~% ")

(defvar balance (read))

(format t " your account balance is ~$ $ ~% " balance)