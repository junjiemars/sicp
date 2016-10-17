#lang racket

; Row, Column start from 1

(define (pascal-triangle-add row col)
  (cond
   [(> col row) 0]
   [(< col 0) 0]
   [(= col 1) 1]
   [else (+ (pascal-triangle-add (sub1 row) (sub1 col))
            (pascal-triangle-add (sub1 row) col))]))


(define (pascal-triangle-mul row col)
  (let* ([factorial (λ (n)
                      (define (iter x n)
                        (if (zero? n)
                            x
                            (iter (* x n) (sub1 n))))
                      (iter 1 n))]
         [row (sub1 row)]
         [col (sub1 col)])
    (cond
     [(> col row) 0]
     [(< col 0) 0]
     [(= col 1) 1]
     [else (/ (factorial row)
              (* (factorial col) (factorial (- row col))))])))

(define (pascal-triangle-mul! row col)
  (let* ([factorial (λ (r n)
                      (define (iter x r n)
                        (if (= r n)
                            x
                            (iter (* x n) r (sub1 n))))
                      (iter 1 r n))]
         [row (sub1 row)]
         [col (sub1 col)])
    (cond
     [(> col row) 0]
     [(< col 0) 0]
     [(= col 1) 1]
     [else (let ([col! (factorial 1 (sub1 col))])
             (/ (* col! (factorial col row))
                (* col! (factorial 1 (- row col)))))])))

