#lang racket

(define (fib n)
  (fib-iter 0 1 n))

(define (fib-iter a b n)
  (if (zero? n)
      a
      (fib-iter (+ a b) a (sub1 n))))



#|
; generate a fibonacci sequence

(map (λ (x) (fib x))
     (range 10))
|#