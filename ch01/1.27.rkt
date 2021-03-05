#lang eopl

(define flatten
  (lambda (slist)
    (if (null? slist)
      '()
      ())))

; (flatten '(a b c))
; (flatten '((a) () (b ()) () (c)))
; (flatten '((a b) c (((d)) e)))
; (flatten '(a b (() (c))))