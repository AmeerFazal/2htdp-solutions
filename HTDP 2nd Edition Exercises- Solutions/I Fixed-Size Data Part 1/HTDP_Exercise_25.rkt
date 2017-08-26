;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_25) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 25

(require 2htdp/image)

(define (image-classify img)
  (cond
    [(> (image-height img) (image-width img))
     "tall"]
    [(= (image-height img) (image-width img))
     "square"]
    [(< (image-height img) (image-width img))
     "wide"]))
(image-classify (circle 3 "solid" "red"))

;; Does the stepping suggest how to fix this attempt?
;; Answer : Yes. The first conditional expression should be
;; > and last should be < instead of >= and <= respectively. 