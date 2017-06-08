#lang racket
; IF n is prime, a < n , and a is a positive integer, 
; THEN a^n is congruent to a mod n :

(expt 3 11) ;
(modulo 3 11)             ;  congruent a modulo n (3)
(modulo 177147 11)        ;  congruent a modulo n (3)
(/ 177147 11) (newline)

(expt 6 11)               
(modulo 6 11)
(modulo 362797056 11)
(/ 362797056 11)


(expt 4 7) ; -> 16384
(modulo 4 7)
(modulo 16384 7)
(/ 16384 7) (newline)

(printf "n is not prime (expt 4 8) :") (newline)
(expt 4 18) ; -> 68719476736
(modulo 4 18)
(modulo 68719476736 18)
(/ 68719476736 18)
