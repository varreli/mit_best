#lang racket (require racket/trace)
(define *add1 add1)
(define *sub1 sub1)

(define (+ a b)
  (if (= a 0) b 
      (*add1 (+ (*sub1 a) b))))

(trace *add1 *sub1)
(+ 4 5)

