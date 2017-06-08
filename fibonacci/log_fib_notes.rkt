; 1.19 is just 2 techniques put together ;;                  rain1 on scheme irc

; 1. binary exponentiation

; 2. the recurrence relation changed into a 2x2 matrix


; (1) is a trick to do fast exponentiation by repeated squaring :

; ?? The first factor should be  ((x^2)^2)^2      ??

; 12 in binary is 1100, x^12 = ((x^2)^2) * x^2 * x   << Alex changed this.

; if you implement this you'll get a recursion scheme very similar to the one in your paste, checking for 0, even and odd cases


; (2) the 2x2 matrix ;

; there's this trick: F = (1 1; 1 0)

; now F^n gives you a matrix = (Fib(n+1) Fib(n); Fib(n) Fib(n-1))

; its using the repeated squaring trick to calculate F^n really fast and that lets you compute fib() fast

; thats how it all works at a high level, try implementing binary exponentiation to clarify.

; a, b are the starting values, and p q are the coefficients of the recursion relation?

;;
; a = bq + aq + ap
; b = bp + aq
; a' = (bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p
;    = bpq + aq^2 + bq^2 + aq^2 + apq + bpq + apq + ap^2
;    = (a+b)(2pq+q^2) + a(q^2 + p^2)

; i.e. p' = q^2 + p^2 and q' = 2pq + q^2

; b' = (bp + aq)p + (bq + aq + ap)q
;    = bp^2 + apq + bq^2 + aq^2 + apq
;    = b(p^2 + q^2) + a(q^2+2pq)
