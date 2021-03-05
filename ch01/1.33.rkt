#lang eopl

(define mark-leaves-with-red-depth
  (lambda (bintree)
    (mark bintree 0)))
    
(define mark
  (lambda (bintree depth)
    (if (leaf? bintree)
      depth
      (let ((bias (if (eq? (contents-of bintree) 'red) 1 0)))
        (interior-node
          (contents-of bintree)
          (mark (lson bintree) (+ depth bias))
          (mark (rson bintree) (+ depth bias)))))))

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
      
; (mark-leaves-with-red-depth (interior-node 'red (interior-node 'bar (leaf 26) (leaf 12)) (interior-node 'red (leaf 11) (interior-node 'quux (leaf 117) (leaf 14)))))