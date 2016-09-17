#lang racket

(define (square-root n)
  (square-iter 1.0 n))

(define (square-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     (* 0.001 x)))

(define (square n)
  (* n n))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))