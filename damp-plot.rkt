#lang racket

(require plot)
(require "damp.rkt")
(require "fixed-point.rkt")

(plot-new-window? #t)

(define wantroot 16)
(define (sqrtest x) (- (* x x) wantroot))
(define (next x) (/ wantroot x))
(define (dampenednext x) (avgdamp next x) )

(define (srqtsearch x) (sqrtest (next x)))
(define (dampened-sqrtest x) (sqrtest (dampenednext x)))

(define steps 20)
(define (iterate f)
  (lambda (x) (list-ref (for/list ([i x])) x))
  )

(plot (function next 1 steps #:label "y = searching sqrt(x)"))

(plot (function dampenednext 1 steps #:label "y = dampened searching sqrt(x)"))
