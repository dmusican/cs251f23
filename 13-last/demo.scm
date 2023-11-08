;; (define one-time-function
;;   (lambda (x)
;;     (+ x 1)))

;; (one-time-function 3)

(let ((one-time-function
       (lambda (x)
         (+ x 1))))
  (one-time-function 3))

;;; problem: lambda creates a closure that has an env
;;; pointer that points to the parent frame, not the frame
;;; that let just created
;; (let ((fact
;;        (lambda (x)
;;          (if (equal? x 1)
;;              1
;;              (* x (fact (- x 1)))))))
;;   (fact 5))

(letrec ((fact
       (lambda (x)
         (if (equal? x 1)
             1
             (* x (fact (- x 1)))))))
  (fact 5))

;;; not for assignment
(let ((x 3) (y x))
  12)
