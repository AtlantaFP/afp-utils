(in-package :my-utils)

(defun ascii-char-p (char)
  (and (characterp char)
       (<= 0 (char-code char) 127)))

(defun ascii-lowercase-p (char)
  (char<= #\a char #\z))

(defun ascii-uppercase-p (char)
  (char<= #\A char #\Z))

(defun ascii-letter-p (char)
  (or (ascii-lowercase-p char)
      (ascii-uppercase-p char)))

(defun ascii-number-p (char)
  (char<= #\0 char #\9))

(defun ascii-alphanumeric-p (char)
  (or (ascii-letter-p char)
      (ascii-number-p char)))
