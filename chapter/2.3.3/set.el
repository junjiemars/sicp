
(defun element-of-set? (x set)
  (cond ((null set) nil)
        ((equal x (car set)) t)
        (t (element-of-set? x (cdr set)))))

(defun adjoin-set (x set)
  (cond ((element-of-set? x set) set)
        (t (cons x set))))

(defun intersection-set (set1 set2)
  (cond ((or (null set1) (null set2)) nil)
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (t (intersection-set (cdr set1) set2))))

(defun union-set (set1 set2)
  (cond ((null set1) set2)
        (t (union-set (cdr set1)
                      (adjoin-set (car set1) set2)))))
