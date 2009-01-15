;; p12
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))                            ; gauche だと無限ループ?
