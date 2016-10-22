#lang racket

(define (* a b)
  (define (iter x a b)
    (cond
      [(zero? b) x]
      [(even? b) (iter x (double a) (halve b))]
      [else (iter (+ x a) a (sub1 b))]))
  (iter 0 a b))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))