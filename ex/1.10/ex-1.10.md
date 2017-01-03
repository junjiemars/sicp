# Exercise 1.10

> The folling procedure computes a mathematical function called 
Ackermann's function.
```scheme
(define (A x y)
	(cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
              (A x (- y 1))))))
```

**Q:**
