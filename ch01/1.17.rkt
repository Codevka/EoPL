#lang eopl

(define down
  (lambda (lst)
    (map 
      (lambda (elem)
        (cons elem '()))
      lst)))

; (down '(1 2 3))
; (down '((a) (fine) (idea)))
; (down '(a (more (complicated)) object))