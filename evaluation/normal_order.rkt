;; Exercise 1.20

;; normal order             ; this is *lazy* evaluation

(gcd 206 40)

; expand:

(if (= 40 0)
    a
    (gcd 40 (remainder 206 40)))

; if evaluates to:
    (gcd 40 (remainder 206 40))

; expand:
(if (= (remainder 206 40) 0) ; remainder called 1 time in if predicate
    40
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))

; evaluates to:
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))

; expand:
(if (= (remainder 40 (remainder 206 40)) 0) ; remainder called 2 times in if predicate
    (remainder 206 40)
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

; evaluates to:
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

; expand:
(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0) ; remainder called 4 times in if
    (remainder 40 (remainder 206 40))
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))

; evaluates to:
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40))
                (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

; expand (= b 0) :
(if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
          (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40))
                    (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))
; remainder called 7 times in if predicate ^

; evaluates to:
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
; remainder called 4 times :   total calls    4 + 14 = 18

<< 2
