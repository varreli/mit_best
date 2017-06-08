#lang racket (require racket/trace)
(define (f n)
  (if (< n 3)
      n
      (ternary 2 1 0 n)))

(define (ternary a b c count) 
  (if (< count 3)
      a
      (ternary (+ a (* 2 b) (* 3 c))  ; a
                a                     ; b
                b                     ; c 
                (- count 1))))        ; count

(trace ternary)
(f 5)

; Modifying the parameters (2 1 0 n) with each iteration 
; indicates tail recursion ->  a is returned.