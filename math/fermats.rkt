#lang racket

(define (square x)
  (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))
(expmod 3 4 5)
(expmod 3 10 11)
(expmod 8 10 11)

(modulo (expt 3 28) 29)

; find an 'a' that satisfies a^p-1 mod p == 1 where p is the
; number you're trying to determine is prime or not.

; we're testing p = 11 to see if it's prime, so the general
; equation for fermat's proof is ((a^(11-1)) mod 11) == 1

; NOT:
; 3 ^ (11 mod 7)  [ 3^5 => 243 ]

; BUT
; (3 ^ 11) mod 7

(expt 3 13)
(modulo 59049 13)



