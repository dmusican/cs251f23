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
