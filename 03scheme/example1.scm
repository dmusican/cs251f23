(define gen-lazy-list
  (lambda (start stop)
    (if (> start stop)
        #f
        (cons start
              (lambda ()
                (gen-lazy-list
                 (+ start 1)
                 stop))))))

(define mylist (gen-lazy-list 1 3))
mylist
;;; first item
(car mylist)
;;; function to generate more lazylists
(cdr mylist)
;;; run that function
((cdr mylist))
;;; next item
(car ((cdr mylist)))
;;; next lazylist
((cdr ((cdr mylist))))
(cdr ((cdr ((cdr mylist)))))
