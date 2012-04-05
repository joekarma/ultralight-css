;;;; ultralight-css.lisp

(in-package #:ultralight-css)

;;; "ultralight-css" goes here. Hacks and glory await!

(defun css-rule (rule)
  (format nil "~{~a {~%~@{  ~a: ~a;~^~%~}~%}~}"
	  (mapcar (lambda (item)
		    (typecase item
		      (keyword (string-downcase item))
		      (t item)))
		  rule)))

(defun css (rules)
  (format nil "~{~a~^~%~%~}"
	  (loop for rule in rules
	     collect (css-rule rule))))


;;; Example code
(ultralight-css:css `((:body :background-color "black"
			     :color "white")
		      (:h1 :font-size "14px"
			   :font-family "verdana"
			   :text-decoration "none"
			   :text-transform "small-caps")
		      ("div#foo" :border "solid red 4px"
				 ,@(list :border-radius 15
					 :-moz-border-radius 15))))

