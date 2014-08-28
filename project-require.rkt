#lang racket/base

(require pollen/tag)
(require racket/function)
(provide (all-defined-out))
(define headline (curry (make-tag-function 'h1) 'class: "cover-heading"))
(define lead (curry (make-tag-function 'p) 'class: "lead"))
(define p (make-tag-function 'p))
(define (link url text) `(a [[href ,url]] ,text))
(define (link-button url text) `(a [[href ,url] [class "btn btn-lg btn-default"]] ,text))

(define (ifeq s1 s2 ifval elseval) (if (equal? s1 s2) ifval elseval))
