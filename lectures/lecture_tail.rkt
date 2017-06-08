#lang racket

(define (+ x y)
  (if (= x 0)
  y
  (+ (sub1 x) (add1 y))))




  (+ 3 4)     ;      v
; (+ 2 5)     ;      v time is in order(x) (growth: proportional to x)
; (+ 1 6)     ;      v
; (+ 0 7)     ;      v
; => 7
; > > > > > >         space is in order(1) (constant: proportional to 1)

; WHEN :

; time = O(x)
; space = O(1)

; THE PROCESS IS ITERATION. 
; The algorithm is executable in constant space.
