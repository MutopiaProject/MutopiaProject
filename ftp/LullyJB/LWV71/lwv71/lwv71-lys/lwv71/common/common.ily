\include "italiano.ly"
\version "2.11.17"

%% Staff size
#(set-global-staff-size 16)
#(ly:set-option 'point-and-click #f)

\include "common/loop-guile.ily"
\include "common/book-page-layout.ily"
\include "common/book-page-dumps.ily"
\include "common/book-toc.ily"
\include "common/functions.ily"

\layout {
  noindent = 0\mm
  smallindent = 10\mm
  largeindent = 25\mm
  indent = \smallindent

  \context {
    \Score
    \override BarNumber #'padding = #2 
    \override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0))
    \accepts "StaffGroupNoBar"
  }
  \context {
    \StaffGroup
    \name StaffGroupNoBar
    \description "Like StaffGroup, but without spanbar"
    \remove "Span_bar_engraver"
    \accepts "StaffGroupNoBracket"
  }
  \context {
    \StaffGroup
    \name StaffGroupNoBracket
    \description "Like StaffGroup, but without brackets"
    \remove "System_start_delimiter_engraver"
  }
  \context {
    \Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
  }
}

\includePageLayoutFile
\includePageIndexFile

%% Paper size
#(set-default-paper-size (if (*use-letter-paper*)
                             "letter"
                             "a4"))

\paper {
  after-title-space = 10 \mm
  before-title-space = 10 \mm
  between-title-space = 0.1 \mm
  
  between-system-space = 12 \mm

  ragged-bottom = ##f
  ragged-last-bottom = ##t
  annotate-spacing = #(ly:get-option 'dump-tweaks)
  \include "common/titling.ily"
  
  page-top-space = #(* 5 mm)
  left-margin = 15\mm
  right-margin = 15\mm
  #(define line-width (- paper-width (* 30 mm)))

  #(define-public book-title (marked-up-title 'balletBookTitleMarkup))
  #(define-public score-title (marked-up-title 'balletScoreTitleMarkup))
  
  #(define make-header (marked-up-headfoot 'balletOddHeaderMarkup 'balletEvenHeaderMarkup))
  #(define make-footer (marked-up-headfoot 'balletOddFooterMarkup 'balletEvenFooterMarkup))
}

\header {
  maintainer = "Nicolas Sceaux"
  maintainerEmail = "nicolas.sceaux@free.fr"
  maintainerWeb = "http://nicolas.sceaux.free.fr"
  copyright = \markup \custom-copyright
  longcopyright = \markup \center-align {
    \line { \copyright \hspace #-1 . }
    \line { Licensed under the Creative Commons Attribution 2.5 License }
  }
  
  tagline = \markup { 
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-align {
      \small \line { 
        \copyright
        \with-url #"http://nicolas.sceaux.free.fr" \teeny "<nicolas.sceaux@free.fr>"
        \hspace #-1 .
        Typeset using \with-url #"http://www.LilyPond.org" 
        \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org }
        #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 .
      }
      \small \line {
        Sheet music from \with-url #"http://www.MutopiaProject.org"
        \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 
                \teeny .org \hspace #0.5 }
        • \hspace #0.5 \italic Free to download, with the \italic freedom
        to distribute, modify and perform. } 
      
      \teeny \line { 
        Licensed under the Creative Commons Attributio 2.5 License, 
        for details see: \hspace #-0.5 
        \with-url #"http://creativecommons.org/licenses/by/2.5" 
        http://creativecommons.org/licenses/by/2.5 }
    }
  }
}