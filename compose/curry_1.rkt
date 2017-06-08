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


(define (h a b)         ; 1) have h take 2 parameters, a b
  ((compose f g) a b))  ; 2) apply the result of compose to them


; (define g-4        
;   (lambda (y)
;     (g 4 y)))       ; the first parameter of g is set to 4

(define curried-g
  (λ (x)
    (λ (y)
      (g x y))))      

(define g-4 (curried-g 5)) ; the first parameter, x, is set at 5
(define g-7 (curried-g 7))

(g-4 44)                   ; g-4 takes the 2nd parameter, set here at 44