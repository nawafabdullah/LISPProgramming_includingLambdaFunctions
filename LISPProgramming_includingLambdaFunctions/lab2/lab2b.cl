#! /usr/bin/gcl -f

;Noah Alharbi
;CSCI 330
;Lab2



(load "lab2a.cl")



(format t "~%this is test 1! nor f or g is a function.. ~% 
			making this function call (combine (1 2 3)) ~%
			result: ~A ~%" (combine 1 2 3))
			  


(format t "~%this is test 2! f is a function but g is not a function.. ~% 
			making this function call (combine ('* 2 3)) ~%
			result: ~A ~%" (combine '* 2 3))




(format t "~%this is test 3! f is not a function but g is a function.. ~% 
			making this function call (combine (1 '+ 3)) ~%
			result: ~A ~%" (combine 1 '+ 3))



(format t "~%this is test 4! both f and g are both functions.. ~% 
			making this function call (combine ('sqrt '+ '(3 3 3))) ~%
			result: ~A ~% 
			note: I used a list here as the third parameter to show the effect of applying g(h) then f will get the square root of the result. ~% ~%"
			(combine 'sqrt '+ '(3 3 3)))



