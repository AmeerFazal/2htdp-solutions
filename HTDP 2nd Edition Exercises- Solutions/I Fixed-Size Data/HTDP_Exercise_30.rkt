;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 30
;; Determine the potential profit for these ticket prices: $1, $2, $3, $4, and $5.
;; Which price maximizes the profit of the movie theater? Determine the best ticket price to a dime.
;; Define constants for the price optimization program at the movie theater
;; so that the price sensitivity of attendance
;; (15 people for every 10 cents) becomes a computed constant. 

;; Constants

(define NUMBER-OF-PEOPLE-FOR-STANDARD-TICKET-PRICE 120)
(define STANDARD-TICKET-PRICE 5.0)
(define AVERAGE-NUMBER-OF-PEOPLE-VARY-FOR-CHANGE-OF-TICKET-PRICE 15)
(define CHANGE-IN-TICKET-PRICE 0.1)
(define VARIABLE-COST-PER-ATTENDEE 1.50)
(define PRICE-SENSITIVITY (/ AVERAGE-NUMBER-OF-PEOPLE-VARY-FOR-CHANGE-OF-TICKET-PRICE CHANGE-IN-TICKET-PRICE))

;; Functions

(define (attendees ticket-price)
  (- NUMBER-OF-PEOPLE-FOR-STANDARD-TICKET-PRICE
     (* (- ticket-price STANDARD-TICKET-PRICE)
        PRICE-SENSITIVITY)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* VARIABLE-COST-PER-ATTENDEE (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1)
;; -360
(profit 2)
;; 285
(profit 2.9)
;; 609
(profit 3)
;; 630
(profit 4)
;; 675
(profit 5)
;; 420



(define (profit2 price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
        (* 1.50
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price))))))

(profit2 1)
;; -360
(profit2 2)
;; 285
(profit2 2.9)
;; 609
(profit2 3)
;; 630
(profit2 4)
;; 675
(profit2 5)
;; 420

;; Both functions produce the same results