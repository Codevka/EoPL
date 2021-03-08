#lang eopl

; TODO: 麻了，是不是应该先去看SICP

; (define zero
;   (lambda ()
;     '(diff (one) (one))))
    
; (define is-zero?
;   (lambda (number)
;     '())) ; TODO: How to count the tree?
    
; (define successor
;   (lambda (number)
;     (cons 
;       'diff
;       (cons
;         number
;         '((diff (diff (one) (one)) (one)))))))
        
; (define predecessor
;   (lambda (number)
;     (cons
;       'diff
;       (cons
;         number
;         '((one))))))

; (is-zero? '(diff (one) (one)))
; (is-zero? '(diff (diff (one) (one)) (diff (one) (one))))
; (is-zero? '(diff (diff (one) (diff (one) (one))) (one)))
; (is-zero? '(diff (diff (diff (one) (one)) (one)) (one)))
; (successor (zero))
; (successor '(diff (one) (one)))
; (successor '(diff (diff (one) (diff (one) (one)))))
; (predecessor (zero))
; (predecessor '(diff (one) (one)))
; (predecessor '(diff (one) (diff (one) (one))))
