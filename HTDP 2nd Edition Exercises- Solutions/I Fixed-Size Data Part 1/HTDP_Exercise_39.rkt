;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_39) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 39

(require 2htdp/image)
(require 2htdp/universe)

;; Constants

(define WIDTH-OF-WORLD 200)
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define WHEEL (circle WHEEL-RADIUS "solid" "black"))
(define SPACE (rectangle (* WHEEL-RADIUS 3) WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS (beside WHEEL SPACE WHEEL))
(define CAR (above (rectangle (* WHEEL-RADIUS 4) (* WHEEL-RADIUS 2) "solid" "red")
                   (rectangle (* WHEEL-RADIUS 9) (* WHEEL-RADIUS 3) "solid" "red")
                   BOTH-WHEELS))


; A WorldState is a Number.
; interpretation the number of pixels between
; the left border of the scene and the car

; WorldState -> WorldState 
; moves the car by 3 pixels for every clock tick
(check-expect (tock 20) 23)
(check-expect (tock 78) 81)
(define (tock ws)
  (+ ws 3))

