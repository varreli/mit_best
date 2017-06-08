#lang racket (require racket/trace)        ; sicp 1.18 variation

(define (double n)
  (+ n n))

(define (halve num)
  (/ num 2))

(define (* a b)
   (iter a b 0))

  (define (iter a b acc)
    
    (cond ((= b 0) acc)
          ((even? b) (iter (double a) (halve b) acc))
          (else (iter  (double a) (halve (- b 1)) (+ acc a)))))
 
(trace iter)
 
(* 2 7)
(* 3 4)
 
  
