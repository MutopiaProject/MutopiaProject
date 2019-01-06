% -*- coding: utf-8 -*-
\version "2.12.3"

#( ly:set-option 'point-and-click #f )
#(use-modules (srfi srfi-39))
#(define *use-letter-paper* (make-parameter (ly:get-option 'letter)))

#(set-default-paper-size (if (*use-letter-paper*)
                             "letter"
                             "a4"))

#(define (last-page-score layout props arg)
  (if (chain-assoc-get 'page:last? props #f)
   (interpret-markup layout props arg)
   empty-stencil))

#(define (not-last-page layout props arg)
  (if (not (chain-assoc-get 'page:last? props #f))
   (interpret-markup layout props arg)
   empty-stencil))

#(define (first-page layout props arg)
  (if (chain-assoc-get 'page:first? props #t)
   (interpret-markup layout props arg)
   empty-stencil))

#(define (not-first-page layout props arg)
  (if (not (chain-assoc-get 'page:first? props #f))
   (interpret-markup layout props arg)
   empty-stencil))


bowH =  \once \override Script #'staff-padding = #'1.6
bowXH =  \once \override Script #'staff-padding = #'2.9

