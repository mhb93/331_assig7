; Mary Bolling
; Started 4-28-2024
; Laast edited 4-29-2024
; CS 331, Homework 7 Exercise C
; Program takes any number of numbers and adds them as pairs

#lang scheme
(define (addpairs . xs)
  (define (summedpairs ys)
    (cond
      ; Empty list
      [(null? ys) '()]
      ; Only one element
      [(null? (cdr ys)) ys]
      ; Add the car to the cdr car
      (else (cons (+ (car ys) (cadr ys))
                  (summedpairs (cddr ys))))))
    ; Call summedpairs on every element of xs
    (summedpairs xs)
  )

    
