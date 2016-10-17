#lang racket

(define (pascal-triangle-add row col)
  (cond
   [(> col row) 0]
   [(< col 0) 0]
   [(= col 1) 1]
   [else (+ (pascal-triangle-add (sub1 row) (sub1 col))
            (pascal-triangle-add (sub1 row) col))]))

(define (pascal-triangle-mul row col)
  (let ([factorial (λ (n)
                     (define (iter x n)
                       (if (zero? n)
                           x
                           (iter (* x n) (sub1 n))))
                     (iter 1 n))])
    (cond
     [(> col row) 0]
     [(< col 0) 0]
     [(= col 1) 1]
     [else (/ (factorial row)
              (* (factorial col) (factorial (- row col))))])))



