;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname asiishment2_lunh_algorithm) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (card lst)
 (if (null? lst)
     null
     (append (card (cdr lst)) (list (car lst)))
  ))
  
  (card '(1 2 3)) ; reversing 

(define (sum_even l) ; adding even numbers
    (cond ((null? l) 0)
          ((even? (car l)) (+ (car l) (sum_even (cdr l))))
          (else (sum_even (cdr l)))))

(sum_even '(1 2 3 4 6))

(define (sum_odd l) ; adding even numbers
    (cond ((null? l) 0)
          ((odd? (car l)) (+ (car l) (sum_odd (cdr l))))
          (else (sum_odd (cdr l)))))

(sum_odd '(1 2 3 4 6))


;test the card
(define verify-card (lambda (x)
               (if(= 1 (length x))
                 (car x)
                 (if( even? (length x))
                    (if(>= (car x) 10)
                     (+ (- (* 2 (car x)) 9) (verify-card (cdr x)))
                     (+ (* 2 (car x )) (verify-card (cdr x))))
                    (+ (car x) (car (cdr x)))
                    )
                 )
             )
          )



;test for mudulo
 (define hashing-algo (lambda (x)
                        (if (= (modulo (verify-card x ) 10) 0)
                            #t
                            #f )
                )
   )
(hashing-algo '(5 1 4 7 2 0 2 3 1 7 7 109 7 209))