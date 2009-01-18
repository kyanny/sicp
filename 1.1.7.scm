(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; gosh> (sqrt 3)
; 1.7321428571428572
; gosh> (sqrt (+ 100 37))
; 11.704699917758145
; gosh> (sqrt (+ (sqrt 3) (sqrt 3)))
; 1.861510062128215
; gosh> (sqrt (+ (sqrt 2) (sqrt 3)))
; 1.7739279023207892
; gosh> (square (sqrt 1000))
; 1000.000369924366
