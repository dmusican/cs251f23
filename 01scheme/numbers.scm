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
	  ((< n 0) #f)
	  (else (nth-again (cdr lst) (- n 1))))))

;;; So far, all these functions return a single value

;;; Now let's return a list

;;; returns a new list that consists of an item removed
(define remove-first
  (lambda (lst item)
    (cond ((null? lst) '())
	  ((equal? item (car lst)) (cdr lst))
	  (else
	   (cons (car lst)
		 (remove-first (cdr lst) item))))))

;;; substitutes an item for another
;;; (subst 'b 'a '((b c) (b () d)))
;;;       --->  ((a c) (a () d))
;;; works at any depth level

(define subst
  (lambda (old new input)
    (cond ((null? input)  ________________)
	  ((list? input)  ________________)
	  ((equal? input old)   ___________)
	  (else   _______________________))))












    
