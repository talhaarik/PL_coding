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


(define (question-4 element_List4)
  (if
   (null? element_List4)
   null
   (cons (power (car element_List4) 3) (question-4 (cdr element_List4)))))

(question-4 (list 2 3 4))
