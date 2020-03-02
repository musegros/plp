;;
;; FILE:     homework06-tests.rkt
;; AUTHOR:   YOUR NAME
;; DATE:     YOUR DATE
;; COMMENT:  This file loads "homework06.rkt" and runs tests on its
;;           publicly-defined functions.
;;
;; MODIFIED: 
;; CHANGE:   
;;

#lang racket
(require rackunit)
(require "homework06.rkt")

;; --------------------------------------------------------------------------
;; Problem 1                                           (structural recursion)
;; --------------------------------------------------------------------------

(check-equal? (tails '(a b c)) '((a b c) (b c) (c) ()));
(check-equal? (tails '((a b) (c d))) '(((a b) (c d)) ((c d)) ()))


;; --------------------------------------------------------------------------
;; Problem 2                                               (mutual recursion)
;; --------------------------------------------------------------------------

(check-true (n-list? '(1 (2 (3 4) 5) 6)))
(check-false (n-list? '(1 (2 (3 a) 5) 6)))


;; --------------------------------------------------------------------------
;; Problem 3                                           (structural recursion)
;; --------------------------------------------------------------------------

(check-equal? (tree-min '(8 (13 11 (5 24 6)) (15 (12 10 14) 20))) 5)
(check-equal? (tree-min '(1 2 3)) 1)
; put your tests here

;; --------------------------------------------------------------------------
;; Problem 4                                                (little language)
;; --------------------------------------------------------------------------

(check-equal? (declared-vars '(lambda (x) (x y))) '(x))
(check-equal? (declared-vars '((lambda (x)
                   (lambda (z) z))
                 (lambda (x) y) )) '(x z x))


;; --------------------------------------------------------------------------
;; Problem 5                                                (little language)
;; --------------------------------------------------------------------------

; put your tests here

;; --------------------------------------------------------------------------

