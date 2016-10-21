#lang racket

(define (expt b n)
  (define (iter a b n)
    (cond
     [(zero? n) a]
     [(even? n) (iter a (square b) (/ n 2))]
     [else (iter (* a b) b (sub1 n))]))
  (iter 1 b n))


(define (square n)
  (* n n))

