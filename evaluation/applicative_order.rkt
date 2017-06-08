(gcd 206 40)                   ; applicative order is *strict evaluation*

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40))))

(gcd 40 (remainder 206 40))

(gcd 40 6) ;; 1st remainder evaluated

(if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))

(gcd 6 (remainder 40 6))

(gcd 6 4) ;; 2nd remainder evaluated

(if (= 4 0)
    6
    (gcd 4 (remainder 6 4)))

(gcd 4 (remainder 6 4))

(gcd 4 2) ;; 3rd remainder evaluated

(if (= 2 0)
    4
    (gcd 2 (remainder 4 2)))

(gcd 2 (remainder 4 2))

(gcd 2 0) ;; 4th remainder evaluated

(if (= 0 0)
    2
    (gcd 0 (remainder 2 0)))

<< 2
