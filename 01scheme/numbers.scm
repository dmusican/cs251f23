;;; #t if all items in list are numbers
;;; #f otherwise
(define list-of-numbers?
  (lambda (lst)
    (if (null? lst)
	#t
	(and (number? (car lst))
	     (list-of-numbers? (cdr lst))))))

	

;;; gives you the nth item in a list
;;; return #f if n is too big or list is empty
(define nth
  (lambda (lst n)
    (if (null? lst)
	#f
	(if (equal? n 0)
	    (car lst)
	    (nth (cdr lst) (- n 1))))))
	
(define nth-again
  (lambda (lst n)
    (cond ((null? lst)  #f)
	  ((equal? n 0) (car lst))
	  (else (nth-again (cdr lst) (- n 1))))))
