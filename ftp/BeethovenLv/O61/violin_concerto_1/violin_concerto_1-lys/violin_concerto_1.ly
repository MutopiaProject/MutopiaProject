\version "2.10.3"

\include "flauto.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornid.ly"
\include "trombed.ly"
\include "timpani.ly"
\include "violinoprincipale.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"


\header {
  title = "Concerto for Violin and Orchestra in D Major - Opus 61"
  subtitle = "1st Movement"
  composer =  "Ludwig van Beethoven"
  mutopiatitle = "Concerto for Violin and Orchestra in D Major (1st Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Violin and Orchestra"
  mutopiaopus = "Op. 61"
  date = "1806"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/June/16"
  version = "2.10.3"
 footer = "Mutopia-2007/06/19-990"
% tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
 tagline = ""
}


\score {


 \new StaffGroup="first"
 <<

 \new Staff = "one" {
 \flauto
 }

 \new Staff = "two" {
 \oboi
 }

 \new Staff = "three" {
 \transposition a
 \clarinetti
 }

 \new Staff = "four" {
 \fagotti
 }

 \new Staff = "five" {
 \transposition d
 \cornid
 }

 \new Staff = "six" {
 \transposition d
 \trombed
 }

 \new Staff = "seven" {
 \timpani
 }

 \new Staff = "eight" {
 \violinoprincipale
 }

 \new PianoStaff <<
 \new Staff = "nine" {
 \violinoone
 }

 \new Staff = "ten" {
 \violinotwo
 }
 >>

 \new Staff = "eleven" {
 \viola
 }

 \new PianoStaff <<
 \new Staff = "twelve" {
 \violoncello
 }

 \new Staff = "thirteen" {
 \basso
 }
 >>

 >>

 \layout { }

 \midi { }

}

 \paper {
 after-title-space = 2\cm
 left-margin = 2.0\cm
 paper-width = 22\cm
 }
