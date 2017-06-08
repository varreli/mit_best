#lang racket (require racket/trace)
(define >* *)

(define (factorial n)
  
  (if (= n 1)
      1
      (>* n (factorial (- n 1)))))
(trace >*)
(factorial 6)

; (factorial 6)
; (* 6 (factorial 5))
; (* 6 (* 5 (factorial 4)))
; (* 6 (* 5 (* 4 (factorial 3))))
; (* 6 (* 5 (* 4 (* 3 (factorial 2)))))
; (* 6 (* 5 (* 4 (* 3 (* 2 (factorial 1))))))
; (* 6 (* 5 (* 4 (* 3 (* 2 1)))))
; (* 6 (* 5 (* 4 (* 3 2))))
; (* 6 (* 5 (* 4 6)))
; (* 6 (* 5 24))
; (* 6 120)
; => 720    

; An example of *linear recursion.* Computing n!, the number
; of deferred multiplication operations, and hence memory required, grows with the number 
; of steps (in linear proportion to n).    -> O(n)


