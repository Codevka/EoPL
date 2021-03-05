#lang eopl

(define double-tree
  (lambda (bintree)
    (if (leaf? bintree)
      (* 2 bintree)
      (interior-node 
        (contents-of bintree) 
        (double-tree (lson bintree))
        (double-tree (rson bintree))))))
        
(define leaf
  (lambda (symbol) symbol))
  
(define interior-node
  (lambda (symbol lBintree rBintree)
    (list symbol lBintree rBintree)))
    
(define leaf?
  (lambda (node) (integer? node)))
  
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