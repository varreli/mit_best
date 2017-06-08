#lang racket (require racket/trace)       ; sicp 1.18

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (mult-tail a b)
  (mult-iter a b 0))

(define (mult-iter a b product)
  
  (cond ((= b 0) product)
        ((even? b) (mult-iter (double a) (halve b) product))
        (else (mult-iter a (- b 1) (+ a product)))))

(trace mult-iter)

(mult-tail 4 5)

; (mult-iter 4 5 0)
; (mult-iter 4 4 4)
; (mult-iter 8 2 4)
; (mult-iter 16 1 4)
; (mult-iter 16 0 20)
; << 20
    