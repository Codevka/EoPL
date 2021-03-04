#lang eopl

(define swapper
  (lambda (s1 s2 slist)
    (if (null? slist)
      '()
      (if (symbol? (car slist))
        (cond
          ((equal? s1 (car slist)) (cons s2 (swapper s1 s2 (cdr slist))))
          ((equal? s2 (car slist)) (cons s1 (swapper s1 s2 (cdr slist))))
          (else (cons (car slist) (swapper s1 s2 (cdr slist)))))
        (cons (swapper s1 s2 (car slist)) (swapper s1 s2 (cdr slist)))))))
         
; (swapper 'a 'd '(a b c d))
; (swapper 'a 'd '(a d () c d))
; (swapper 'x 'y '((x) y (z (x))))