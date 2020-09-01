;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework116) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define testList '((a 1) (a 2) (1 b) (2 b)))

;(car testList) ;(a 1)
;(car (car testList)) ; a
;(cons (car (car testList)) '())
;(cdr (car testList)) ;1

;(append (cdr (car testList)) (cons (car (car testList)) '()))


;charAt from class
(define charAt
  (lambda (list bucketNum)
    (if (= bucketNum 0) (car list)
        (charAt (cdr list) (- bucketNum 1)))))

;function to invert two-lists
(define inversion
  (lambda (list)
    (append (cdr list) (cons (car list) '()))))

;(inversion (car testList))

;Main Function
(define invert
  (lambda (list firstBucket lastBucket)
    (if (> firstBucket lastBucket) '()
        (append (inversion (charAt list firstBucket)) (invert list (+ firstBucket 1) lastBucket)))))
(invert testList 0 3)