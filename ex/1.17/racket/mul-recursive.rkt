#lang racket

(define (* a b)
  (if (zero? b)
      0
      (+ a (* a (sub1 b)))))