;; (define one-time-function
;;   (lambda (x)
;;     (+ x 1)))

;; (one-time-function 3)

(let ((one-time-function
       (lambda (x)
         (+ x 1))))
  (one-time-function 3))

(let ((fact
       (lambda (x)
         (if (equals? x 1)
             1
             (* x (fact (- x 1)))))))
  (fact 5))
