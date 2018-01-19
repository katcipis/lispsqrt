#lang racket

(require rackunit
         "fixed-point.rkt")

(define (inc x) (+ x 1))
(define (dec x) (- x 1))
(define (identity x) x)
(define epsilon 0.000001)

(check-equal? (fixed-point identity inc 1 epsilon 10) 11 "NotConverging")
(check-equal? (fixed-point identity dec 1 epsilon 100) 0 "Converging")
