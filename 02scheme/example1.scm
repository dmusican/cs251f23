;;; Currying (Haskell Curry)
;;; Function of "multiple parameters" is instead
;;; a function of one parameter than returns
;;; another function

;;; not curried
(define mult-normal
  (lambda (a b)
    (* a b)))

;;; curried
(define mult-curried
  (lambda (a)
    (lambda (b)
      (* a b))))

  
;;; map/reduce

;;; map
;;; "sort of looping in Scheme"
;;; two parameters: a function of one parameter
;;;  ... and a list
;;; it applies that function to each item in list
(define add-one
  (lambda (x)
    (+ x 1)))

(map add-one '(1 9 8 2 12))





