\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 2"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 2"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1797"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
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

%mbreak = \break
mbreak = {}

upperVoice = \relative c' {
  \voiceOne
%  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
%  \mark "Grazioso"
  \set minimumFret = 3
  r8^\markup{"III"} g[ b] d[ b g] |
  r8 fis[ c'] d[ c fis,] |
  r8 g[ b] d[ b g] |
  \set minimumFret = 0
  r8^\markup{"I"} g[ d'] g[ d g,] |
  \mbreak
  r8 g[ c] e[ c g]
  r8 a[ cis] g'[ cis, a] |
  r8 a[ d] fis[ d a] |
  r8 a[ d] fis[ d a] |
  r8 g[ d'] g[ d g,] |
  \mbreak
  r8 g[ b] g'![ b, g] |		% forced natural to match source
  r8 g[ c] e[ c g] |
  \set minimumFret = 3
  r8^\markup{"III"} bes[ e] g[ e bes] |
  \set minimumFret = 0
  r8 b!\3[ d] g[ d b\3] |		% forced natural to match source
  r8^\markup{"I"} a[ d] fis[ d a] |
  \mbreak
  r8 g[ b] g'[ b, g] |
  r8 a[ b] fis'[ b, a] |
  r8 g[ b] e[ b g] |
  r8 a[ b] fis'[ b, a] |
  r8 g[ b] g'[ b, g] |
  \mbreak
  r8 g[ b] e[ b g] |
  r8 a[ c] e[ c a] |
  r8 a[ c] e[ c a] |
  r8 g[ b] e[ b g] |
  r8 g[ b] e[ b g] |
  \mbreak
  r8 a[ b] fis'[ b, a] |
  r8 a[ b] fis'[ b, a] |
  r8 g[ b] g'[ b, g] |
  r8 a[ c] fis[ c a] |
%  \set minimumFret = 2
  r8^\markup{"II"} g[ b] e[ b g] |
  \mbreak
  r8 fis[ b\3] dis[ b\3 fis] |
  r8 g[ b] e[ b g] |
  \set minimumFret = 3
  r8^\markup{"III"} b[ d] e\1[ d b] |
  \set minimumFret = 0
  r8^\markup{"I"} a[ c] e[ c a] |
  r8 g[ cis] e[ cis g] |
  \mbreak
%  \set minimumFret = 2
  r8^\markup{"II"} g[ b] e[ b g] |
  r8 g[ b] e[ b g] |
  r8 fis[ a] e'[ a, fis] |
  r8 fis[ b\3] dis[ b\3 fis] |
  <g b e>2. |
}

lowerVoice = \relative c {
  \voiceTwo
  \once \set minimumFret = 3
  g2. |
  a2. |
  g2. |
  b2. |
  c2. |
  a2. |
  d2. |
  c!2. |
  b2. |
  g2. |
  c2. |
  \once \set minimumFret = 3
  cis2. |
  d2. |
  d2. |
  g,2. |
  dis'2. |
  e2. |
  dis2. |
  e2. |
  e2. |
  e,2. |
  e'2. |
  e,2. |
  e'2. |
  dis2. |
  b2. |
  e,2. |
  a2. |
  b2. |
  b2. |
  e,2. |
  \once \set minimumFret = 3
  gis2. |
  a2. |
  ais2. |
  \once \set minimumFret = 2
  b2. |
  b2. |
  b2. |
  b2. |
  e,2. \bar "||"
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Grazioso."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key g \major
      \time 6/8
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
    \tempo 4 = 110
  }
}
