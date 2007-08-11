\version "2.10.3"

\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornig.ly"
\include "violinoprincipale.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"


\header {
  title = "Concerto for Violin and Orchestra in D Major - Opus 61"
  subtitle = "2nd Movement"
  composer =  "Ludwig van Beethoven"
  mutopiatitle = "Concerto for Violin and Orchestra in D Major (2nd Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Violin and Orchestra"
  mutopiaopus = "Op. 61"
  date = "1806"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/August/10"
  version = "2.10.3"
 footer = "Mutopia-2007/08/11-1021"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\score {

 \new StaffGroup="first"
 <<

 \new Staff = "one" {
 \transposition c
 \clarinetti
 }

 \new Staff = "two" {
 \fagotti
 }

 \new Staff = "three" {
 \transposition g
 \cornig
 }

 \new Staff = "four" {
 \violinoprincipale
 }

 \new Staff = "five" {
 \violinoone
 }

 \new Staff = "six" {
 \violinotwo
 }

 \new Staff = "seven" {
 \viola
 }

 \new Staff = "eight" {
 \violoncello
 }

 \new Staff = "nine" {
 \basso
 }

 >>

 \layout {
 \context { \Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-6.5 . 6.5)
    }
 }

 \midi { }

}

 \paper {
 after-title-space = 2\cm
 left-margin = 2.0\cm
 paper-width = 22\cm
 }
