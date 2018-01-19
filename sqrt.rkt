#lang racket

(define is-good-enough )
(define (is-good-enough guess x) (- (* guess guess) x))
(define (next guess x) (avgdamp (lambda (guess) (/ x guess)) guess))

(define (sqrt x)
  (fixed-point
    (lambda (guess) (is-good-enough guess x))
    (lambda (guess) (next guess x))
    1
    ))
