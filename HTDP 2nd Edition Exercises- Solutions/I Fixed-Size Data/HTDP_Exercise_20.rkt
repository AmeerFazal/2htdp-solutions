;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 20

(define (string-delete str i)
  (string-append (substring str 0 i) (substring str (add1 i) (string-length str))))

;; Can string-delete deal with empty strings?
;; Answer : No.

