;;  ------------------------------------------------------------------------
;; |   FILE           :  homework07.rkt                                     |
;; |   AUTHOR         :  Eugene Wallingford                                 |
;; |   CREATION DATE  :  2020/03/05                                         |
;; |   DESCRIPTION    :  a preprocessor for our little language             |
;; |                     and functions that analyze programs in the core    |
;;  ------------------------------------------------------------------------
;; |   MODIFIED BY    :  [ Josh Musgrave ]                                  |
;; |   CREATION DATE  :  [ 2020/03/12 ]                                     |
;; |   DESCRIPTION    :  [ what you added and changed ]                     |
;;  ------------------------------------------------------------------------

#lang racket
(require "syntax-procs.rkt")
(require racket/trace)
(provide digit-sum curry
         set-add   set-union   set-member?   set-subset?
         free-vars preprocess)

;; --------------------------------------------------------------------------
;; Problem 1                                           (structural recursion)
;; --------------------------------------------------------------------------

(define digit-sum
  (lambda (n)
    (if (and (number? n)
             (and (>= n 0)
                  (< n 10)))
        n
        (+ (remainder n 10) (digit-sum (quotient n 10))))))

;(digit-sum 1984)
;(digit-sum (expt 18 6))

;; --------------------------------------------------------------------------
;; Problem 2                                          (syntactic abstraction)
;; --------------------------------------------------------------------------
(define test '(lambda (x y z) anything))
(define curry
  (lambda (lambda-exp)
    (if (null? (lambda->param lambda-exp))
        (lambda->body lambda-exp)
        (make-lambda (lambda->param lambda-exp)
                     (curry (make-lambda (cdadr lambda-exp)
                                         (lambda->body lambda-exp)))))))
;(trace curry)
(curry test)
;; --------------------------------------------------------------------------
;; Problem 3                                           (structural recursion)
;; --------------------------------------------------------------------------

(define set-add
  (lambda (sym S)
    '()))

(define set-union
  (lambda (S1 S2)
    '()))

;; --------------------------------------------------------------------------
;; Problem 4                                           (structural recursion)
;; --------------------------------------------------------------------------

(define set-member?
  (lambda (sym S)
    #f))

(define set-subset?
  (lambda (S1 S2)
    #f))

;; --------------------------------------------------------------------------
;; Problem 5                                               (mutual recursion)
;; --------------------------------------------------------------------------

(define free-vars
  (lambda (exp)
    '()))

;; --------------------------------------------------------------------------
;; preprocess :: full-exp -> core-exp          (for use in testing Problem 5)
;; --------------------------------------------------------------------------

(define preprocess
  (lambda (exp)
    (cond
      ( (varref? exp) (make-varref exp) )
      ( (lambda? exp)
        (make-lambda (lambda->param exp)
                     (preprocess (lambda->body exp))) )
      ( (app? exp)
        (make-app (preprocess (app->proc exp))
                  (preprocess (app->arg  exp))) )
      ( else  ;; let
        (let ((var  (let->var  exp))
              (val  (let->val  exp))
              (body (let->body exp)))
          (make-app (make-lambda var (preprocess body))
                    (preprocess val)) ) ))))

;; --------------------------------------------------------------------------
