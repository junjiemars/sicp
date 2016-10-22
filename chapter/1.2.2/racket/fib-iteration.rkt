#lang racket

(define (fib n)
  (define (iter a b n)
    (if (zero? n)
        b
        (iter (+ a b) a (sub1 n))))
  (iter 1 0 n))


#|
; generate a fibonacci sequence

(map (λ (x) (fib x))
     (range 10))
|#