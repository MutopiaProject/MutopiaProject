\version "2.10.3"

\include "clarinetto.ly"
\include "violoncello.ly"
\include "pianoone.ly"
\include "pianotwo.ly"

\header {
  title = "Piano Trio Opus 11 (1st Movement)"
  subtitle = "for Pianoforte, Clarinet or Violin and Violoncello"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Piano Trio Opus 11 (1st Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Clarinet, 'Cello and Piano"
  mutopiaopus = "Op. 11"
  date = "1798"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/December/29"
  version = "2.10.3"
 footer = "Mutopia-2007/12/29-1197"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 <<

 \context Staff = "one" {
 \transposition bes
 \clarinetto
 }

 \context Staff = "two" {
 \violoncello
 }

 \context PianoStaff <<

 \context Staff = "three" {
 \pianoone
 }

 \context Staff = "four" {
 \pianotwo
 }
>>

 >>

 \layout {
 \context { \Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . -0.5)
    }
 }

 \midi { }

}

 \paper {
 after-title-space = 1\cm
 top-margin = 0\cm
 bottom-margin = 0.5\cm
 left-margin = 1.5\cm
 paper-width = 22\cm
 }
