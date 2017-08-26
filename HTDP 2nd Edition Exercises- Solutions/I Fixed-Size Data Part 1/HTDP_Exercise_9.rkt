;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 9.

(require 2htdp/image)

(define in "hello")

(if (string? in)
    (string-length in)
    (if (image? in)
        (* (image-width in)
           (image-height in))
        (if (number? in)
            (if (<= in 0)
                in
                (sub1 in))
            (if (boolean? in)
                (if in
                    10
                    20)
                in))))
            
