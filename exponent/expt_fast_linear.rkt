#lang racket (require racket/trace)

(define (square x)
  (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2)))) ; reduction path even
        (else (* b (fast-expt b (- n 1))))))       ; reduction path odd

(trace fast-expt)
(fast-expt 3 10)
(fast-expt 9 4)


; (fast-expt 3 10)
; (square (fast-expt 3 5))
; (square (* b (fast-expt 3 4)))
; (square (* b (square (fast-expt 3 2))))
; (square (* b (square (square (fast-expt 3 1)))))
; (square (* b (square (square (* b (fast-expt 3 0))))))

; (square (* b (square (square (* 3 1)     <-  (3^1)
; (square (* b (square (square 3) -> 9     <-  (3^1)^2
; (square (* b (square 9) -> 81            <-  (3^2)^2
; (square (* 3 81) -> 243                  <-  (3^5)
; (square 243) -> 59049                    <-  (3^5)^2
; 59049

;;

; (fast-expt 9 4)
; (square (fast-expt 9 2))
; (square (square (fast-expt 9 1)
; (square (square (* b (fast-expt 9 0)

; (square (square (* 9 1)))                <- (9^1)
; (square (square 9)) -> 81                <- (9^1)^2
; (square 81) -> 6561                      <- (9^2)^2
; 6561

; x^5 = x*x*x*x*x = (x*x)*(x*x)*x = (x^2)*(x^2)*x = (x^5)
; compose squaring and you have ((x^2)^2)*x which
; is three multiplications instead of five.

; This is composed squarings & relates to the
; binary decomposition of the exponent.
