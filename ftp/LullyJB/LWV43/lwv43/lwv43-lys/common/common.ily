\include "italiano.ly"
\version "2.9.2"

%% Staff size
#(set-global-staff-size 16)

\include "common/loop-guile.ily"
\include "common/figured-bass.ily"
\include "common/functions.ily"
\include "common/page-layout.ily"

\layout {
  noindent = 0\mm
  smallindent = 5\mm
  largeindent = 20\mm
  indent = \smallindent

  \context {
    \Score
    \remove "Mark_engraver" 
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
    \consists "Mark_engraver"
  }
  \context {
    \Lyrics
    minimumVerticalExtent = #'(-0 . 0)
  }
}

\includeTweaks

%% Paper size
#(set-default-paper-size (if (*use-letter-paper*)
                             "letter"
                             "a4"))

\paper {
%%$  #(define page-breaking (if precomputed-number-of-lines-per-page
%%$                             precomputed-page-breaks
%%$                             naive-page-breaks))
  #(define page-breaking naive-page-breaks)

  after-title-space = 0.1 \mm
  before-title-space = 0.1 \mm
  between-title-space = 0.1 \mm
  
  between-system-space = 12 \mm

  ragged-bottom = ##t
  ragged-last-bottom = ##t
  annotate-spacing = #(*write-tweaks*)
  \include "common/titling.ily"
  
  page-top-space = #(* 5 mm)
  left-margin = 15\mm
  right-margin = 15\mm
  #(define line-width (- paper-width (* 30 mm)))

  #(define write-page-layout (ly:get-option 'write-tweaks))

  #(define-public book-title (marked-up-title 'balletBookTitleMarkup))
  #(define-public score-title (marked-up-title 'balletScoreTitleMarkup))
  
  #(define make-header (marked-up-headfoot 'balletOddHeaderMarkup 'balletEvenHeaderMarkup))
  #(define make-footer (marked-up-headfoot 'balletOddFooterMarkup 'balletEvenFooterMarkup))
}

\header {
  maintainer = "Nicolas Sceaux"
  maintainerEmail = "nicolas.sceaux@free.fr"
  maintainerWeb = "http://nicolas.sceaux.free.fr"
  copyright = \markup \line { Copyright © 2005-2006 \maintainer }
  longcopyright = \markup \center-align {
    \line { \copyright \hspace #-1 . }
    \line { Licensed under the Creative Commons Attribution 2.5 License }
  }
  
  
  tagline = \markup { 
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-align {
      \small \line { \copyright
                     \with-url #"http://nicolas.sceaux.free.fr" \teeny "<nicolas.sceaux.free.fr>"
                     \hspace #-1 .
                     Typeset using \with-url #"http://www.LilyPond.org" 
                     \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org }
                     #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 .
                   }
      \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org"
                     \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 
                             \teeny .org \hspace #0.5 }
                     • \hspace #0.5 \italic Free to download, with the \italic freedom
                     to distribute, modify and perform. } 

      \teeny \line { Licensed under the Creative Commons Attributio 2.5 License, 
                     for details see: \hspace #-0.5 
                     \with-url #"http://creativecommons.org/licenses/by/2.5" 
                     http://creativecommons.org/licenses/by/2.5 }
    }
  }
}