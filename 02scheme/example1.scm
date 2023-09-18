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

;;; reduce --- Scheme calls it "fold"
;;; fold-left / fold-right
;;; fold-left takes three parameters
;;;   - a function of two values
;;;   - an initial value
;;;   - a list
;;; repeatedly in applies the function
;;;   ... to the current value and the next item
;;;   ... in the list

(use-modules (rnrs))
(fold-left + 81 '(1 2 3))

;;; (fold-left + 82 '(2 3))
;;; (fold-left + 84 '(3))
;;; (fold-left + 87 '())
;;; 87

;;; fold-right, same parameters
;;; applies the function that you give it to:
;;;   ... the car of the list and the result
;;;   ... to a recursive call to fold-right

(fold-right - 0 '(1 2))
;;; (- 0 (fold-right - 1 '(2))
;;; (- 0 (- 1 (fold-right - 2 '())))
;;; ..........
;;; (- 0 (- 1 2))
;;; (- 0 -1)
;;; -1

(fold-right - 0 '(1 2 3))

(fold-left cons 5 '(1 2 3))
;;; (fold-left cons '(5 . 1) '(2 3))
;;; ...

(fold-left cons '() '(1 2 3))
(fold-right cons '() '(1 2 3))


;;; Actual useful examples
;;; Add up the lengths of a bunch of lists
(define lists '((the fox jumped)
		(the cow mooed)
		(birds)
		(happy cheetahs)
		(angry tigers)))

;;; (map length lists)
;;; (3 3 1 2 2)
(define total-length
  (lambda (documents)
    (fold-left + 0 (map length documents))))

(total-length lists)

;;; count how many times a word appears within a
;;; list
(define text '(the quick brown fox at a fox squirrel squirrel quick quick))

;;; think about adding a list of 1s and 0s
;;; where 1 means word is there, 0 not
(define count-word
  (lambda (target words)
    (fold-left + 0  ........

(count-word 'squirrel text)





