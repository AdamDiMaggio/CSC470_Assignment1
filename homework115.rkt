;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define dupleNumbers
  (lambda (numberOf val)
    (if (= numberOf 0) '()
        (cons val (dupleNumbers (- numberOf 1) val)))))

(define dupleLists
  (lambda (numberOf val)
    (if (= numberOf 0) '()
        (append val (dupleLists (- numberOf 1) val)))))

(dupleNumbers 0 3)
(dupleNumbers 1 3)
(dupleNumbers 2 3)

(dupleLists 1 '(ha ha))
(dupleLists 2 '(ha ha))

;(cons '(ha ha) (cons '(ha ha) '()))

;(duple 2 '(ha ha))
;(cons 3 '())
;(append (cons '(ha ha) '()) '(ha ha))
;(append (append '(ha ha) '(ha ha)) '(ha ha))