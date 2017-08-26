;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_34) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 34

;; String -> 1String
;; extracts the first character from a non-empty string
;(define (string-first str) "") ;stub
(check-expect (string-first "hello") "h")
(check-expect (string-first "h") "h")
(check-expect (string-first "man") "m")
#;
(define (string-first str)  ;template
  (... str ...))

(define (string-first str)
  (substring str 0 1))