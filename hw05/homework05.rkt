;;
;; FILE:     homework05.rkt
;; AUTHOR:   Josh Musgrave
;; DATE:     19 Feb 2020
;; COMMENT:  This module defines the five functions specified in
;;           Homework 5 as an importable module.  Notice how each
;;           each function has a body and returns a default value.
;;           Writing stubs of this sort enables us to load the file
;;           and run tests, even if the tests fail.
;;
;; MODIFIED: 
;; CHANGE:   
;;

#lang racket
(provide prefix-of? includes-course? nlist+ max-length prefix->infix)

;; --------------------------------------------------------------------------
;; Problem 1                                           (structural recursion)
;; --------------------------------------------------------------------------

(define prefix-of?
  (lambda (lst1 lst2)
    #f))

;; --------------------------------------------------------------------------
;; Problem 2                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define includes-course?
  (lambda (course requirements)
    #f))

;; --------------------------------------------------------------------------
;; Problem 3                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define nlist+
  (lambda (nlst)
    0))

;; --------------------------------------------------------------------------
;; Problem 4                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define max-length
  (lambda (str-list)
    -1))

;; --------------------------------------------------------------------------
;; Problem 5                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define prefix->infix
  (lambda (binary-exp)      ; This is a default value, used as a placeholder.
    '(1 + 2)))              ; It will fail all but one test.

;; --------------------------------------------------------------------------
