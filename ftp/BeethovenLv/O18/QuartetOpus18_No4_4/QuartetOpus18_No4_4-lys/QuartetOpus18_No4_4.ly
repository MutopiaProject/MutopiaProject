\version "2.7.40"

\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "cello.ly"

\header {
  title = "Quartet No. 4 in C Minor - Opus 18 No. 4"
  subtitle = "Allegro - Prestissimo"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Quartet No. 4 in C Minor: 4. Allegro - Prestissimo"
  mutopiaopus = "Op. 18 No. 4"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "String Quartet: Violins, Viola, 'Cello"
  date = "18th Century"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/July/30"
 footer = "Mutopia-2006/07/30-793"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {


 <<

 \context StaffGroup = "firstsystem" <<

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
 \cello
 }
>>

 >>

 \layout {
   \context {
   \Staff
   \override VerticalAxisGroup #'minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-2
   }
 }

}

\score {


 \unfoldRepeats

 <<

 \context StaffGroup = "firstsystem" <<

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
 \cello
 }
>>

 >>


 \midi { \tempo 2 = 136 }

}

\paper {
 line-width = 18.0\cm
}
