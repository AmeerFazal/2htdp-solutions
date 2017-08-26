;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 27

;; Constants

(define NUMBER-OF-PEOPLE-FOR-STANDARD-TICKET-PRICE 120)
(define STANDARD-TICKET-PRICE 5.0)
(define AVERAGE-NUMBER-OF-PEOPLE-VARY-FOR-CHANGE-OF-TICKET-PRICE 15)
(define CHANGE-IN-TICKET-PRICE 0.1)
(define FIXED-COST 180)
(define VARIABLE-COST-PER-ATTENDEE 0.04)

;; Functions

(define (attendees ticket-price)
  (- NUMBER-OF-PEOPLE-FOR-STANDARD-TICKET-PRICE
     (* (- ticket-price STANDARD-TICKET-PRICE)
        (/ AVERAGE-NUMBER-OF-PEOPLE-VARY-FOR-CHANGE-OF-TICKET-PRICE CHANGE-IN-TICKET-PRICE))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED-COST (* VARIABLE-COST-PER-ATTENDEE (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
