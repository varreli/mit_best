#lang racket

(define (+ x y)
  (if (= x 0) y
  (add1 (+ (sub1 x) y))))

 (+ 3 4)
;(add1 (+ 2 4))
;(add1 (add1 (+ 1 4)))
;(add1 (add1 (add 1 (+ 0 4))))
;(add1 (add1 (add1 4)))
;(add1 (add1 5))
;(add1 6)
;7
; LINEAR RECURSION is proportional to the input argument
; in both time / space. Note:

; the input argument is 3, so there are 3 deferred increments (add1).
;
;; time = order(x)
;; space = order(x)
