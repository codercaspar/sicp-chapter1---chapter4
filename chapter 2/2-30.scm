﻿(define (square-tree1 tree)
	(cond ((null? tree) (list))
		  ((not (pair? tree)) (* tree tree))
		  (else (cons (square-tree1 (car tree))
					  (square-tree1 (cdr tree))))))
					   
(define (square-tree2 tree)
	(map (lambda (sub-tree)
			(if (pair? sub-tree)
				(square-tree2 sub-tree)
				(* sub-tree sub-tree)))
		tree))