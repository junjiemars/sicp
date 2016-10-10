#lang racket


(define (fn n)
  (fn-iter 2 1 0 n))


(define (fn-iter a b c n)
  (if (zero? n)
      c
      (fn-iter (+ a (* 2 b) (* 3 c))
               a
               b
               (sub1 n))))

#|
(time (map (λ (x) (fn x))
           (range 20)))
|#