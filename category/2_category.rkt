#lang racket

(equal? "The cat is black" "The cat is black")
(equal? '(The cat is a tabby) '(The cat is a tabby))

(round 3.50)  ; round up on split - prefers even number
(round 4.50)  ; round down on split since ^^
       
(number->string (round 4.51))
(string->number "44.88")

(string? "The cat is purring")    ; #t