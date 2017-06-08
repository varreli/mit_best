#lang racket (require trace)

(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  
  (begin (display product) (display " ") (display counter) 
         (display " ") (display max-count) (newline))
  
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(factorial 6)

; (factorial 6)
; (fact-iter 1 1 6)
; (fact-iter 1 2 6)
; (fact-iter 2 3 6)
; (fact-iter 6 4 6)
; (fact-iter 24 5 6)
; (fact-iter 120 6 6)
; (fact-iter 720 7 6) => 720

;     This does not expand and contract. We merely keep track of
;     the *state variables* : product, counter and max-count. At 
;     every step each state variable is updated. This is a *linear 
;     iterative process.* When the procedure is recursive but the 
;     process generated is iterative, we have *tail recursion.*
