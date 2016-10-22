#lang racket

(define (fib n)
  (define (square n) (* n n))
  (define (iter a b p q n)
    (cond
      [(zero? n) b]
      [(even? n) (iter a
                       b
                       (+ (square p) (square q))
                       (+ (* 2 p q)  (square q))
                       (/ n 2))]
      [else (iter (+ (* b q) (* a q) (* a p))
                  (+ (* b p) (* a q))
                  p
                  q
                  (sub1 n))]))
  (iter 1 0 0 1 n))