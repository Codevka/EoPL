#lang eopl

(define sort/predicate
  (lambda (pred loi)
    (if (or (null? loi) (null? (cdr loi)))
      loi
      (merge 
        pred
        (sort/predicate pred (car (split loi))) 
        (sort/predicate pred (car (cdr (split loi))))))))
        
(define split
  (lambda (loi)
    (if (null? loi)
      (list '() '())
      (if (null? (cdr loi))
        (list loi '())
        (let ((half (split (cdr (cdr loi)))))
          (list (cons (car loi) (car half)) (cons (car (cdr loi)) (car (cdr half)))))))))
          
(define merge
  (lambda (pred loi1 loi2)
    (cond ; cond is better
      ((null? loi1) loi2)
      ((null? loi2) loi1)
      (else 
        (if (pred (car loi1) (car loi2))
          (cons (car loi1) (merge pred (cdr loi1) loi2))
          (cons (car loi2) (merge pred loi1 (cdr loi2))))))))

; (sort/predicate < '(8 2 5 2 3))
; (sort/predicate > '(8 2 5 2 3))
