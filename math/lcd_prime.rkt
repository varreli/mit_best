#lang racket (require racket/trace) ; order of growth is : O(sqrt n)
(define (square x) (* x x))
                                 
(define (smallest-divisor n)
  (find-lcd n 2))

(define (find-lcd n test-divisor)
  (cond ((> (square test-divisor) n) n) 
        ((= (remainder n test-divisor) 0) test-divisor)
        (else (find-lcd n (+ test-divisor 1)))))

(trace find-lcd)

(smallest-divisor 17) 
(smallest-divisor 81)

(define (prime? n)
  (= n (smallest-divisor n)))

(prime? 7)
(prime? 17) 
(prime? 111)
(prime? 131) 
(prime? 199)
(prime? 19999)







