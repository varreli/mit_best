#lang racket

(define (cube n)
  (* n n n))

(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a) (sum-cubes (+ a 1) b))))

(sum-cubes 2 5)

; above algorithm sums the cubes of the range:

(+ (cube 2) (cube 3) (cube 4) (cube 5))
