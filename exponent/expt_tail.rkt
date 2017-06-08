#lang racket (require racket/trace)

(define (raise b n)
   (rais-iter b n 1))
(define (rais-iter b counter product)

(if (= counter 0)
     product
     (rais-iter b (- counter 1)
                  (* b product))))
(trace rais-iter)
(raise 4 5)

; (rais-iter 4 (- 5 1) (* 4 1)
; (rais-iter 4 4 4)
; (rais-iter 4 (- 4 1) (* 4 4)
; (rais-iter 4 3 16)
; (rais-iter 4 (- 3 1) (* 4 16)
; (rais-iter 4 2 64)
; (rais-iter 4 (- 2 1) (* 4 64)
; (rais-iter 4 1 256)
; (rais-iter 4 (- 1 1) (* 4 256)
; (rais-iter 4 0 1024)
; << 1024