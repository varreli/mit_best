#lang racket ; pierpa

(define (fib n)
  (cond ((= n 0) (list 0 1)) ; < this is how (fib 0) returns 1 values to
        ((= n 1) (list 1 1)) ;   the second entry of the list position.
        (else
         (define ans-1 (fib (- n 1)))
         (define ans-2 (fib (- n 2)))

           (begin (display ans-1) (display " ") (display ans-2)
           (newline))

         (list (+ (first ans-1) (first ans-2))       ; << use (map + ans-1 ans-2)
               (+ (second ans-1) (second ans-2)))))) ;    in lieu of list lines


(fib 6)

; (1 1) (0 1)
; (1 2) (1 1)  ; note lines 19-20 , 23-24 , 26-27 are identical. we can map those lines to
; (1 1) (0 1)  ; the 3 redundant calculations in the tree of:
; (2 3) (1 2)
; (1 1) (0 1)  ; (fib 3) -> (fib 2) -> '1' , '0'
; (1 2) (1 1)  ;         -> (fib 1) -> '1'
; (3 5) (2 3)
; (1 1) (0 1)  ; this way we can follow precisely where each line in the output reflects particular leaf
; (1 2) (1 1)  ; resolutions and how they are added on subsequent lines.
; (1 1) (0 1)
; (2 3) (1 2)
; (5 8) (3 5)

;'(8 13)

; The left output is the number of leaf operations involved in calculating (fib (- n 1)).
; The right output is the number of leaf operations involved in calculating (fib (- n 2)).
;
; 8 + 5 = 13 is the total.
;
; The total leaf operations, 1+1+1+1+1+1+1+1+0+0+0+0+0= 13, indicates the next fibonacci
; number *itself*, not the next index.
