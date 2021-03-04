#lang eopl

(define count-occurrences
  (lambda (s slist)
    (if (null? slist)
      0
      (if (symbol? (car slist))
        (if (equal? s (car slist))
          (+ 1 (count-occurrences s (cdr slist)))
          (count-occurrences s (cdr slist)))
        (+ (count-occurrences s (car slist)) (count-occurrences s (cdr slist)))))))
        
; (count-occurrences 'x '((f x) y (((x z) x))))
; (count-occurrences 'x '((f x) y (((x z) () x))))
; (count-occurrences 'w '((f x) y (((x z) x))))