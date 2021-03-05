#lang eopl

(define leaf
  (lambda (symbol) symbol))
  
(define interior-node
  (lambda (symbol lBintree rBintree)
    (list symbol lBintree rBintree)))
    
(define leaf?
  (lambda (node) (or (integer? node) (symbol? node))))
  
(define lson
  (lambda (node)
    (if (leaf? node)
      '()
      (cadr node))))
    
(define rson
  (lambda (node)
    (if (leaf? node)
      '()
      (caddr node))))
    
(define contents-of
  (lambda (node)
    (if (leaf? node)
      node
      (car node))))