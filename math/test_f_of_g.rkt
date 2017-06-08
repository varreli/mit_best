#lang racket

(define f
  (lambda (x)
    (+ (* 0.9 x) 10)))

(define g
  (lambda (x y)
    (+ x y)))

(define h
  (lambda (x y)
    (f (g x y))))

(h 5 9)