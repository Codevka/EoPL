#lang eopl

(define subst
  (lambda (new old slist)
    (if (null? slist)
      '()
      (cons
        (if (symbol? (car slist))
          (if (eqv? (car slist) old)
            new
            (car slist))
          (subst new old (car slist)))
        (subst new old (cdr slist))))))
        
; https://github.com/chenyukang/eopl/blob/master/ch1/12.scm
; (equal? (subst 'a 'b '(a b c d e)) '(a a c d e))
; (equal? (subst 'a 'b '(b)) '(a))
; (equal? (subst 'a 'b '(b b b)) '(a a a))
; (equal? (subst 's 'a '((a b) c d s)) '((s b) c d s))