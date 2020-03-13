;;
;; FILE:     homework06-tests.rkt
;; AUTHOR:   YOUR NAME
;; DATE:     YOUR DATE
;; COMMENT:  This file loads "homework07.rkt" and runs tests on its
;;           publicly-defined functions.
;;
;; MODIFIED: 
;; CHANGE:   
;;

#lang racket
(require rackunit)
(require "homework07.rkt")

;; --------------------------------------------------------------------------
;; Problem 1                                           (structural recursion)
;; --------------------------------------------------------------------------

(check-eq? (digit-sum 1984)
           22)
(check-eq? (digit-sum (expt 18 6))
           18)
(check-eq? (digit-sum 123)
           6)
                      

;; --------------------------------------------------------------------------
;; Problem 2                                          (syntactic abstraction)
;; --------------------------------------------------------------------------

(check-equal?(curry '(lambda (x y z) anything))
             '(lambda (x) (lambda (y) (lambda (z) anything))))

;; --------------------------------------------------------------------------
;; Problem 3                                           (structural recursion)
;; --------------------------------------------------------------------------

(check-equal? (set-union '(a x y z b) '(x y z))
              '(b a x y z))

;; --------------------------------------------------------------------------
;; Problem 4                                           (structural recursion)
;; --------------------------------------------------------------------------

(check-true (set-member?  'x '(x y z)))

(check-true (set-subset? '() '(a x y z b)))

;; --------------------------------------------------------------------------
;; Problem 5                                               (mutual recursion)
;; --------------------------------------------------------------------------

(check-equal? (free-vars '(lambda (y) (x y)))
              '(x))
(check-equal? (free-vars (preprocess '(let (a b)
                          (let (c (lambda (d) a))
                            (c a)))))
              '(b))