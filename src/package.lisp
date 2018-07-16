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
                 #:when-let)
  (:inherit-from #:serapeum
                 #:defplace
                 #:dict
                 #:href
                 #:merge-tables
                 #:mvlet
                 #:partition)

  ;; Custom functions
  (:export))
