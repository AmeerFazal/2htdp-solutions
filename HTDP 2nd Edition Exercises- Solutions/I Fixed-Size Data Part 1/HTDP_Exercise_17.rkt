;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 17

(require 2htdp/image)

(define (image-classify img)
  (if (> (image-width img)
         (image-height img))
      "wide"
      (if (< (image-width img)
             (image-height img))
          "tall"
          "square")))

(image-classify (square 10 "solid" "red"))
(image-classify (rectangle 10 20 "solid" "red"))
(image-classify (rectangle 230 20 "solid" "red"))