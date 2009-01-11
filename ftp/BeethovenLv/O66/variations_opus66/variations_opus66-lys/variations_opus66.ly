\version "2.10.3"

\include "cello.ly"
\include "pianoone.ly"
\include "pianotwo.ly"

\header {
  title = "Variations - Opus 66"
  subtitle = "for piano and violoncello"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Variations - Opus 66"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Cello and Piano"
  mutopiaopus = "Op. 66"
  date = "1798"
  source = "Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/July/22"
  version = "2.10.3"
 footer = "Mutopia-2007/07/24-1008"
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

 \layout { }

 \midi { }

}

 \paper {
 %after-title-space = 2\cm
 %left-margin = 2.0\cm
 %paper-width = 22\cm
 }
