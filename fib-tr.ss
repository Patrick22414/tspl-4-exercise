; a tail-recursive fibonacci that cals the n-th fibonacci number

; a recursive fibonacci generator using (+ (fib (- n 1)) (fib - n 2)) is easy but not so efficient. so i would like to try a tail-recursive one

(define fib-tr
    (lambda (n)
        (if (<= n 0)
            "oops!"
            (fib-tr- 1 1 n))))

(define fib-tr-
    (lambda (a b n)
        (if (<= n 2)
            a
            (fib-tr- (+ a b) a (- n 1)))))
