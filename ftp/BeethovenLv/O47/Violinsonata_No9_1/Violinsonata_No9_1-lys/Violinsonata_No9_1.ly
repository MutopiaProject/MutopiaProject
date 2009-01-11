\version "2.10.3"

\include "violin.ly"
\include "pianoone.ly"
\include "pianotwo.ly"

\header {
  title = "Violin Sonata No. 9 in A Minor - Opus 47"
  subtitle = "Kreutzer Sonata"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Violin Sonata No. 9 in A Minor, 1st Movement: Adagio sostenuto - Presto - Adagio"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Violin and Piano"
  mutopiaopus = "Op. 47"
  date = "1802-1803"
  source = "Breitkopf and Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/February/03"
  version = "2.10.3"
 footer = "Mutopia-2007/02/05-922"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 <<

 \new Staff = "one" {
 \violin
 }

 \new PianoStaff <<
 \set PianoStaff.instrumentName = "PIANO  "

 \new Staff = "two" {
 \pianoone
 }

 \new Staff = "three" {
 \pianotwo
 }
>>

 >>

 \layout { }

}

\score {

 \unfoldRepeats

 <<

 \new Staff = "one" {
 \violin
 }

 \new PianoStaff <<

 \new Staff = "two" {
 \pianoone
 }

 \new Staff = "three" {
 \pianotwo
 }
>>

 >>

 \midi { }

}

 \paper {
 bottom-margin = 1\cm
 left-margin = 1.5\cm
 paper-width = 22\cm
 }
