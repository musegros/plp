;;
;; FILE:     homework06.rkt
;; AUTHOR:   Josh Musgrave
;; DATE:     26 Feb 2020
;; COMMENT:  This module defines the five functions specified in
;;           Homework 6 as an importable module.  Use the function
;;           stub if you do not have a working solution of your own.
;;
;; MODIFIED: 
;; CHANGE:   
;;

#lang racket
(require "syntax-procs.rkt")
(require "occurs-procs.rkt")
(require racket/trace)
(provide tails n-list? tree-min declared-vars prefix->postfix)

;; --------------------------------------------------------------------------
;; Problem 1                                           (structural recursion)
;; --------------------------------------------------------------------------

(define tails
  (lambda (lst)
    (if (null? lst)
        (cons '() '())
        (cons lst (tails (rest lst))))))

;; --------------------------------------------------------------------------
;; Problem 2                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define n-list?
  (lambda (obj)
    (if (null? obj)
        #t
        (if (num-expr? (first obj))
            (n-list? (rest obj))
            #f))))
            
(define num-expr?
  (lambda (numexp)
    (if (number? numexp)
        #t
        (if (list? numexp)
            (n-list? (rest numexp))
            #f))))

;; --------------------------------------------------------------------------
;; Problem 3                                           (structural recursion)
;; --------------------------------------------------------------------------

(define tree-min
  (lambda (bin-tree)
    (if (number? bin-tree)
        bin-tree
        (min (first bin-tree)
             (tree-min (second bin-tree))
             (tree-min (third bin-tree))))))

;; --------------------------------------------------------------------------
;; Problem 4                                                (little language)
;; --------------------------------------------------------------------------

(define declared-vars
  (lambda (exp)
    '()))          ; only a default value...

;; --------------------------------------------------------------------------
;; Problem 5                                                (little language)
;; --------------------------------------------------------------------------

(define prefix->postfix
  (lambda (exp)
    'x))           ; only a default value...

;; --------------------------------------------------------------------------

