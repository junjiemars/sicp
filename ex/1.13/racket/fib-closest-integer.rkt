#lang racket

(define φ (/ (+ 1 (sqrt 5)) 2))
(define ψ (/ (- 1 (sqrt 5)) 2))

(define (fib n)
  (define (iter a b n)
    (if (zero? n)
        b
        (iter (+ a b) a (sub1 n))))
  (iter 1 0 n))

(define (fib-closest-integer n)
  (inexact->exact (round (/ (expt φ n) (sqrt 5)))))

(define (diff? n)
  (not (zero? (- (fib n) (fib-closest-integer n)))))

#|
(map (λ (x) (fib x)) (range 20))
(map (λ (x) (fib-closest-integer x)) (range 20))
(map (λ (x) (diff? x)) (range 20))
|#
