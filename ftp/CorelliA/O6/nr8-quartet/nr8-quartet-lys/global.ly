\version "2.16.0"
\include "english.ly"

padtext = \override TextScript   #'padding = #'1.5
padbarnos = \override Score.BarNumber   #'padding = #'2.0

textUp = \override TextScript   #'direction = #1

pesp = \markup {\dynamic p \italic espress.}
mfesp = \markup {\dynamic mf \italic espress.}

\header {
\include "header.ly"
 footer = "Mutopia-2012/12/09-298"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
