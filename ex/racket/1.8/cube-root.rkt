#lang racket

(define (cube-root n)
  (curt-iter 1.0 n))

(define (curt-iter guess x)
  (if (good-enough? guess x)
      guess
      (curt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x))
     (* 0.001 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (square n)
  (* n n))

(define (cube n)
  (* n n n))