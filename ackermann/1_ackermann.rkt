#lang racket

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))  ; Always look at predicates to determine behavior
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(define (f n) (A 0 n))

(f 3) ; (A 0 3)              This function is f(n) = 2n . see line 5 ^ .

; (A 0 3) ; -> (* 2 3) -> 6
; << 6



















; http://www.ymeme.com/ackermann-function-lisp.html
