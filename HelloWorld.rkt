#lang racket

(provide hello)

;; CONTRACT AND PURPOSE STATEMENT
;; hello : String -> String

(define (hello [str "World"])
  (string-append "Hello, " str "!"))
