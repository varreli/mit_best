#lang scheme

(define (square x )
  (* x x))

(define (largest-of-three a b c) 
   (- (+ (square a) (square b) (square c)) (square (min a b c)))) 

(largest-of-three 11 4 1)
