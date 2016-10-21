#lang racket

(define (expt b n)
  (define (iter x n)
    (if (zero? n)
        x
        (iter (* x b) (sub1 n))))
  (iter 1 n))
