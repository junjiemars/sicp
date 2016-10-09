#lang racket

(define (cube-root n)
  ((if (< n 0) - +)
   (cube-root-iter 1.0 (abs n))))
       
(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

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