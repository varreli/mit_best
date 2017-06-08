#lang racket (require racket/trace)

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
   (if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0)))))

(trace sine)

;(sine 12.15)
;(sine 36.45)
;(sine 109.35)
(sine 27)


; (sine 12.15)
; (p (sine 4.05))
; (p (p (sine 1.35)))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p sine 0.05))))))
; (p (p (p (p (p 0.05)))))
; (p (p (p (p 0.1495))))
; (p (p (p 0.435135)))
; (p (p 0.975847))
; (p -0.789563)
; << -0.399803

; (sine 36.45)
; (p (sine 12.15)
; (p (p (sine 4.05))
; (p (p (p (sine 1.35)))
; (p (p (p (p (sine 0.45))))
; (p (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (p (sine 0.05))))))
; (p (p (p (p (p (p 0.05)))))
; (p (p (p (p (p 0.1495))))
; (p (p (p (p 0.435135)))
; (p (p (p 0.975847))
; (p (p -0.789563)
; (p -0.399803)
; << -0.943787

;  the original (p (sine angle) is a trig identity to find sine, and takes the input and diminishes
;  it until angle is very close to 0 (here less than 0.1) , in which case sin(x) and x are almost equal.

;  apply the recursive part repeatedly and prove by induction that it is indeed a/3^n , so
;  after n calls the angle is a/3^n
;  Then you can rearrange it to get: n < log (a / 0.1) / log (3).
;  Therefore for some constant C we have: n < C log (a).
;  Therefore the number of steps grows as O (log (a)).

;  1) a/3^n > 0.1 >= a/3^(+ n 1)  ; both of these will give a logarithmic result.
;  2) a/3^(- n 1) > 0.1 >= a/3^n

;  a/0.1 > 3^n -> log(a/0.1) > n log 3 -> log(a/0.1) / log 3 > n -> C log(a) > n -> n in O(log(a))
;  the other side gives you a lower bound so you can get n in o(log(a)) and thus n in Theta(log a)
