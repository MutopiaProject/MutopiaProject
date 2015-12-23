\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 7"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 7"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1802"
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
    \tempo 4 = 96
  }
}
