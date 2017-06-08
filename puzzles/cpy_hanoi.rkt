#lang racket (require racket/trace)

(define (move-tower size from aux to)
  (cond ((= size 0) " done")
        (else
          (move-tower (- size 1) from to aux)
          (print-move from to)
          (move-tower (- size 1) aux from to))))

(define (solve size from to)
  (move-tower size from to 3))

(define (print-move from to)

  (newline)
  (display "move top disk from ")
  (display from)
  (display " to ") (display to))  


(trace move-tower)
(solve 3 1 2)


; output :
; move top disk from 1 to 3
; move top disk from 1 to 2
; move top disk from 3 to 2
; move top disk from 1 to 3
; move top disk from 2 to 1
; move top disk from 2 to 3
; move top disk from 1 to 3" done"


; https://www.learneroo.com/modules/71/nodes/402