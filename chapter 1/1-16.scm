(define (fast-expr b n)
    (fast-expr-iter 1 b n))
(define (fast-expr-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-expr-iter a (* b b) (/ n 2)))
          (else (fast-expr-iter (* a b) b (- n 1)))))