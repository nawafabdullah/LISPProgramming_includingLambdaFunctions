;gnu clisp 2.49
; Nawaf Alharbi
; CSCI 330
; Lab 4

(defun circle (&optional (xinit 0) (yinit 0) (rinit 1) )
   (let* ( ; the point's private/hidden data
             ; declare and initialize the x,y,r coordinates
             (x (if (numberp xinit) xinit 0))
             (y (if (numberp yinit) yinit 0))
             (r (if (and (numberp rinit) (> rinit 0)) rinit 1))
          )

        (labels ( ; the point's local access methods
             (setx_coor (userinput) (if (not (numberp userinput)) 0 (setf x userinput)))
             (sety_coor (userinput) (if (not (numberp userinput)) 0 (setf y userinput)))
             (setr_coor (userinput) (if (or(not (numberp userinput)) (< userinput 1)) 1 (setf r userinput)))
             ; function to return (x y or r upon request)
             (getx_coor () x)
             (gety_coor () y)
             (getr_coor () r)
              )
      ; the lambda function allows the user to supply commands
           (lambda (command &optional (userinput))
                (cond
                     ((equalp command 'setx) (setx_coor userinput))
                     ((equalp command 'sety) (sety_coor userinput))
                     ((equalp command 'setr) (setr_coor userinput))
                     ((equalp command 'getx) (getx_coor))
                     ((equalp command 'gety) (gety_coor))
                     ((equalp command 'getr) (getr_coor))                                        
                     ; handle invalid commands
                     (t (format t "Error: invalid command supplied ~A~%" command)))
                      ))))

(defun overlap (c1 c2)
    (let* 
     (
        (x1 (funcall c1 'getx))
        (y1 (funcall c1 'gety))
        (r1 (funcall c1 'getr))
        (x2 (funcall c2 'getx))
        (y2 (funcall c2 'gety))
        (r2 (funcall c2 'getr))
        (dist (sqrt (+ (expt (- x2 x1) 2) (expt (- y2 y1) 2))))
     )
      (if (or 
         (< (+ x1 r1 r2) x2)
         (< (+ x2 r1 r2) x1)
         (< (+ y1 r1 r2) y2)
         (< (+ y2 r1 r2) y1)
         (> dist (+ r1 r2))) nil t)
         )
      
      )
                    
                    
                    
