#lang racket                        ; sicp 1.17

(define (double n)
  (* 2 n))

(define (halve n)
  (/ n 2))

(define (fast-mult a b)
  
      (cond ((= b 0) 0)
            ((= b 1) a)
            ((even? b) (double (fast-mult a (halve b)))) ; identity (= ab (* 2 (* a (/ b 2))))
             (else (+ a (fast-mult a (- b 1)))))) ; identity (= ab (+ a (* a (- b 1))))

(fast-mult 4 5)

; (fast-mult 4 5)
; (+ 4 (fast-mult 4 4)
; (+ 4 (double (fast-mult 4 2)
; (+ 4 (double (double (fast-mult 4 1) -> 4
; (+ 4 (double (double 4) -> 8
; (+ 4 (double 8) -> 16
; (+ 4 16)
; << 20
