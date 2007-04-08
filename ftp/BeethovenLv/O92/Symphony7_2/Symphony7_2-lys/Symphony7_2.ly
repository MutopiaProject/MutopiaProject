\version "2.6.0"

\include "flauti.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "corni.ly"
\include "trombe.ly"
\include "timpani.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "basso.ly"

\header {
  title = "Symphony No. 7 in A Major, Op. 92"
  subtitle = "Allegretto"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Symphony No. 7 in A Major, Op. 92"
  mutopiacomposer = "Ludwig van Beethoven"
  mutopiapoet = "Ludwig van Beethoven"
  mutopiainstrument = "orchestra"
  date = "1811-12"
  source = "Dover Publications - Litolff Verlag"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/August/17"
  version = "2.6.0"
  
  footer = "Mutopia-2005/08/21-595"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context StaffGroup <<

 \context Staff = "one" {
 \flauti
 }

 \context Staff = "two" {
 \oboi
 }

 \context Staff = "three" {
 \transposition a'
 \clarinetti
}

 \context Staff = "four" {
 \fagotti
 }

 \context Staff = "five" {
 \transposition e'
 \corni
 }

 \context Staff = "six" {
 \transposition a'
 \trombe
 }

 \context Staff = "seven" {
 \timpani
 }

 \context Staff = "eight" {
 \violinoone
 }

 \context Staff = "nine" {
 \violinotwo
 }

 \context Staff = "ten" {
 \viola
 }

 \context Staff = "eleven" {
 \violoncello
 }

 \context Staff = "twelve" {
 \basso
 }

>>

 \layout {
   \context {
   \Staff
   minimumVerticalExtent = #'(-4.0 . 3.5)
   \override TextScript #'padding = #1.5
   \override DynamicLineSpanner #'padding = #1.0
   }
 }

 \midi { \tempo 4 = 76 }

}

\paper {
 linewidth = 17.0\cm
}