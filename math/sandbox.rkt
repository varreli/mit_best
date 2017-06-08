#lang racket

(define length
  (λ (list)
    (cond
      ((null? list) 0)
      (else
       (add1 (length (cdr list)))))))

(length '(the quick grey fox jumped over the brown dog))

; http://www.catonmat.net/blog/derivation-of-ycombinator/