#lang racket
(define (fib n)

  (cond ((= n 0) (list 0 1)) ; < this is how (fib 0) returns 1 values to
        ((= n 1) (list 1 1)) ;   the second entry of the list position.

        (else
         (define ans-1 (fib (- n 1)))
         (define ans-2 (fib (- n 2)))
         (define ans (map + ans-1 ans-2))
         (printf ";; n = ~a; ans-1 = ~a; ans-2 = ~a; ans = ~a;~%" n ans-1 ans-2 ans)
         ans)))

(fib 6)

;; n = 2; ans-1 = (1 1); ans-2 = (0 1); ans = (1 2);
;; n = 3; ans-1 = (1 2); ans-2 = (1 1); ans = (2 3);
;; n = 2; ans-1 = (1 1); ans-2 = (0 1); ans = (1 2);
;; n = 4; ans-1 = (2 3); ans-2 = (1 2); ans = (3 5);
;; n = 2; ans-1 = (1 1); ans-2 = (0 1); ans = (1 2);
;; n = 3; ans-1 = (1 2); ans-2 = (1 1); ans = (2 3);
;; n = 5; ans-1 = (3 5); ans-2 = (2 3); ans = (5 8);
;; n = 2; ans-1 = (1 1); ans-2 = (0 1); ans = (1 2);
;; n = 3; ans-1 = (1 2); ans-2 = (1 1); ans = (2 3);
;; n = 2; ans-1 = (1 1); ans-2 = (0 1); ans = (1 2);
;; n = 4; ans-1 = (2 3); ans-2 = (1 2); ans = (3 5);
;; n = 6; ans-1 = (5 8); ans-2 = (3 5); ans = (8 13);
; '(8 13)
