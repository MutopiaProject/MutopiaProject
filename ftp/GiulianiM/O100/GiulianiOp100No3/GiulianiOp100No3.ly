\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 3"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 3"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1798"
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
  \set minimumFret = 2
  r16^\markup{"II"} a16[ d a] fis[ a d a] r16 a[ d a] fis[ a d a] |
  \set minimumFret = 3
  r16^\markup{"III"} ais16[ e' ais,] g[ ais e' ais,] r16 ais[ e' ais,] g[ ais e' ais,] |
  \set minimumFret = 2
  r16^\markup{"II"} b16[ d b] fis[ b d b] r16 b[ d b] fis[ b d b] |
  r16 b[ e b] g[ b e b] r16 b[ e b] g[ b e b] |
  r16 a[ d a] fis[ a d a] r16 a[ d a] f[ a d a] |
  r16 a[ d a] e[ a d a] r16 a[ cis a] e[ a cis a] |
  r16 a[ d a] fis[ a d a] r16 a[ d a] fis[ a d a] |
  r16 ais[ e' ais,] fis[ ais e' ais,] r16 ais[ e' ais,] fis[ ais e' ais,] |
  r16 b[ d b] fis[ b d b] r16 cis[ fis cis] ais[ cis fis cis] |
  r16 d[ fis d] b[ d fis d] r16 d[ fis d] b[ d fis d] |
  r16 cis[ g' cis,] g[ cis g' cis,]
    \set minimumFret=3 r16^\markup{"III"} d[ gis d] b[ d gis b,] |
  \set minimumFret = 2
  r16^\markup{"II"} d[ fis d] b[ d fis d] r16 d[ fis d] b[ d fis d] |
  r16 cis[ fis cis] b[ cis fis cis] r16 cis[ fis cis] ais[ cis fis cis] |
  r16 b[ d b] r16 b[ d b] r16 b[ d b] r16 b[ d b] |
  r16 b[ d b] r16 b[ d b] r16 b[ d b] r16 b[ d b] |
  r4 r <b d fis>4 r |
  <fis b d>2 r2
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  d2 d |
  cis2 cis |
  b2 b2 |
  g2 g |
  a2 a |
  a2 a |
  d2 d |
  cis2 cis |
  b2 cis |
  d2 d |
  e2 eis |
  fis2 fis |
  fis2 fis |
  b,4 fis b d |
  b4 fis b d |
  b4 r b r |
  b2 r
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key d \major
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
    \tempo 4 = 100
  }
}
