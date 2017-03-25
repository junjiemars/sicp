#lang racket

#|
Set as ordered list
|#

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((= x (car set)) true)
        ((< x (car set)) false)
        (else (element-of-set? x (cdr set)))))

;; Exercise 2.61
(define (adjoin-set x set)
  (cond ((or (null? set)
             (< x (car set)))
         (cons x set))
        ((= x (car set)) set)
        (else (cons (car set)
                    (adjoin-set x (cdr set))))))

;; Exercise 2.62
(define (union-set set1 set2)
  (cond ((null? set1) set2)
        (else (union-set (cdr set1)
                         (adjoin-set (car set1) set2)))))

(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))