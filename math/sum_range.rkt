#lang racket

(define (λ a b)
  (if (> a b)
      0
      (+ a (λ (+ a 1) b))))

(λ 3 7)


; above program sums the range:

(+ 3 (+ 4 (+ 5 (+ 6 (+ 7)))))
