;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

;; Exercise 5.

(require 2htdp/image)

;; Automobile

(define CAR-SIZE 50)

(above  (rectangle (* CAR-SIZE 5) (* CAR-SIZE 2) "solid" "yellow")
        (rectangle (* CAR-SIZE 9) (* CAR-SIZE 3) "solid" "green")
        (beside (circle CAR-SIZE "solid" "black")
                (rectangle (* CAR-SIZE 3) 1 "solid" "white")
                (circle CAR-SIZE "solid" "black")))


;; Boat

(define BOAT-SIZE 100)

(overlay/align "center"
               "top"
               (overlay/align "middle"
                              "middle"
                              (beside (rotate 90 (triangle BOAT-SIZE "solid" "blue"))
                                      (rectangle (/ BOAT-SIZE 13) BOAT-SIZE "solid" "black"))
                              (ellipse (* BOAT-SIZE 3) BOAT-SIZE "solid" "white"))
               (ellipse (* BOAT-SIZE 3) (* BOAT-SIZE 2) "solid" "brown"))



;; Tree

(define TREE-SIZE 100)
(above (circle TREE-SIZE "solid" "green")
       (rectangle (/ TREE-SIZE 10)
                  TREE-SIZE
                  "solid"
                  "brown"))
