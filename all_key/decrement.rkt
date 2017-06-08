#lang racket (require racket/trace)
(define *sub1 sub1)
(define *add1 add1)

(define (+ a b)
    (if (= a 0) b
      (+ (*sub1 a) (*add1 b))))

(trace *sub1 *add1)
(+ 4 5)
