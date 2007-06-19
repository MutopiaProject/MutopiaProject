\version "2.10.3"

\include "clarinetti.ly"
\include "corni.ly"
\include "fagotti.ly"

\header {
  title = "Marsch - WoO 29"
  subtitle = "for 2 Clarinets, 2 Horns and 2 Fagotti"
  composer =  "Ludwig van Beethoven"
  mutopiatitle = "Marsch - WoO 29"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Wind Ensemble"
  mutopiaopus = "WoO 29"
  date = "1807"
  source = "Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/June/15"
  version = "2.10.3"
 footer = "Mutopia-2007/06/19-991"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\score {

 \new StaffGroup {
 <<

 \new Staff = "one" {
 \clarinetti
 }

 \new Staff = "two" {
 \corni
 }

 \new Staff = "three" {
 \fagotti
 }

 >>
 }

 \layout { }

}


\score {

 \unfoldRepeats

 \new StaffGroup {
 <<

 \new Staff = "one" {
 \transposition bes
 \clarinetti
 }

 \new Staff = "two" {
 \transposition bes
 \corni
 }

 \new Staff = "three" {
 \fagotti
 }

 >>
 }

 \midi { }

}

 \paper {
 after-title-space = 2\cm
 left-margin = 2.0\cm
 paper-width = 22\cm
 }
