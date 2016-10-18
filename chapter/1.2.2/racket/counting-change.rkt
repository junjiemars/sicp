#lang racket

#|
kinds of coins:
------------------
pennie       1/100 = 1 cent
nickel       1/20
dime         1/10
quarter      1/4
half-dollar  1/2
|#

(define (count-change amount)
  (cc amount 5 ))

(define (cc amount kinds-of-coins)
  (cond
    [(= amount 0) 1]
    [(or (< amount 0) (= kinds-of-coins 0)) 0]
    [else (+ (cc amount (- kinds-of-coins 1))
             (cc (- amount (first-denomination kinds-of-coins))
                 kinds-of-coins))]))

(define (first-denomination kinds-of-coins)
  (cond
    [(= kinds-of-coins 1) 1  #|1 cent|# ]
    [(= kinds-of-coins 2) 5  #|1 nickel|#]
    [(= kinds-of-coins 3) 10 #|1 dime|#]
    [(= kinds-of-coins 4) 25 #|1 quarter|#]
    [(= kinds-of-coins 5) 50 #|1 half-dollar|#]))
