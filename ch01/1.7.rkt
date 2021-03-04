#lang eopl

(define nth-element
  (lambda (lst n)
    (if (null? lst)
      '()
      (if (zero? n)
        (car lst)
        (nth-element (cdr lst) (- n 1))))))
                
(define report-list-too-short
  (lambda (lst n)
    (eopl:error 'nth-element "~s does not have ~s elements.~%" lst n)))
        
(define nth-element-plus
  (lambda (lst n)
    (if (equal? (nth-element lst n) '())
      (report-list-too-short lst n)
      (nth-element lst n)
    )))
