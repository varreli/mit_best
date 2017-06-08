#lang racket    

(define (fib n)
  (fib-iter 1 0 0 1 n))

  (define (fib-iter a b p q count)
    (cond ((= count 0) b)
          ((even? count)
           (fib-iter a
                     b
                     (+ (* p p) (* q q))       ; compute p'
                     (+ (* 2 p q) (* q q))     ; compute q'
                     (/ count 2)))
          (else (fib-iter (+ (* b q) (* a q) (* a p))    
                          (+ (* b p) (* a q))
                          p
                          q
                          (- count 1)))))

(fib 3)



; This uses some algebraic tricks to find an alternative way of evaluating the sequence.
; ( see expt_fast_linear.rkt )
; a and b are fib numbers; p and q define the transformation to be applied  ***

; T_0, 1 is one iteration of Fib, if I read this correctly.
; The key insight here is that (T_0, 1)^2 is an instance of T_pq as well,
; with a different pq -- i.e. it costs the same.

; That is way too much unnecessary math. All you have to see is that applying your transformation
; T^n that is defined by p and q to those parameters will effectively square it. This is hinted
; by the authors (successive squaring) and I think overall its a better solution then your
; brute-force one.
