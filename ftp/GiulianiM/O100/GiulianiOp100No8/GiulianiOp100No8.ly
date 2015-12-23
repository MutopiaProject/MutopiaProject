\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 8"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 8"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1803"
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

%mbreak = { \break }
mbreak = {}

upperVoice = \relative c' {
  \voiceOne
  r8 g[ bes] ees[ bes g] |
  r8^\markup{"I"} aes[ d] f[ d aes] |
  \set minimumFret = 3
  r8^\markup{"III"} bes[ ees] g[ ees bes] |
  \mbreak
  r8 g[ bes] ees[ bes g] |
  r8 bes[ d] aes'[ d, bes] |
  r8 bes[ ees] g[ ees bes] |
  \set minimumFret = 1
  r8^\markup{"I"} bes[ d] f[ d bes] |
  \mbreak
  r8 bes[ d] f[ d bes] |
  \set minimumFret = 3
  r8^\markup{"III"} bes[ ees] bes'[ ees, bes] |
  \set minimumFret = 4
  r8^\markup{"IV"} c[ ees] a[ ees c] |
  \set minimumFret = 3
  r8^\markup{"III"} b[ d] aes'![ d, b] |
  \mbreak
  \set minimumFret = 0
  r8^\markup{"I"} g[ c] g'[ c, g] |
  r8 aes[ c] f[ c aes] |
  r8 f[ aes] d[ aes f] |
  \set minimumFret = 3
  r8^\markup{"III"} g[ bes] ees[ bes g] |
  \mbreak
  s8 g[ bes] s8 g[ b] |
  r8 g[ c] ees[ c g] |
  r8 c[ ees] g[ ees c] |
  r8 g[ b] d[ b g] |
  \mbreak
  r8 b[ d] g[ d b] |
  r8 g[ c] ees[ c g] |
  \set minimumFret = 0
  r8^\markup{"I"} g[ f'] r8^\markup{"II"} g,[ ees'] |
  \set minimumFret = 3
  r8^\markup{"III"} g,[ b] d[ b g] |
  \mbreak
  r8 b[ d] g[ d b] |
  r8 b[ d] aes'[ d, b] |
  \set minimumFret = 0
  r8 g[ c] g'[ c, g] |
  r8 a[ c] fis[ c a] |
  r8 g[ d'] f[ d g,] |
  \set minimumFret = 3
  r8^\markup{"III"} g[ c] ees[ c g] |
  r8 g[ b] d[ b g] |
  \set minimumFret = 0
  r8^\markup{"I"} ees[ g] c[ g ees] |
  c2.
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  ees2. |
  f2. |
  \set minimumFret = 3
  g2. |
  ees2. |
  f2. |
  ees2. |
  \set minimumFret = 1
  bes2. |
  bes2. |
  g'2. |
  fis2. |
  f2. |
  ees2. |
  aes,2. |
  bes2. |
  \set minimumFret = 3
  ees2. |
  ees4. d |
  c2. |
  c2. |
  g2. |
  g2. |
  c2. |
  \set minimumFret = 0
  b4. c4. |
  \set minimumFret = 3
  g2. |
  g2. |
  f'2. |
  \set minimumFret = 0
  ees2. |
  d2. |
  b2. |
  c2.\5 |
  g2. |
  c2. |
  c2.
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Grazioso."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key ees \major
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
