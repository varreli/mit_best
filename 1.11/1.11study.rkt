#lang racket

(define (f n)
  (cond
    ((< n 3) n)
    (else
     (define ans-1 (f (- n 1)))
     (define ans-2 (* 2 (f (- n 2))))
     (define ans-3 (* 3 (f (- n 3))))
     (define ans (+ ans-1 ans-2 ans-3))
     (printf ";; n = ~a; ans-1 = ~a; ans-2 = ~a; ans-3 = ~a; ans = ~a;~%"
             n ans-1 ans-2 ans-3 ans)
     ans)))

(f 5)

;; n = 3; ans-1 = 2; ans-2 = 2; ans-3 = 0; ans = 4;
;; n = 4; ans-1 = 4; ans-2 = 4; ans-3 = 3; ans = 11; 
;; n = 3; ans-1 = 2; ans-2 = 2; ans-3 = 0; ans = 4;
;; n = 5; ans-1 = 11; ans-2 = 8; ans-3 = 6; ans = 25; dont forget here :
;;                                                    ans-2 = (* 2 (f 3)) -> 8 
;; << 25

;;

; output by hand according to me :

; (+ (f (- 5 1)            ; -> 25
;    (* 2 (f (- 5 2)))
;    (* 3 (f (- 5 3)))
;
; (+ (f 4)                 ; -> 11
;    (* 2 (f 3))           ; -> 08  ; 25
 ;   (* 3 (f 2)))          ; -> 06
;
; (+ (f (- 4 1))
;    (* 2 (f (- 4 2)))
;    (* 3 (f (- 4 3)))
;
; (+ (+ (f 3)              ; -> 04
;    (* 2 (f 2))           ; -> 04  ; 11
;    (* 3 (f 1)))          ; -> 03
;
; (+ (+ (f (- 3 1))
;       (* 2 (f (- 3 2)))
;       (* 3 (f (- 3 3)))
;
; (+ (+ (+ (f 2)           ; -> 02
;          (* 2 (f 1))     ; -> 02  ; 04
;          (* 3 (f 0)))    ; -> 00
