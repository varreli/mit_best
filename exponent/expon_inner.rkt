#lang racket (require racket/trace)

(define (^ base exponent)
  (define (*^ exponent acc)
    (if (= exponent 0) acc
        (*^ (- exponent 1) (* acc base))))
  (trace *^)
  (*^ exponent 1))

(^ 10 3)
;
; (*^ 3 1)
; >(*^ 2 (* 1 10)) -> 10
; >>(*^ 1 (* 10 10)) -> 100
; >>>(*^ 0 (* 100 10)) -> 1000
; < 1000
;
; 1000

; A left-fold does iteration; a right-fold does recursion.
; Using an accumulator + tail recursion is essentially a left fold.
; (Non-tail) recursion with no accumulator is a right fold. cky
