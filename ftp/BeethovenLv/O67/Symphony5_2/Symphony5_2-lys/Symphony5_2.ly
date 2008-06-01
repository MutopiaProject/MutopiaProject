\version "2.10.3"

\include "flauti.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornic.ly"
\include "trombec.ly"
\include "timpani.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"


\header {
  title = "Symphony No. 5 - Opus 67 ( 2nd Movement )"
  composer =  "Ludwig van Beethoven"
  mutopiatitle = "Symphony No. 5 - Opus 67 (2nd Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Orchestra"
  mutopiaopus = "Op. 67"
  date = "1807/08"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2008/May/31"
  version = "2.10.3"
 footer = "Mutopia-2008/06/01-1437"
 tagline = ""
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\score {

 \new StaffGroup {
 <<

 \new Staff = "one" {
 \flauti
 }

 \new Staff = "two" {
 \oboi
 }

 \new Staff = "three" {
 \transposition bes
 \clarinetti
 }

 \new Staff = "four" {
 \fagotti
 }

 \new Staff = "five" {
 \cornic
 }

 \new Staff = "six" {
 \trombec
 }

 \new Staff = "seven" {
 \timpani
 }

 \new PianoStaff <<
 \new Staff = "eight" {
 \violinoone
 }

 \new Staff = "nine" {
 \violinotwo
 }
 >>

 \new Staff = "ten" {
 \viola
 }

 \new PianoStaff <<
 \new Staff = "eleven" {
 \violoncello
 }

 \new Staff = "twelve" {
 \basso
 }
 >>

 >>
 }

 \layout {
 indent = 3.0\cm
 }

 \midi { }

}

 \paper {
 after-title-space = 2\cm
 }
