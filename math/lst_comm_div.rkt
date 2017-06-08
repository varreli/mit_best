#lang racket
(define (square x)
  (* x x))
(define (find-lcd n test-divisor)
  (cond ((> (square test-divisor) n) n) 
        ((= (remainder n test-divisor) 0) test-divisor)
        (else (find-lcd n (+ test-divisor 1)))))

(find-lcd 111 2)