\version "2.10.3"

\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"


\header {
  title = "String Quartet Opus 59 No. 3 - Part II"
  subtitle = "dedicated to Prince Rassoumovsky"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "String Quartet Opus 59 No. 3 - Part II"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "String Quartet"
  mutopiaopus = "Op. 59"
  date = "1817"
  source = "Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/September/30"
  version = "2.10.3"
 footer = "Mutopia-2008/07/17-1041"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



\score {

 \new StaffGroup {
 <<

 \context Staff = "one" {
 \violinoone
 }

 \context Staff = "two" {
 \violinotwo
 }

 \context Staff = "three" {
 \viola
 }

 \context Staff = "four" {
 \violoncello
 }

 >>
 }

 \layout { }

}



\score {

 \unfoldRepeats

 \new StaffGroup {
 <<

 \context Staff = "one" {
 \violinoone
 }

 \context Staff = "two" {
 \violinotwo
 }

 \context Staff = "three" {
 \viola
 }

 \context Staff = "four" {
 \violoncello
 }

 >>
 }

 \midi { }

}

