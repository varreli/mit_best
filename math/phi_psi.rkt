#lang racket ; φ = (1 + √5) / 2   ;  ψ = (1 - √5) / 2

(define phi
  (/ (+ 1 (sqrt 5)) 2))

(define psi
  (/ (- 1 (sqrt 5)) 2))

(define (^ base power)
  (define (*^ power acc)
    (if (= power 0)
        acc
        (*^ (- power 1) (* acc base))))
  (*^ power 1))

(define (fib n)
  (/ (- (^ phi n) (^ psi n)) (sqrt 5)))

(fib 2)
(fib 5)
(fib 7)
(fib 8)

; Study Binet Formula by Induction:
; http://www.cut-the-knot.org/proofs/BinetFormula.shtml
