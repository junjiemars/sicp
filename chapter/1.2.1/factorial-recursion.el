
(defun factorial (n)
  (if (= n 1)
      1
    (* n (factorial (1- n)))))
