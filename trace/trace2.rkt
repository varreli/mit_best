#lang racket (require racket/trace)

(define sum (λ (x y) (+ x y)))
(define multiply
  (λ (x y)
    (*aux x y 0)))

(define *aux (λ (x y res)
               (if (= y 0) res
                   (*aux x (- y 1) (sum res x))))) ;     sum : (+ res x)


(trace sum *aux)
(multiply 4 5)

; https://botbot.me/freenode/racket/   <   June 17   : vraid
