

(defun factorial (n)
  (labels ((iter (n acc)
             (if (zerop n)
                 acc
                 (iter (1- n) (* n acc)))))
    (iter n 1)))
