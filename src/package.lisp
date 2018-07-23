(in-package :cl-user)

(defpackage+-1:defpackage+ #:my-utils
  (:nicknames #:mu)
  (:use #:cl)

  ;; Third-party libraries
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
                 #:with-unique-names
                 #:define-constant)
  (:inherit-from #:serapeum
                 #:defplace
                 #:dict
                 #:href
                 #:merge-tables
                 #:mvlet
                 #:partition)

  ;; Custom functions
  (:export #:while
           #:define-printer
           #:when-found
           #:unless-found
           #:if-found
           #:+seconds/minute+
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
           #:+month-names/short+
           #:b8
           #:ub8
           #:ascii-char-p
           #:ascii-lowercase-p
           #:ascii-uppercase-p
           #:ascii-letter-p
           #:ascii-number-p
           #:ascii-alphanumeric-p))
