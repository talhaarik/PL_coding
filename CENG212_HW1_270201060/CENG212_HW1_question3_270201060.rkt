#lang scheme

(define power
  (lambda (x n)
    (if(= n 0)
       1
       (* (power x (- n 1))
          x))))


(define (question-3 element_List3)
  (if
   (null? element_List3)
   null
   (cons (power (car element_List3) 2) (question-3 (cdr element_List3)))))

(question-3 (list 2 3 4))