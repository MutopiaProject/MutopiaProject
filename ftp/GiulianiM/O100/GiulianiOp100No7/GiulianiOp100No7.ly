\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 7"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 7"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/24-1802"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
}

upperVoice = \relative c' {
  \voiceOne
  r16^\markup{"I"} bes[ d bes] f'[ bes, d bes] |
  r16 a[ c a] f'[ a, c a] |
  \repeat unfold 2 { r16 bes[ d bes] f'[ bes, d bes] | }
  r16^\markup{"III"} bes[ ees bes] g'[ bes, ees bes] |
  r16 bes[ ees bes] g'[ bes, ees bes] |
  r16^\markup{"I"} a[ c a] f'[ a, c a] |
  r16 a[ c a] f'[ a, c a] |
  r16 bes[ d bes] f'[ bes, d bes] |
  r16 c[ ees c] f[ c ees c] |
  r16 bes[ d bes] f'[ bes, d bes] |
  r16 bes[ des bes] g'[ bes, des bes] |
  r16 bes[ d! bes] f'[ bes, d bes] |
  r16 bes[ d bes] f'[ bes, d bes] |
  r16 bes[ c bes] f'[ bes, c bes] |
  r16 a[ c a] f'[ a, c a] |
  r16 bes[ d bes] f'[ bes, d bes] |
  r16 bes[ d bes] f'[ bes, d bes] |
  r16^\markup{"II"} c[ d c] fis[ c d c] |
  r16 c[d c] fis[ c d c] |
  r16^\markup{"III"} bes[ d bes] g'[ bes, d bes] |
  r16 c[ ees c] g[ c ees c] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16 c[ d c] a'[ c, d c] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16^\markup{"II"} a[ d a] fis'[ a, d a] |
  r16 a[ d a] fis'[ a, d a] |
  r16^\markup{"III"} bes[ d bes] g'[ bes, d bes] |
  r16 b[ d b] a'[ b, d b] |
  r16^\markup{"I"} g[ c g] g'[ g, c g] |
  r16 g[ c g] g'[ g, c g] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16 a[ d a] f'[ a, d a] |
  r16 a[ cis a] g'[ a, cis a] |
  r16 a[ cis a] g'[ a, cis a] |
  r16 a[ d a] fis'[ a, d a] |
  r16 a[ d a] fis'[ a, d a] |
  r16 g[ d' g,] g'[ g, d' g,] |
  r16^\markup{"II"} g[ ees' g,] g'[ g, ees' g,] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16 a[ d a] g'[ a, d a] |
  r16 a[ d a] fis'[ a, d a] |
  r16^\markup{"III"} bes[ d bes] g'[ bes, d bes] |
  r16 bes[ d bes] r16 bes[ d bes] |
  r16 bes[ d bes] g'[ bes, d bes] |
  r16 bes[ d bes] r16 bes[ d bes] |
  <bes d g>2
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  bes2 |
  f'2 |
  d2 |
  bes2 |
  ees2 |
  ees2 |
  f2 |
  ees2 |
  d2 |
  a2 |
  bes2 |
  e2 |
  \repeat unfold 4 { f2 | }
  bes,2 |
  bes2 |
  a2 |
  a2 |
  \repeat unfold 3 { g2 | }
  g'2 |
  fis2 |
  g2 |
  \repeat unfold 3{ d2 | }
  f!2 |
  ees2 |
  ees2 |
  d2 |
  d2 |
  e2 |
  a,2 |
  d2 |
  c!2 |
  bes2 |
  c2 |
  \repeat unfold 4 { d2 | }
  g,2 |
  g'4 d |
  g,2 |
  g'4 d |
  g,2
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegretto."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key bes \major
      \time 2/4
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
    }
  }
}
