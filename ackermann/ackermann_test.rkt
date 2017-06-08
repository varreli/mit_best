#lang racket

;(define-syntax λ
;  (syntax-rules ()
;    ((_.more) (lambda.more))))

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* y 2))
        ((= y 1) 2)
  (else (A (- x 1) (A x (- y 1))))))

(define (g n)
  ;(trace A)
  (A 1 n))

(g 4)

; solution : (g n) = 2^n

; (g 4) =>
; (A 1 4)
; (A (- 1 1) (A 1 (- 4 1)
; (A 0 (A 1 3)
; (A 0 (A (- 1 1) (A 1 (- 3 1)
; (A 0 (A 0 (A 1 2)
; (A O (A 0 (A (- 1 1) (A 1 (- 2 1)
; (A 0 (A 0 (A 0 (A 1 1) => 2
; (A 0 (A 0 (A 0 2)
; (A 0 (A 0 4)
; (A 0 8)
; < 16
