#lang racket (require racket/trace)

(define (gcd a b)
(if (= b 0)
a
(gcd b (remainder a b))))

(trace gcd)


(gcd 89 55)             ; == (fib 10) , (fib 11)
(gcd 13 21)

(gcd 206 40)          ; note:
(gcd 3 5)             ; both require 4 steps

           
; The point is to estimate the worst-case runtime for Euclids 
; algorithm. Lamés theorem is the tool used to get that bound. 
; Fibonacci numbers are the worst-case for Euclids algorithm.
;
; Fibonacci numbers are the smallest in the class of numbers 
; that take N steps in Euclids algorithm.

; the GCD of 2 Fibonacci numbers is always 1.

; Whats the maximum number of steps required to take the GCD
; of a pair of two-digit numbers? We want an upper bound on
; runtime in terms of n. It turns out to occur at 10 steps
; and 11 steps, at (gcd 55 89). 

; output:
; >(gcd 55 89)           ; < here are 2 split operations:
; >(gcd 89 55)           ; 1> (quotient 55 89) -> 0
; >(gcd 55 34)           ; 2> (remainder 55 89) -> 55
; >(gcd 34 21)             
                            
; >(gcd 21 13)
; >(gcd 13 8)
; >(gcd 8 5)
; >(gcd 5 3)
; >(gcd 3 2)
; >(gcd 2 1)
; >(gcd 1 0)
; << 1

; >(gcd 206 40)
; >(gcd 40 6)
; >(gcd 6 4)
; >(gcd 4 2)
; >(gcd 2 0)
; << 2

; >(gcd 3 5)
; >(gcd 5 3)
; >(gcd 3 2)
; >(gcd 2 1)
; >(gcd 1 0)
; << 1

