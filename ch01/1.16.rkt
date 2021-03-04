#lang eopl
      
(define invert
  (lambda (lst)
    (if (null? lst)
      '()
      (cons 
        (list (cadr (car lst)) (car (car lst)))
        (invert (cdr lst))))))
        
; (invert '((a 1) (a 2) (1 b) (2 b)))