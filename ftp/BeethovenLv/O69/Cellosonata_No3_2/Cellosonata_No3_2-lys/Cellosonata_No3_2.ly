\version "2.6.0"

\include "cello.ly"
\include "pianoone.ly"
\include "pianotwo.ly"

\header {
  title = "Cello Sonata No. 3 in A Major - Opus 69"
  subtitle = "Scherzo"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Cello Sonata No. 3 in A Major, Op. 69"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Cello"
  mutopiaopus = "Op. 69"
  date = "19th Century"
  source = " Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/February/21"
  version = "2.6.0"

  footer = "Mutopia-2006/02/25-684"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 <<

 \context Staff = "one" {
 \cello
 }

 \context PianoStaff <<

 \context Staff = "two" {
 \pianoone
 }

 \context Staff = "three" {
 \pianotwo
 }
>>

 >>

 \layout {
   \context {
   \Staff
   minimumVerticalExtent = #'(-5.0 . 5.0)
   fontSize = #-1
   }
 }

 \midi { \tempo 2 = 150 }

}

\paper {
 linewidth = 18.0\cm
}
