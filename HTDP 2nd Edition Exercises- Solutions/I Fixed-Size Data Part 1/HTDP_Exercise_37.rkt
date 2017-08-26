;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_37) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 37

;; String -> String
;; produces a string like the given one with the first character removed
;(define (string-rest str) "") ;stub
(check-expect (string-rest "hello") "ello")
(check-expect (string-rest "hi") "i")
(check-expect (string-rest "hello man") "ello man")
(check-expect (string-rest "h") "")

#;
(define (string-rest str)  ;template
  (... str ...))

(define (string-rest str)
  (substring str 1 (string-length str)))