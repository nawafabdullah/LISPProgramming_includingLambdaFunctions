(defvar *team-members-first* '(Marko Roberto Anderson Liam ))
(defvar *team-members-last* '(Casias Carlos Pepe Varan Marcelo))
(defvar *combined-list* Nil)
;(print-list team-members-first)


; APPEND adds elements of the list to elements of the other list
(setq *combined-list* (append *team-members-first* *team-members-last*))
	
;(cond ((not(eq *combined-list* Nil))
;			(dolist (temp *combined-list*)
;			(format t "~a ~%" temp)))
;	; prints (Marko Roberto Anderson Liam Casias Carlos Pepe Varan Marcelo)		
	  
;	  (t(print "list is empty")))
		
;	(print (car *combined-list*))
	;; prints Marko 
	
;   (print (cadddr *combined-list*))
	;; prints Liam

	(print (last *combined-list*)) 	
	;; prints Marcelo 
	;; the last element in th list 
	
	
	(print (length *combined-list*))
	;; prints 9
	;; the number of elements inside the list. 
	
	
	(print (member 'Liam *combined-list*))
	;; returns (Liam Casias Carlos Pepe Varan Marcelo)
	;; the member of the list you are looking for and the elements that come after 
	
	(print (reverse *combined-list*))
	;; prints (Marcelo varan pepe carlos casias Liam andeerson roberto marko
	;; reverses the list  
	
	(print (cadr ( reverse *combined-list*)))
	;; prints Varan
	;; reverses the list then grab the second element 

	(print (subst 'ted 'marcelo *combined-list*))
	;; prints Marcelo roberto anderson liam casias carlos pepe varan TED
	;; subsitutes new value 'Ted with old value 'Marcelo and prints the list with the new value  
	
	
	(print (nth 0 *combined-list*))
	;; prints Marko 
	;; it prints the item stored in position 0 of the list. i.e, the first name in the list  

	(print (cons *team-members-first* *team-members-last*))
	;; prints (Marko Roberto Anderson Liam) Casias Carlos Pepe Varan Marcelo
	;; it prints the item stored in position 0 of the list. i.e, the first name in the list  
	
	;;;;;;;;;WRONG;;;;;;;;;(format t (mapcar # 'cons *team-members-first* *team-members-last*))
	;; prints (Marko Roberto Anderson Liam) Casias Carlos Pepe Varan Marcelo
	;; it prints the item stored in position 0 of the list. i.e, the first name in the list  
	
	
	
	(print (mapcar '+ '(2 4 6 8 10) '(1 3 5)))
	;; returns (3 7 11)
	;; adds the first element from the first list with the first element from the second list and so on 
	
	
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; PUSH adds the first list as a single element
;(setq *combined-list* (push *team-members-first* *team-members-last*))

;(cond ((not(eq *combined-list* Nil))
;			(dolist (temp *combined-list*)
;			(format t "~a ~%" temp)))
;	; prints ((Marko Roberto Anderson Liam)Casias Carlos Pepe Varan Marcelo)		
	  
;	  (t(print "There is nobody in the team currently")))
		
;	(print (car *combined-list*))
	;; prints (Marko Roberto Anderson Liam)
	
;   (print (cadddr *combined-list*))
	;; prints Pepe 
	
	
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;