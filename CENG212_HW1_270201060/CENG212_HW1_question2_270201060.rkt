#lang scheme

(define (question-2 element_List)
  (if
    (null? element_List)
    0
    (+ (car element_List) (question-2 (cdr element_List)))))

(question-2 (list 1 2 3 5 ))