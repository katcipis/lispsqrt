#lang racket

(define (avg x y) (/ (+ x y) 2))

(define (avgdamp f)
  (lambda (x)
    (avg (f x) x)
    ))

(provide avgdamp)
