#lang racket

#|
Set as unordered list
|#

(define (element-of-set? x set)
  "Predicate whether a given element is a member of a set."
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  "Takes an object `x' and a `set' as arguments and returns a set that
contains the elements of the original set and also the adjoined element."
  (cond ((element-of-set? x set) set)
        (else (cons x set))))

(define (intersection-set set1 set2)
  "Computes the intersection of two sets, which is set containing each element."
  (cond ((or (null? set1) (null? set2)) null)
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))

(define (union-set set1 set2)
  "Computers the union of two sets, which is the set containing each element
that appears in either argument."
  (cond ((null? set1) set2)
        (else (union-set (cdr set1)
                         (adjoin-set (car set1) set2)))))

