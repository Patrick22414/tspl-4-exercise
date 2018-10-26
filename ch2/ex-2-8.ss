(define list-copy
    (lambda (ls)
        (if (null? ls)
            '()
            (cons (car ls) (list-copy (cdr ls))))))

(define memv
    (lambda (x ls)
        (cond
            ((null? ls) #f)
            ((eqv? x (car ls)) ls)
            (else (memv (x (cdr ls)))))))

; ex 2.8.2
(define append2
    (lambda (a b)
        (if (null? b)
            a
            (append2 (cons a (car b)) (cdr b)))))

; ex 2.8.3
(define make-list
    (lambda (n a)
        (cond 
            ((<= n 0) '())
            (else (cons a (make-list (- n 1) a))))))

; ex 2.8.4
(define list-ref
    (lambda (ls n)
        (if (= n 0)
            (car ls)
            (list-ref (cdr ls) (- n 1)))))

(define list-tail
    (lambda (ls n)
        (if (= n 0)
            ls
            (list-tail (cdr ls) (- n 1)))))

; ex 2.8.5
(define shorter
    (lambda (a b) 
        (if (shorter? a b)
            a
            b)))

(define shorter?
    (lambda (a b) 
        (cond 
            ((null? a) #t)
            ((and (null? b) (not (null? a))) #f)
            (else (shorter? (cdr a) (cdr b))))))

; ex 2.8.6
(define even?
    (lambda (n) 
        (if (= n 0)
            #t
            (odd? (- n 1)))))

(define odd?
    (lambda (n) 
        (if (= n 0)
            #f
            (even? (- n 1)))))
