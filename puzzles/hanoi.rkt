#lang racket  (require racket/trace) (define *- -)

(define (move-tower size from aux to)
  (cond ((= size 0) " done")
        (else
          (move-tower (- size 1) from to aux)
          (print-move from to)
          (move-tower (- size 1) aux from to))))

(define (print-move from to)
  
  (newline)
  (display "move top disk from ")
  (display from)
  (display " to ") (display to))


(trace *-)
(define (solve size from to)
  (move-tower size from to 3))

(solve 3 1 2)

; https://www.learneroo.com/modules/71/nodes/402
