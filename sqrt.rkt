#lang racket

(define (is-good-enough guess x) (- (* guess guess) x))

(define (sqrt-template x next guess precision maxiter)
  (fixed-point
    (lambda (guess) (- (* guess guess) x))
    next
    guess
    precision
    maxiter
    ))

(provide sqrt-template)
