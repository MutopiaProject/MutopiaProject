\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 10"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 10. Caprice"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/12/05-1805"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
}

upperVoice = \relative c' {
  \voiceOne
  r16 g[ c g] r g[ d' g,] |
  r16 g[ e' g,] r g[ c g] |
  r16 g[ f' g,] r g[ e' g,] |
  r16 g[ d' g,] r g[ cis g] |
  %
  r16 g[ d' g,] r g[ e' g,] |
  r16 g[ f' g,] r g[ d' g,] |
  r16 g[ g' g,] r g[ f' g,] |
  r16 g[ e' g,] r g[ g' g,] |
  r16 g[ b g] r g[ c g] |
  r16 g[ f' g,] r g[ e' g,] |
  %
  r16 g[ b g] r g[ c g] |
  r16 g[ f' g,] r g[ e' g,] |
  r16 g[ e' g,] r g[ e' g,] |
  r16 g[ e' g,] r g[ e' g,] |
  r16 g[ b g] r^\markup{"II"} fis[ a fis] |
  r16^\markup{"I"} b,[ g' b,] r d[ b' d,] |
  %
  r16 b[ g' b,] r d[ b' d, ] |
  r16 b[ g' b,] r e[ c' e,] |
  r16 d[ b' d,] r c[ a' c,] |
  r16 b[ g' b,] r c'[ e c] |
  r16^\markup{"II"} b\3[ d\2 b\3] r^\markup{"I"} a[ c a] |
  %
  r16 g[ b g] r g[ b g] |
  r16 a[ c a] r fis [ a fis] |
  g4^\markup{"I"} r16 ais [ c ais] |
  r16 a[ d a] r a[ e' a,] |
  r16^\markup{"I"} a[ f' a,] r g[ b g] |
  r16 g[ c g] r g[ d' g,] |
  %
  r16 g[ e' g,] r gis[ d' e] |
  r16 a,[ c e] r gis,[ d' e] |
  r16 a,[ c e] r f,[ a d] |
  r16 e,[ g c] r d,[ g b] |
  r16 e,[ g c] r bes[ cis bes^\markup{"II"} ] |
  %
  r16 a[ d a] r a[ g' a,] |
  r16^\markup{"I"} a[ f' a,] r fes[ g! fes] | % fes as original
  r16 g[ c g] r g[ f' g,] |
  r16 g[ c e] r b[ d\3 e] |
  r16 a,[ c e] r b\3[ d\2 e] |
  r16 a,[ c e] r f,[ a d] |	% check other sources
  %
  r16 e,[ g b] r d,[ g b] |	% e,[ g c] ??? corrected manually
  r16 e,[ g c] r f,[ a c] |
  r16 e,[ g c] r f,[ aes b] |
  r16 e,[ g c] r f,[ a! c] |
  r16 e,[ g c] r f,[ aes b] |
  %
  \repeat unfold 4 { r16 e,[ g c] r e,[ g e'] | }
  <e, g c>2
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  e4 b |
  c4 e |
  d4 c |
  b4 ais |			% b4 or c4?
  %
  b4 c |
  d4 b |
  d4 d |
  c4 e |
  f4 e |
  d4 c |
  %
  f4 e |
  b4 c |
  c4 c |
  c4 c |
  d4 d\5 |
  g,4 g |
  %
  \repeat unfold 5 { g4 g | }
  %
  g4 e' |
  c4 d\5^\markup{"II"} |
  g,4 g'\4^\markup{"II"} |
  f!4 cis |
  d4 f |
  e4 b |
  %
  c4 b |
  a4 b |
  a4 f |
  g4 g |
  c4 g' |
  %
  f4 cis |
  d4 f |
  e4 b |
  c4 gis |
  a4 bis |
  a4 f |
  %
  g!4 g |
  \repeat unfold 4 { c4 c | }
  %
  \repeat unfold 4 { c4 c | }
  c2
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Vivace."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key c \major
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
      tempoWholesPerMinute = #(ly:make-moment 92 4)
    }
  }
}
