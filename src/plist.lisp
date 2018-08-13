(in-package :afp-utils)

(defun plist-remove (plist &rest args)
  (loop :for (key value) :on plist :by #'cddr
        :unless (member key args :test #'eq)
          :append (list key value)))
