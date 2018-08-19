(in-package :afp-utils)

(defmacro do-hash ((key value table &optional result) &body body)
  (with-unique-names (block-name)
    (multiple-value-bind (body decls) (alexandria:parse-body body)
      `(block ,block-name
         (maphash
          (lambda (,key ,value)
            ,@decls
            (tagbody ,@body))
          ,table)
         ,(when result
            `(let (,key ,value)
               ,result))))))

(defmacro do-hash-keys ((key table) &body body)
  (with-unique-names (value)
    `(do-hash (,key ,value ,table)
       (declare (ignore ,value))
       ,@body)))

(defmacro do-hash-values ((value table) &body body)
  (with-unique-names (key)
    `(do-hash (,key ,value ,table)
       (declare (ignore ,key))
       ,@body)))
