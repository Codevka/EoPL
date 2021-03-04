#lang eopl

(define base 10)

(define zero (lambda () '()))
(define is-zero? (lambda (n) (null? n)))

(define successor 
  (lambda (n) 
    (if (is-zero? n) 
      '(1)
      (if (< (car n) (- base 1))
        (cons (+ (car n) 1) (cdr n))
        (cons 0 (successor (cdr n)))
      )
    )))
    
(define predecessor 
  (lambda (n)
    (if (or (equal? n '(1)) (is-zero? n))
      '()
      (if (< (car n) 1)
        (cons (- base 1) (predecessor (cdr n)))
        (cons (- (car n) 1) (cdr n))
      )
    )))
    
