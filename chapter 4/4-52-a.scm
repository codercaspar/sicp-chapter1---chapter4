(define (require p)
	(if (not p) (amb)))

(if-fail 
	(let ((x (amb 1 3 5)))
		(require (even? x))
			x)
	'all-odd)