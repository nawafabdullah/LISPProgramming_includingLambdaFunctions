#! /usr/bin/gcl -f
; Nawaf Alharbi
; Lab5
; CSCI330

;gnu clisp 2.49

; the timer macro runs a command, displays how long (in seconds) it took to complete,
;     and returns the value the command returned
(defmacro timer (cmd)

(let (
     (startTime (gensym)) (endTime (gensym)) (result (gensym)))

`(let (
      (,startTime ,nil) (,endTime ,nil) (,result ,nil))
                 (setf startTime (get-universal-time))
                 (setf result (eval ,cmd))
                 (setf endTime (get-universal-time))
                 (format t "That took ~A seconds~%" (- endTime startTime))
                 result)))

(defun printSlow (n)
   (format t "hi...") (sleep 3) (format t "...there~%") 42)

(defvar r (timer (printSlow 3)))
(format t "The command returned ~A~%" r)