
(defun factorial (n)
  (defun factorial-iter (acc n)
    (if (zerop n)
        acc
      (factorial-iter (* acc n) (1- n))))
  (factorial-iter 1 n))
