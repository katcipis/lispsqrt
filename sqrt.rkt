#lang racket

(require "damp.rkt" "fixed-point.rkt")

(define (sqrt-heron x)
    (define start 1)
    (define precision 0.000001)
    (define maxiter 10000)

    (fixed-point
      (avgdamp (lambda (guess) (/ x guess)))
      start
      precision
      maxiter))

(provide sqrt-heron)
