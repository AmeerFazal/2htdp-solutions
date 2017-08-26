;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 4.

(define str "helloworld")
(define i 5)

; Removing w in str

(string-append (substring str 0 5) (substring str 6 (string-length str)))

;; Clearly this expression creates a shorter string than the given one.
;; Which values for i are legitimate?

;; Answer : i value from 0 to (string-length str)