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
(provide tails n-list? tree-min declared-vars prefix->postfix)

;; --------------------------------------------------------------------------
;; Problem 1                                           (structural recursion)
;; --------------------------------------------------------------------------

(define tails
  (lambda (lst)
    '()))          ; only a default value...

;; --------------------------------------------------------------------------
;; Problem 2                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define n-list?
  (lambda (obj)
    #f))           ; only a default value...

;; --------------------------------------------------------------------------
;; Problem 3                                           (structural recursion)
;; --------------------------------------------------------------------------

(define tree-min
  (lambda (bin-tree)
    0))            ; only a default value...

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

