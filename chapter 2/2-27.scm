(define (myreverse l)
	(if (null? l)
		(list)
		(append (myreverse (cdr l)) (list (car l)))))
		
(define (deep-verse l)
	(define (list-verse item)
		(if (pair? item)
			(myreverse item)
			item))
	(map list-verse l))