#lang racket

(equal? "The cat is black" "The cat is black")
(equal? '(The cat is a tabby) '(The cat is a tabby))

(number->string (round 3.457))
(number->string (round 4.51))

(string->number "44.88")

(string? "The cat is black")    ; #t