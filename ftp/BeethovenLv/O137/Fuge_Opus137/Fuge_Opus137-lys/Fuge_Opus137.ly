\version "2.10.3"

\include "violinoone.ly"
\include "violinotwo.ly"
\include "violaone.ly"
\include "violatwo.ly"
\include "violoncello.ly"

\header {
  title = "Fuge - Opus 137"
  subtitle = "fur 2 Violinen, 2 Bratschen und Violoncell"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Fuge - Opus 137"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "String Quintet: Violins, Violas, 'Cello"
  mutopiaopus = "Op. 137"
  date = "1817"
  source = "Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/January/18"
  version = "2.10.3"
 footer = "Mutopia-2007/02/19-930"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\score {

 \new StaffGroup {
 <<

 \new PianoStaff <<
 \context Staff = "one" {
 \violinoone
 }

 \context Staff = "two" {
 \violinotwo
 }
 >>

 \new PianoStaff <<
 \context Staff = "three" {
 \violaone
 }

 \context Staff = "four" {
 \violatwo
 }
 >>

 \context Staff = "five" {
 \violoncello
 }

 >>
 }

 \layout {
 \context { \Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-6.5 . 6.5)
    }
 }

 \midi { }

}

 \paper {
 left-margin = 1.5\cm
 paper-width = 22\cm
 }
