#lang racket

(define (sqrt x)
  (fixed-point
    (lambda (g) (- (* g g) x))
    (lambda (guess) (avgdamp (lambda (g) (/ x g)) guess))
    1
    ))
