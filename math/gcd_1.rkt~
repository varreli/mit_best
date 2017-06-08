#lang racket (require racket/trace)

(define (gcd a b)
(if (= b 0)
a
(gcd b (remainder a b))))

(trace gcd)


(gcd 10000000000 456)
(gcd 100000000 456)
(gcd 1000000 456)
(gcd 206 40)
(gcd 333 5)
