
(defun element-of-set? (x set)
  "A predicate that determines whether a given element is a member of a set."
  (cond ((null set) nil)
        ((equal x (car set)) t)
        ((element-of-set? x (cdr set)))))

(defun adjoin-set (x set)
  "Takes an object `x' and a `set' as arguments of the original set 
   and also the adjoined element."
  (cond ((element-of-set? x set) set)
        ((cons x set))))

(defun intersection-set (set1 set2)
  "Computes the intersection of `set1' and `set2', 
   which is the set containing only only elements 
   that appear in both arguments."
  (cond ((or (null set1) (null set2)) nil)
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        ((intersection-set (cdr set1) set2))))

(defun union-set (set1 set2)
  "Computes the union of two sets, which is the set containing 
   each element that appears in either argument."
  (cond ((null set1) set2)
        ((union-set (cdr set1)
                    (adjoin-set (car set1) set2)))))

