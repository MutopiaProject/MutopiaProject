\version "2.16.0"
\header {
  title = "Rondo Alla Turca"
  subtitle = "Turkish March"
  composer = "W. A. Mozart"
  piece = "Allegretto"
  mutopiatitle = "Sonate Opus KV 331 - Rondo Alla Turca"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  mutopiaopus = "KV 331"
  style = "Classical"
  copyright = "Public Domain"
  source = "IMSLP"

  maintainer = "Rune Zedeler and Chris Sawer"
  maintainerEmail = "chris@mutopiaproject.org"

 footer = "Mutopia-2013/06/24-108"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "KV331_3_RondoAllaTurcaNotes.ly"

\score {
  \new PianoStaff
  <<
    \new Staff {
      \time 2/4
      
      \right
    }
    \new Dynamics {
      \override DynamicTextSpanner #'style = #'none
      \dynamics
    }
    \new Staff {
      \left
    }
  >>
  \layout {}
  \midi {}
}
