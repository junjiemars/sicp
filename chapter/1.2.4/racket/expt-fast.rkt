#lang racket

(define (expt-fast b n)
  (cond
   [(zero? n) 1]
   [(even? n) (square (expt-fast b (/ n 2)))]
   [else (* b (expt-fast b (sub1 n)))]))

(define (square x)
  (* x x))
