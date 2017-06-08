#lang racket
                      
(define (square x)
   (* x x))
(define (sum-of-squares x y)
   (+ (square x) (square y)))

(define (biggest x y) (if (> x y) x y))
(define (choices x y z) (sum-of-squares (biggest x y) (biggest y z)))

(choices 6 3 2)



