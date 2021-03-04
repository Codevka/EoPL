#lang eopl

(define list-index-sub
  (lambda (pred lst index)
    (if (null? lst)
      #f
      (if (pred (car lst))
        index
        (list-index-sub pred (cdr lst) (+ index 1))))))
        
(define list-index
  (lambda (pred lst)
    (list-index-sub pred lst 0)))

; (list-index number? '(a 2 (1 3) b 7))
; (list-index symbol? '(a (b c) 17 foo))
; (list-index symbol? '(1 2 (a b) 3))
