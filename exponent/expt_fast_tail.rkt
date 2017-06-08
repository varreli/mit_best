#lang racket                               ; sicp 1.16
(require racket/trace)

(define (square x)
  (* x x))

(define (fast-expt b n)
  (expt-iter b n 1))

(define (expt-iter b n acc)

  (cond ((= n 0) acc)
        ((even? n) (expt-iter (square b) (/ n 2) acc))
        (else (expt-iter b (- n 1) (* acc b)))))

(trace expt-iter)
(fast-expt 3 6)
(fast-expt 4 5)

; (expt-iter 3 6 1)
; (expt-iter 9 3 1)
; (expt-iter 9 2 9)
; (expt-iter 81 1 9)
; (expt-iter 81 0 729)
; << 729

; >(expt-iter 4 5 1)
; >(expt-iter 4 4 4)
; >(expt-iter 16 2 4)
; >(expt-iter 256 1 4)
; >(expt-iter 256 0 1024)
; << 1024
