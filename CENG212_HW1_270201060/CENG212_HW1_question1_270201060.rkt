#lang scheme


(define (question-1 n)
  (cond ((= n 0) 0)
        ((= (modulo n 2) 0) (+ n (question-1 (- n 2))))))




