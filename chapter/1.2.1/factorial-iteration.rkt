#lang racket

(define (factorial n)
  (factorial-iter 1 n))

(define (factorial-iter p n)
  (if (zero? n)
      p
      (factorial-iter (* p n) (sub1 n))))