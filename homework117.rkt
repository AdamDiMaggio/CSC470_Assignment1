;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework117) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define L '(1 2 3))
(define L2 '((a) (fine) (idea)))
(define L3 '(a (more(complicated)) object))
(car L)
(cons (car L) (cdr L))
(append (cons (car L) '()) (cdr L))
(cons '(1) '(2 3))
(cons (cons (car L) '()) '(2 3))

;charAt from class
(define charAt
  (lambda (list bucketNum)
    (if (= bucketNum 0) (car list)
        (charAt (cdr list) (- bucketNum 1)))))

(define down
  (lambda (list firstBucket lastBucket)
    (if (> firstBucket lastBucket) '()
        (cons (cons (charAt list firstBucket) '()) (down list (+ firstBucket 1) lastBucket)))))

(down L 0 2)
(down L2 0 2)
(down L3 0 2)