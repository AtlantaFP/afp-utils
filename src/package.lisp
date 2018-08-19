(in-package :cl-user)

(defpackage+-1:defpackage+ #:afp-utils
  (:use #:cl)

;;; Third-party libraries

  ;; alexandria
  (:inherit-from #:alexandria
                 #:appendf
                 #:clamp
                 #:copy-hash-table
                 #:deletef
                 #:format-symbol
                 #:iota
                 #:lerp
                 #:make-keyword
                 #:shuffle
                 #:symbolicate
                 #:when-let
                 #:if-let
                 #:with-unique-names
                 #:define-constant)
  ;; serapeum
  (:inherit-from #:serapeum
                 #:defplace
                 #:dict
                 #:href
                 #:merge-tables
                 #:mvlet
                 #:partition)

;;; Custom functions

  ;; macros
  (:export #:while
           #:define-printer
           #:when-found
           #:unless-found
           #:if-found)
  ;; constants
  (:export #:+seconds/minute+
           #:+minutes/hour+
           #:+hours/day+
           #:+seconds/hour+
           #:+seconds/day+
           #:+minutes/day+
           #:+days/week+
           #:+hours/week+
           #:+minutes/week+
           #:+seconds/week+
           #:+day-names+
           #:+day-names/short+
           #:+month-names+
           #:+month-names/short+)
  ;; types
  (:export #:b8
           #:ub8)
  ;; characters
  (:export #:ascii-char-p
           #:ascii-lowercase-p
           #:ascii-uppercase-p
           #:ascii-letter-p
           #:ascii-number-p
           #:ascii-alphanumeric-p)
  ;; lists
  (:export #:plist-remove))
