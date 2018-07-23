(asdf:defsystem #:my-utils
  :description "My utilities"
  :author ("Michael Fiano <mail@michaelfiano.com>")
  :license "MIT"
  :version "0.1.0"
  :depends-on (#:alexandria
               #:serapeum
               #:defpackage-plus)
  :pathname "src"
  :serial t
  :components
  ((:file "package")
   (:file "macros")
   (:file "constants")
   (:file "types")
   (:file "character")))
