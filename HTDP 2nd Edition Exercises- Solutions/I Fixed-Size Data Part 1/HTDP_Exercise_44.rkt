;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_44) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 44

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
(define Y-CAR 40)
(define tree
  (underlay/xy (circle 10 "solid" "green")
               9 15
               (rectangle 2 20 "solid" "brown")))
(define BACKGROUND (place-image tree 60 Y-CAR (empty-scene WIDTH-OF-WORLD 60)))
(define HALF-CAR-WIDTH (/ (image-width CAR) 2))


; An AnimationState is a Number.
; interpretation the number of clock ticks 
; since the animation started

; AnimationState -> AnimationState
; returns the next AnimationState
(check-expect (tock 4) 7)
(check-expect (tock 45) 48)
(define (tock as)
  (+ as 3))

; AnimationState -> Image
; returns the image after placing the car on the background
; at the appropriate place
(define (render as)
  (place-image CAR as Y-CAR BACKGROUND))
(check-expect (render 10)
              (place-image CAR 10 Y-CAR BACKGROUND))
(check-expect (render 100)
              (place-image CAR 100 Y-CAR BACKGROUND))


; AnimationState -> Boolean
; ends the program if the car leaves the right edge
(define (end? as)
  (> as (+ WIDTH-OF-WORLD (image-width CAR))))
(check-expect (end? 34) #false)
(check-expect (end? (+ WIDTH-OF-WORLD (image-width CAR))) #false)
(check-expect (end? (+ 1 (+ WIDTH-OF-WORLD (image-width CAR)))) #true)

; WorldState Number Number String -> WorldState
; places the car at x-mouse
; if the given me is "button-down" 
(check-expect (hyper 21 10 20 "enter") 21)
(check-expect (hyper 42 10 20 "button-down") 10)
(check-expect (hyper 42 10 20 "move") 42)
(define (hyper x-position-of-car x-mouse y-mouse me)
  (cond
    [(string=? "button-down" me) x-mouse]
    [else
     x-position-of-car]))

; AnimationState -> AnimationState
(define (main as)
  (big-bang as
            (on-tick tock)
            (to-draw render)
            (on-mouse hyper)
            (stop-when end?)
            ))
