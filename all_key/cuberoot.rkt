 #lang racket (require racket/trace)
(define (square x) (* x x)) 
  
(define (cube-root-er guess prev-guess x) 
  (if (good-enough? guess prev-guess) 
      guess 
      (cube-root-er (improve guess x) guess x))) 
  
(define (improve guess x) 
  (average3 (/ x (square guess)) guess guess)) ; based on identity of
                                                ; cbrt(x) = x/cbrt(x)^2
(define (average3 x y z) 
  (/ (+ x y z) 3)) 

(define (good-enough? guess prev-guess) 
  (begin (display guess) (display "  ") (display prev-guess) ; display
         (display "  ") (display (abs (* guess 0.001))) 
         (newline))
  (< (abs (- guess prev-guess)) (abs (* guess 0.001)))) 
  
(define (cube-root x) 
  (cube-root-er 1.0 0.0 x)) 
 

(cube-root 16)
; (cube-root 27)
; (cube-root 16)   
; (cube-root -8)
; (cube-root -1000) 
 

