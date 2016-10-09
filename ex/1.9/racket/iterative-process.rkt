#lang racket

(define (+ a b)
  (if (= a 0)
      b
      (+ (sub1 a) (add1 b))))