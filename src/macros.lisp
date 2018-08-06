(in-package :afp-utils)

(defmacro define-printer ((object stream &key (type t) identity) &body body)
  `(defmethod print-object ((,object ,object) ,stream)
     (print-unreadable-object (,object ,stream :type ,type :identity ,identity)
       ,@body)))

(defmacro while (predicate &body body)
  `(loop :while ,predicate
         :do ,@body))

(defmacro when-found ((var lookup) &body body)
  (with-unique-names (found)
    `(multiple-value-bind (,var ,found) ,lookup
       (when ,found
         ,@body))))

(defmacro unless-found ((var lookup) &body body)
  (with-unique-names (found)
    `(multiple-value-bind (,var ,found) ,lookup
       (unless ,found
         ,@body))))

(defmacro if-found ((var lookup) then else)
  (with-unique-names (found)
    `(multiple-value-bind (,var ,found) ,lookup
       (if ,found
           ,then
           ,else))))
