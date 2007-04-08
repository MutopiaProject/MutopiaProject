\version "2.10.0"

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
\include "cello.ly"
\include "basso.ly"

\header {
  title = "Symphony No. 7 in A Major, Opus 92"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Symphony No. 7 in A Major, Opus 92"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Orchestra"
  date = "1812"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/November/20"
  version = "2.6.0"
 footer = "Mutopia-2006/12/21-891"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 <<

 \context StaffGroup = "firstsystem" <<

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
 >>

 \context StaffGroup = "secondsystem" <<

 \context Staff = "five" {
 \transposition a'
 \corni
 }

 \context Staff = "six" {
 \transposition a'
 \trombe
 }

 \context Staff = "seven" {
 \timpani
 }
 >>

 \context StaffGroup = "thirdsystem" <<

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
 \cello
 }

 \context Staff = "twelve" {
 \basso
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

}

\score {

 \unfoldRepeats

 <<

 \context StaffGroup = "firstsystem" <<

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
 >>

 \context StaffGroup = "secondsystem" <<

 \context Staff = "five" {
 \transposition a'
 \corni
 }

 \context Staff = "six" {
 \transposition a'
 \trombe
 }

 \context Staff = "seven" {
 \timpani
 }
 >>

 \context StaffGroup = "thirdsystem" <<

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
 \cello
 }

 \context Staff = "twelve" {
 \basso
 }
>>

 >>

 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 56 4)
      }
    }



}

\paper {
 line-width = 18.0\cm
}
