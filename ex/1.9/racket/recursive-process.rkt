#lang racket

(define (+ a b)
  (if (= a 0)
      b
      (add1 (+ (sub1 a) b))))