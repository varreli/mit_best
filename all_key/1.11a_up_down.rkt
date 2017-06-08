#lang racket  ;; from rain1 chat - botbot.me/freenode/racket/ August 21 2016

(define (f n)
  (cond
    ((< n 3) n)
    (else
(printf ";; down 1~%")
     (define ans-1 (f (- n 1)))
(printf ";; up 1, down 2~%")
     (define ans-2 (* 2 (f (- n 2))))
(printf ";; up 2, down 1~%")
     (define ans-3 (* 3 (f (- n 3))))
(printf ";; up 3~%")
     (define ans (+ ans-1 ans-2 ans-3))
     (printf ";; n = ~a; ans-1 = ~a; ans-2 = ~a; ans-3 = ~a; ans = ~a;~%" ; prints 'flat version'
             n ans-1 ans-2 ans-3 ans)                                     ; of actual tree recur
     ans)))

(f 5)

;; down 1
;; down 1
;; down 1
;; up 1, down 2
;; up 2, down 1
;; up 3
;; n = 3; ans-1 = 2; ans-2 = 2; ans-3 = 0; ans = 4;
;; up 1, down 2
;; up 2, down 1
;; up 3
;; n = 4; ans-1 = 4; ans-2 = 4; ans-3 = 3; ans = 11;
;; up 1, down 2
;; down 1
;; up 1, down 2
;; up 2, down 1
;; up 3
;; n = 3; ans-1 = 2; ans-2 = 2; ans-3 = 0; ans = 4;
;; up 2, down 1
;; up 3
;; n = 5; ans-1 = 11; ans-2 = 8; ans-3 = 6; ans = 25;

