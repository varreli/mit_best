;; definition of pascal with row=3 , col=2
(pascal 3 2)
(cond ((< 3 2) #f)
      ((or (= 0 2) (= 3 2)) 1)
      (else (+ (pascal (- 3 1) (- 2 1))
                  (pascal (- 3 1) 2))))

; 3 > 2

(cond ((or (= 0 2) (= 3 2)) 1)
      (else (+ (pascal (- 3 1) (- 2 1))
                  (pascal (- 3 1) 2))))

;  2 != 0  ; 3 != 2

(cond (else (+ (pascal (- 3 1) (- 2 1)
               (pascal (- 3 1) 2)))))

;; simplify

(+ (pascal 2 1)
   (pascal 2 2))

(+ (cond ((< 2 1) #f)
         ((or (= 1 0) (= 2 1)) 1)
         (else (+ (pascal (- 2 1) (- 1 1))
                 (pascal (- 2 1) 1))))
   (pascal 2 2)

; 2 > 1  ;  1 != 0  ;  2 != 1
(+ (cond (else (+ (pascal (- 2 1) (- 1 1))
                  (pascal (- 2 1) 1)))))
   (pascal 2 2)

; simplify

(+ (+ (pascal 1 0)
      (pascal 1 1)
      (pascal 2 2)))

(cond ((< 1 0) #f)
      ((or (= 0 0) (= 1 0)) 1)
      (else (+ (pascal (- 1 1) (- 0 1))
               (pascal (- 1 1) 0))))
      (pascal 1 1)
      (pascal 2 2)

; 1 > 0 ; (= 0 col)   -> 1

(+ 1
   (pascal 1 1) ; (= row col) -> 1
   (pascal 2 2)

(+ 2
   (pascal 2 2) ; (= row col) -> 1

; solution :
<< 3

