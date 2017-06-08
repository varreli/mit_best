#lang scheme

(define (extended-gcd a b)
  (let loop ([s 0] [t 1] [r b]
             [old-s 1] [old-t 0] [old-r a])
    (if (zero? r)
        (cons old-s old-t)
        (let ((q (quotient old-r r)))
          (loop (- old-s (* q s))
                (- old-t (* q t))
                (- old-r (* q r))
                s t r)))))

(gcd 80 62)
(extended-gcd 80 62)

; << 2
; << (7 . -9)




;(define (test a b)
;  (let* ((ans (extended-gcd a b))
;         (x (car ans))
;         (y (cdr ans)))
;    (= (gcd a b) (+ (* a x) (* b y)))))
;
;(test 384 256)