#lang racket

(define (* a b)
  (cond
    [(zero? b) 0]
    [(even? b) (double (* a (halve b)))]
    [else (+ a (* a (sub1 b)))]))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))