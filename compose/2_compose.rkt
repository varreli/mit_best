#lang racket

(define f
  (λ (x)
    (+ (* 0.9 x) 10)))

(define g
  (λ (x y)
    (+ x y)))

(define compose      ; compose two functions : f o g -> h
  (λ (f1 f2)
    (λ (a b)         
      (f1 (f2 a b)))))

(define compose2
  (λ (a b)
    (λ (x)
      (a (b x)))))

(define k
  (lambda (x)
    (+ 4 x)))


(define (h a b)         ; 1) have h take 2 parameters, a b
  ((compose f g) a b))  ; 2) apply the result of compose to them

(h 4 11)

(define (hh arg)
  ((compose2 f k) arg))

(hh 6) ; -> 19.0

