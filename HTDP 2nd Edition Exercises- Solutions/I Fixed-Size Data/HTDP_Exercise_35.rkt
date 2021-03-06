;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_35) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 35

;; String -> 1String
;; extracts the last character from a non-empty string
;(define (string-last str) "") ;stub
(check-expect (string-last "hello") "o")
(check-expect (string-last "h") "h")
(check-expect (string-last "man") "n")

#;
(define (string-last str) ;template
  (... str ...))

(define (string-last str)
  (substring str (sub1 (string-length str)) (string-length str)))