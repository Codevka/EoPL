#lang eopl

; remove-first: Sym × Listof(Sym) -> Listof(Sym)
; usage: remove the first occurrence of the symbol s and all the elements before
(define remove-first
  (lambda (s los)
    (if (null? los)
      '()
      (if (eqv? (car los) s)
        (cdr los)
        (remove-first s (cdr los))))))