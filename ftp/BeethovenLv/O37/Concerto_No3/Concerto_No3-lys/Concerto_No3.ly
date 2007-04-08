\version "2.10.0"

\include "flauti.ly"
\include "oboi.ly"
\include "clarinetti.ly"
\include "fagotti.ly"
\include "cornies.ly"
\include "trombe.ly"
\include "timpani.ly"
\include "pianoone.ly"
\include "pianotwo.ly"
\include "violinoone.ly"
\include "violinotwo.ly"
\include "viola.ly"
\include "bassi.ly"

\header {
  title = "Piano Concerto No. 3 in C Minor, Opus 37"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Piano Concerto No. 3 in C Minor (1st Movement: Allegro con brio)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano and Orchestra"
  date = "19th Century"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/December/28"
  version = "2.6.0"
 footer = "Mutopia-2006/12/29-899"
 tagline = ""
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 <<

 \context StaffGroup = "firstsystem" <<

 \context Staff = "one" {
 \flauti
}

 \context Staff = "two"  {
 \oboi
 }

 \context Staff = "three" {
 \transposition bes'
 \clarinetti
}

 \context Staff = "four" {
 \fagotti
 }

 \context Staff = "five"  {
 \transposition ees
 \cornies 
 }

 \context Staff = "six"  {
 \trombe
 }

 \context Staff = "seven" {
 \timpani
 }
 >>

 \context PianoStaff <<

 \context Staff = "eight"  {
 \pianoone
 }

 \context Staff = "nine"  {
 \pianotwo
 }
>>

 \context StaffGroup = "secondsystem" <<

 \context Staff = "ten"  {
 \violinoone
 }

 \context Staff = "eleven"  {
 \violinotwo
 }

 \context Staff = "twelve"  {
 \viola
 }

 \context Staff = "thirteen"  {
 \bassi
 }
>>

 >>

 \layout {
   \context {
   \Staff
   \override VerticalAxisGroup #'minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-1
   }
 }

 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 132 4)
      }
    }



}

\paper {
 line-width = 18.0\cm
}
