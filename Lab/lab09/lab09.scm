(define (over-or-under num1 num2) 
  (cond 
  ((< num1 num2) -1)
  ((= num1 num2)  0)
  ((> num1 num2)  1)
  )
)

(define (make-adder num) 
  (define (helper inc)
    (+ num inc)
  )
  helper
)

(define (composed f g) 
  (lambda (x) (f (g x)))
)

(define (repeat f n) 
  (lambda (x)
    (if (= n 0)
        x
        ((repeat f (- n 1))(f x)))
  )
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (define large (max a b))
  (define small (min a b))
  (if (= (modulo large small) 0) small (gcd (modulo large small) small))
)
