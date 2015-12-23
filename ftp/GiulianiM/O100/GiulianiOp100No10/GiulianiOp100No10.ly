\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 10"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 10. Caprice"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1805"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
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
    \tempo 4 = 92
  }
}
