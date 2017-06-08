(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))
(test 0 (p))
(test 0 (p))
(test 0 (p))
(test 0 (p))

For applicative order evaluation: (test 0 (p)) => infinite loop
In the applicative order evaluator (p) is evaluated before reaching the conditional.
So, (= x 0) is never reached. The arguments are evaluated before the body of the procedure is executed.

For normal order evaluation: (test 0 (p)) => 0
The arguments are evaluated when they are used within the body of the procedure.

The evaluator first sees (test 0 (p)). It looks up "test" and sees that it's a function, so it sets to evaluating the arguments for the function. It evaluates 0, and then evaluates (p), which goes forever. If you were evaluating (+ (+ 3 4) 5), it would similarly look up "+", see that it's a function, and then evaluate (+ 3 4) and then 5, passing 7 and 5 to +. (which of course does halt)


Applicative order is when the operands are evaluated first. Normal-order is when the arguments are substituted into the expression unevaluated.

A helpful tip from later in the text: the reason it's called "applicative-order" is that the operands are evaluated before the operator is applied. There's a bit more discussion on "lazy" evaluation etc in chapter 3, and I absolutely could not keep the two straight until I read that, they really should have explained it sooner than chapter 4. – spacemanaki



