\version "2.10.3"

\include "LVB_Sonate_111_1_1.ly"
\include "LVB_Sonate_111_1_2.ly"

 \header {
  title = "Piano Sonate Opus 111 (1st Movement)"
  subtitle = "for the pianoforte"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 32 (1st Movement)"
  mutopiacomposer = "BeethovenLv"
  mutopiaopus = "Op. 111"
  mutopiainstrument = "Piano"
  date = "1822"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/August/10"
  version = "2.10.3"
 footer = "Mutopia-2007/08/11-1022"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new PianoStaff <<
 \set PianoStaff.instrumentName = "PIANO  "

 \new Staff = "up" {
 \pianoone
 }

 \new Staff = "down" {
 \pianotwo
 }
>>

 \layout { }

}

\score {

 \unfoldRepeats

 \new PianoStaff <<

 \new Staff = "up" {
 \pianoone
 }

 \new Staff = "down" {
 \pianotwo
 }
>>

 \midi { }

}
