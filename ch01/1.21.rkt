#lang eopl

(define product
  (lambda (sos1 sos2)
    (if (null? sos1)
      '()
      (append 
        (one-dimension-product (car sos1) sos2)
        (product (cdr sos1) sos2)))))
        
(define one-dimension-product
  (lambda (x sos2)
    (if (null? sos2)
      '()
      (cons 
        (list x (car sos2))
        (one-dimension-product x (cdr sos2))))))

; (product '(a b c) '(x y))