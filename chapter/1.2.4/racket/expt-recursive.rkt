#lang racket

(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (sub1 n)))))
