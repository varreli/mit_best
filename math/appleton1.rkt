#lang racket
(define (λ x)
(= (* x (- (* 2 x) 6)) (* 4 (- (* 2 x) 6))))

(λ 4)
(λ 3)
