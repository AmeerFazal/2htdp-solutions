;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_36) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 36

(require 2htdp/image)
;; Image -> Number
;; counts the number of pixels in a given image
;(define (image-area img) 0) ;stub
(check-expect (image-area (square 10 "solid" "red")) 100)
(check-expect (image-area (circle 10 "solid" "red")) 400)
(check-expect (image-area (rectangle 10 20 "solid" "red")) 200)
(check-expect (image-area empty-image) 0)

#;
(define (image-area img) ;template
  (... img ...))

(define (image-area img)
  (* (image-width img)
     (image-height img)))