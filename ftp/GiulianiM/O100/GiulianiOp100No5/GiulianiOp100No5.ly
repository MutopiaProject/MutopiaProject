\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 5"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 5"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1800"
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
  r16^\markup{"I"} gis[ b e b gis] r16 gis[ b e b gis] |
  r16^\markup{"II"} a[ cis fis cis a] r16 a[ cis fis cis a] |
  r16 b\3[ d gis d b\3] r16 b\3[ d gis d b\3] |
  r16 a[ cis a' cis, a] r16 a[ cis a' cis, a] |
  r16 a[ dis! fis dis a] r16 a[ dis fis dis a] |
  r16^\markup{"I"} gis[ b e b gis] r16 gis[ b e b gis] |
  r16 gis[ b e b gis] r16 gis[ b e b gis] |
  r16 gis[ cis eis cis gis] r16 gis[ cis eis cis gis] |
  r16 gis[ cis eis cis gis] r16 gis[ cis eis cis gis] |
  \once \set minimumFret=2
  r16^\markup{"II"} a[ cis fis cis a] r16 a[ cis fis cis a] | %10
  r16 a[ cis fis cis a] r16 ais[ cis fis cis ais] | % last ais as (corrected?) in source
  \set minimumFret=2
  r16^\markup{"III"} ais[ dis fis dis ais] r16 ais[ dis fis dis ais] |
  r16 ais[ dis fis dis ais] r16 ais[ dis fis dis ais] |
  \set minimumFret=4
  r16^\markup{"IV"} b\3[ dis gis dis b\3] r16 b\3[ dis gis dis b\3] |
  r16 b\3[ dis gis dis b\3] r16 b\3[ dis gis dis b\3] |
  r16 b[ dis a'! dis, b] r16 b[ dis b' dis, b] |
  r16 b[ dis a' dis, b] r16 b[ dis b' dis, b] |
  r16 b[ e gis e b] r16 b[ e gis e b] |
  \set minimumFret=2
  r16^\markup{"II"} a[ cis fis cis a] r16 a[ cis fis cis a] |
  \set minimumFret=0
  r16^\markup{"I"} gis[ b e b gis] r16 gis[ b e b gis] | % 20
  r16 a[ b fis' b, a] r16 a[ b fis' b, a] |
  r16 gis[ b e b gis] r16 b\3[ d e d b\3] |
  r16 ais[ cis e cis ais] r16 a[ c e c a] |
  r16 gis[ b e b gis] r16 a[ cis! e cis a] |
  r16 gis[ b e b gis] r16 fis[ a dis a fis] |
  r16 e[ gis e' gis, e] r16 e[ gis e' gis, e] |
  r16 e[ gis e' gis, e] r16 e[ gis e' gis, e] |
  <e gis e'>2.
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  e,4. e' |
  e,4. e' |
  e,4. e' |
  e,4. e' |
  e,4. e' |
  e,4. e' |
  e,4. d' |
  cis4. eis |
  cis4. eis |
  fis,4. fis' |			% 10
  fis,4. e'! |
  dis4. fis |
  dis4. fis |
  a,4.\6 gis'\4 |
  a,4.\6 gis'\4 |
  fis4. fis |
  fis4. fis |
  e,4.\6 gis'\4 |
  a,4.\5 cis |
  b4. e |			% 20
  b4. dis |
  e,4. e |
  e4. e |
  e4. e |
  e4. e |
  e4. gis |
  e4. gis |
  e2.
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Andantino."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key e \major
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
    \tempo 4 = 100
  }
}
