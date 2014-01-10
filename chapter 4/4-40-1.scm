(define (multiple-dwelling)
	(let ((baker    (amb 1 2 3 4))
		  (cooper   (amb 2 3 4 5))
		  (fletcher (amb 2 3 4))
		  (miller   (amb 1 2 3 4 5))
		  (smith    (amb 1 2 3 4 5)))
	    (require (> miller cooper))
	    (require (not (= (abs (- smith fletcher)) 1)))
	    (require (not (= (abs (- fletcher cooper)) 1)))
	    (require (distinct? (list baker cooper fletcher miller smith)))
	    (list 
	    	(list 'baker baker)
	    	(list 'cooper cooper)
	    	(list 'fletcher fletcher)
	    	(list 'miller miller)
	    	(list 'smith smith))))

(define (require p)
	(if (not p) (amb)))

(define (distinct? items)
	(cond ((null? items) true)
		  ((null? (cdr items)) true)
		  ((member (car items) (cdr items)) false)
		  (else (distinct? (cdr items)))))

(multiple-dwelling)