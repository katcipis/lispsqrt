#lang racket/base

(require rackunit
         "damp.rkt")

(check-equal? (avgdamp (lambda (x) (* x x)) 2) 3 "DampSignal")
