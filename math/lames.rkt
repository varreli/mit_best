#lang racket (require racket/trace)

(define (^ base power)

 (define (*^ power acc)
  
    (if (= power 0)
        acc
        (*^ (- power 1) (* acc base))))
  
  (trace *^)
  (*^ power 1))


; Lame's Theorem for (fib k) 
; φ = 1 + √5 / 2     :

(define (lames k)

  (/ (^ (/ (+ 1 (sqrt 5)) 2) k) (sqrt 5))) ; order of growth is O(log n)

(lames 10)
(lames 11)
(lames 12)


; Binet's Formula for fib(k) (more accurate)      
; φ = 1 + √5 / 2  ;  ψ = 1 - √5 / 2     :

(define (binet k)
(/ (- (^ (/ (+ 1 (sqrt 5)) 2) k) 
      (^ (/ (- 1 (sqrt 5)) 2) k)) (sqrt 5)))

; (binet 11)



