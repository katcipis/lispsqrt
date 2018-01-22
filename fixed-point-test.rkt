#lang racket

(require rackunit
         "fixed-point.rkt")

(define (newinc precision)
  (lambda (x)
    (+ x precision)
    ))

(define (identity x) x)
(define precision 0.01)

(check-equal? (fixed-point identity (newinc (/ precision 10)) 1 precision 10000000) 1 "Converging")
(check-equal? (fixed-point identity (newinc 1) 1 precision 9) 10 "NotConverging")
