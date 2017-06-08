#lang racket (require racket/trace)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)                        ; multiplies by 2.
        (else (A (- x 1) (A x (- y 1))))))


(define (h n) (A 2 n))      ; (h n) = 2^(h (- n 1)) when n > 1
;(h 0) (h 1) (h 2) (h 3)
;(h 4)
;(A 3 3)
;(trace A)
(h 4)
; (h 5) -> huge number

; (A 3 3) evaluates to the same as (h 4) [(A 2 4)]:
; (A 3 3)
; (A (- 3 1) (A 3 (- 3 1)))
; (A 2 (A 3 2))
; (A 2 (A (- 3 1) (A 3 (- 2 1))))
; (A 2 (A 2 (A 3 1)))
; (A 2 (A 2 2))
; (A 2 (A (- 2 1) (A 2 (- 2 1))))
; (A 2 (A 1 (A 2 1)))
; (A 2 (A 1 2))
; (A 2 (A (- 1 1) (A 1 (- 2 1))))
; (A 2 (A 0 (A 1 1)))
; (A 2 (A 0 2))
; (A 2 (* 2 2))
; (A 2 4) ; << (A 3 3) evaluates
;           to here the same.
;  ...
; 65536
;
;; or think of (h n) like this:
; h(1) : 2
;
; h(2) : 2 ^ 2
;
; h(3) : 2 ^ (2 ^ 2)
;
; h(4) : 2 ^ (2 ^ (2 ^ 2))
