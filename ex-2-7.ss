; ex 2.7.1
(define atom?
    (lambda (x) 
        (if (pair? x)
            #f
            #t)))

; test 2.7.1
(display (atom? '())
(display (atom? '(a . b)))
(display (atom? 'a))
(display (atom? 123456))


; ex 2.7.2
(define shorter
    (lambda (lst-a lst-b) 
        (if (<= (length lst-a) (length lst-b))
            lst-a
            lst-b)))

; test 2.7.2
(display (shorter '(a b) '(c d e)))
(display (shorter '(a b) '(c d)))
(display (shorter '(a b) '(c)))
