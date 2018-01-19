#lang racket/base

(require rackunit
         "damp.rkt")

(define (square x) (* x x))
(check-equal? (square 2) 4 "SimpleSquare")
(check-equal? (avgdamp square 2) 3 "DampenedSquare")
(check-equal? (avgdamp square 0) 0 "DampenedZeroSquare")
