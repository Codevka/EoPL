#lang eopl

; merge sort
(define sort
  (lambda (loi)
    (if (or (null? loi) (null? (cdr loi)))
      loi
      (merge (sort (car (split loi))) (sort (car (cdr (split loi))))))))
      
(define split
  (lambda (loi)
    (if (null? loi)
      (list '() '())
      (if (null? (cdr loi))
        (list loi '())
        (let ((half (split (cdr (cdr loi)))))
          (list (cons (car loi) (car half)) (cons (car (cdr loi)) (car (cdr half)))))))))
      
(define merge
  (lambda (loi1 loi2)
    (if (null? loi1)
      loi2
      (if (null? loi2)
        loi1
        (if (< (car loi1) (car loi2))
          (cons (car loi1) (merge (cdr loi1) loi2))
          (cons (car loi2) (merge loi1 (cdr loi2))))))))

; (sort '(9 1 8 2 7 3 5 5 5))
