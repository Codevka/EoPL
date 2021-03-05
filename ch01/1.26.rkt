#lang eopl

(define up
  (lambda (slist)
    (if (null? slist)
      '()
      (if (list? (car slist))
        (cons 
          (car (car slist))
          (if (null? (cdr (car slist)))
            (up (cdr slist))
            (up (cons (cdr (car slist)) (cdr slist)))))
        (cons (car slist) (up (cdr slist)))))))

; (up '((1 2) (3 4)))
; (up '((x (y)) z))