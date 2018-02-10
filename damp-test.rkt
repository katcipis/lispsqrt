#lang racket

(require rackunit
         "damp.rkt")

(define (square x) (* x x))
(define dampened-square (avgdamp square))
(define dampened-sin (avgdamp sin))

(check-equal? (square 2) 4 "SimpleSquare")
(check-equal? (dampened-square 2) 3 "DampenedSquare")
(check-equal? (dampened-square 0) 0 "DampenedZeroSquare")

(check-equal? (sin 1) 0.8414709848078965 "Sin")
(check-equal? (dampened-sin 1) 0.9207354924039483 "DampenedSin")
