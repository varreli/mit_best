#lang racket

(define (pascal row col)

  (begin (display " ") (display row)
         (display " ") (display col) (newline))

  (cond ((< row col) #f)
        ((or (= 0 col) (= row col)) 1)
         (else (+ (pascal (- row 1) (- col 1))
                  (pascal (- row 1) col)))))

(pascal 5 2)

;(pascal 4 1)
;  (pascal 3 0) -> 1
;  (pascal 3 1)
;
;(pascal 3 1)
;  (pascal 2 0) -> 1
;  (pascal 2 1)
;
;(pascal 2 1)
;  (pascal 1 0) -> 1
;  (pascal 1 1) -> 1
;                           >> (pascal 4 1) completes; Now (pascal (- row 1) col)
;(pascal 4 2)               >> (pascal 4 2)
;  (pascal 3 1)
;  (pascal 3 2)
;
;(pascal 3 1)
;  (pascal 2 0) -> 1
;  (pascal 2 1) 
;
;(pascal 2 1)
;  (pascal 1 0) -> 1
;  (pascal 1 1) -> 1
;
;(pascal 3 2)
;  (pascal 2 1)
;  (pascal 2 2) -> 1
;
;(pascal 2 1)
;  (pascal 1 0) -> 1
;  (pascal 1 1) -> 1
;
;<< 10


