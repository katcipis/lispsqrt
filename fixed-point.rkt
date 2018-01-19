#lang racket

(define (fixed-point f next x epsilon maxiter)
  (if (<= maxiter 0) x
      (if (<= (f x) epsilon) x
              (fixed-point f next (next x) epsilon (- maxiter 1))
          )
      )
  )

(provide fixed-point)
