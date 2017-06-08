#lang sicp

(define (lcd n)
  (find-lcd n 2))

(define (find-lcd n test-divide)
  (cond ((> (* test-divide test-divide) n) n)          ; square function
        ((= (remainder n test-divide) 0) test-divide)
        (else (find-lcd n (+ test-divide 1)))))
;(trace find-lcd)

(lcd 17)
(lcd 81)
(lcd 25)

(define (prime? n)
  (= n (lcd n)))

(define (timed-prime-test n)
(newline)
(display n)
(start-prime-test n (runtime)))

(define (start-prime-test n start-time)
(if (prime? n)
(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
(display " *** ")
(display elapsed-time))

(timed-prime-test 19)
(timed-prime-test 17)

(newline)
(prime? 119)
(modulo 119 7)