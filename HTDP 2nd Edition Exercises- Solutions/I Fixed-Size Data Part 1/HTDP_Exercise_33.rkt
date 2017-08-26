;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HTDP_Exercise_33) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; How To Design Programs, 2nd Edition 
;; Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi
;; Link to the text book : http://homedirs.ccs.neu.edu/matthias/HtDP2e/

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal
;; Exercise 33
;; Research the “year 2000” problem and what it meant for software developers.

;; The Year 2000 problem, also known as the Y2K problem, the Millennium bug, the Y2K bug, or Y2K,
;; is a class of computer bugs related to the formatting and storage of calendar data for dates
;; beginning in the year 2000. Problems were anticipated, and arose, because twentieth-century software
;; often represented the four-digit year with only the final two digits—making the year 2000
;; indistinguishable from 1900. The assumption of a twentieth-century date in such programs caused various errors,
;; such as the incorrect display of dates and the inaccurate ordering of automated dated records or real-time events.
;; In 1997 the British Standards Institute (BSI) developed standard DISC PD2000-1 defining
;; "Year 2000 Conformity requirements" as four rules: (1) No valid date will cause any interruption in operations;
;; (2) Calculation of durations between, or the sequence of, pairs of dates will be correct whether any dates
;; are in different centuries; (3) In all interfaces and in all storage, the century must be unambiguous,
;; either specified, or calculable by algorithm; (4) Year 2000 must be recognised as a leap year.

;; It identifies two problems that may exist in many computer programs.
;; First, the practice of representing the year with two digits became problematic with logical error(s)
;; arising upon "rollover" from x99 to x00. This had caused some date-related processing to operate incorrectly
;; for dates and times on and after 1 January 2000, and on other critical dates which were billed "event horizons".
;; Without corrective action, long-working systems would break down when the "... 97, 98, 99, 00 ..." ascending
;; numbering assumption suddenly became invalid.

;; Secondly, some programmers had misunderstood the Gregorian calendar rule that determines whether
;; years that are exactly divisible by 100 are not leap years, and assumed the year 2000 would not be a leap year.
;; Years divisible by 100 are not leap years, except for years that are divisible by 400.
;; Thus the year 2000 was a leap year.

;; Companies and organisations worldwide checked, fixed, and upgraded their computer systems to
;; address the anticipated problem.

;; Very few computer failures were reported when the clocks rolled over into 2000.
;; It is not known how many problems went unrecorded

;; From wikipedia : https://en.wikipedia.org/wiki/Year_2000_problem