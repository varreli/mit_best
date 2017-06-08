#lang racket

(define compose-clone
  (λ (i j)
    (λ (x)
    (i (j x)))))
         


(define curried-*
  (λ (x)
    (λ (y)
      (* x y))))

(define halve (curried-* 0.5))
(define quarter (curried-* 0.25))
(define double (curried-* 2))
(define times10 (compose (curried-* 5) double))
(define quadruple (compose-clone double double))
(define eighth (curried-* 0.125))

(halve 17)
(quadruple 100)
(eighth 8)
(times10 47)

