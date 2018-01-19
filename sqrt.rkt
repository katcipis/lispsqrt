#lang racket

(define (sqrt x)
  (fixed-point
    (lambda (guess) (- (* guess guess) x))
    (lambda (guess) (avgdamp (lambda (guess) (/ x guess)) guess))
    1
    ))
