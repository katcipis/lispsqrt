#lang racket

(define (fixed-point f x precision maxiter)
  (if (<= maxiter 0)
      x
      (if (<=
            (abs
              (-
                (f x)
                x
                ))
             precision
            )
          x
          (fixed-point f (f x) precision (- maxiter 1))
      )
  )
)

(provide fixed-point)
