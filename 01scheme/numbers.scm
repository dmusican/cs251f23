;;; #t if all items in list are numbers
;;; #f otherwise
(define list-of-numbers?
  (lambda (lst)
    (if (null? lst)
	#t
	(and (number? (car lst))
	     (list-of-numbers? (cdr lst))))))

	
