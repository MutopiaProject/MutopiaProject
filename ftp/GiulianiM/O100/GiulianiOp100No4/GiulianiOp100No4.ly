\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 4"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 4"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1799"
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
  r16^\markup{"I"} a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8] |
  r16 gis16[ d' e ] r8 <gis, d' e>8[ r8 <gis d' e>8 ] |
  r16 a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8 ] |
  r16 a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8] |
  r16 a[ b fis'] r8 <a, b fis'>8[ r8 <a b fis'>8 ] |
  r16 a[ b fis'] r8 <a, b fis'>8[ r8 <a b fis'>8 ] |
  r16 gis[ b e] r8 <gis, b e>8[ r <gis b e>8] |
  r16 gis[ b e] r8 <gis, b e>8[ r <gis b e>8] |
  r16 a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8] |
  r16 gis16[ d' e ] r8 <gis, d' e>8[ r8 <gis d' e>8 ] | % 10
  r16 a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8] |
  r16 a[ c fis] r8 <a, c fis>8[ r <a c fis>8] |
  r16 a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8] |
  r16 b\3[ d e] r8 <b d e>8[ r8 <gis b e>8] |
  r16 a[ cis e] r8 <a, cis e>8[ r8 <a cis e>8] |
  r16 gis[ cis eis] r8 <gis, cis eis>8[ r <gis cis eis>8] |
  r16^\markup{"II"} a[ cis fis] r8 <a, cis fis>8[ r8 <a cis fis>8] |
  r16 b[ cis\3 gis'] r8 <b, cis gis'>8[ r8 <b cis gis'>8] |
  r16 a[ cis a'] r8 <a, cis a'>8[ r8 <a cis a'>8] |
  r16 a[ cis fis] r8 <a, cis fis>8[ r8 <a cis fis>8] | % 20
  r16 b\3[ d fis] r8 <b, d fis>8[ r8 <b d fis>8] |
  r16 b\3[ d gis] r8 <b, d gis>8[ r8 <b d gis>8] |
  r16^\markup{"I"} gis[ cis eis] r8 <gis, cis eis>8[ r <gis cis eis>8] |
  r16 gis[ cis eis] r8 <gis, cis eis>8[ r <gis cis eis>8] |
  r16^\markup{"II"} a[ cis fis] r8 <a, cis fis>8[ r8 <a cis fis>8] |
  r16 ais[ cis g'] r8 <ais, cis g'>8[ r8 <ais cis g'>8] |
  r16 b\3[ d fis] r8 <b, d fis>8[ r8 <b d fis>8] |
  r16 a[ dis fis] r8 <a, dis fis>8[ r8 <a dis fis>8] |
  r16^\markup{"I"} a[ cis fis] r8 <a, cis fis>8[ r8 <a cis fis>8] |
  r16^\markup{"II"} gis[ cis eis] r8 <gis, cis eis>8[ r <gis cis eis>8] | % 30
  r16^\markup{"I"} a[ cis fis] r8 <a, cis fis>8[ r8 <a cis fis>8] |
  r16^\markup{"II"} a[ cis fis] r8 <a, cis fis>8[ r8 <b cis eis>8] |
  r16 a[ cis fis] r8 <a, cis fis>8[ r8 <b d fis>8] |
  r16^\markup{"I"} a[ cis fis] r8 <a, cis fis>8[ r8 <b cis eis>8] |
  <a cis fis>2^\markup{"II"} r4
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  a4 a8[ r a] r |
  b4 b8[ r b] r |
  cis4 cis8[ r cis] r |
  a4 a8[ r a] r |
  d4 d8[ r d] r |
  dis4 dis8[ r dis] r |
  e4 e8[ r e] r |
  d!4 d8[ r d] r |
  cis4 cis8[ r cis] r |
  b4 b8[ r b] r |		% 10
  a4 a8[ r a] r |
  dis4 dis8[ r dis] r |
  e4 e8[ r e] r |
  e,4 e'8[ r e,] r |
  a4 a8[ r a] r |
  gis4 gis8[ r cis] r |
  fis4 fis8[ r fis] r |
  eis4 eis8[ r eis] r |
  fis4 fis8[ r fis] r |
  fis4 fis8[ r fis] r |
  dis4 dis8[ r dis] r |
  b4 b8[ r b] r |
  cis4 cis8[ r cis] r |
  cis4 cis8[ r cis] r |
  fis4 fis8[ r fis] r |
  e4 e8[ r e] r |
  d4 d8[ r d] r |
  bis4 bis8[ r bis] r |
  cis4 cis8[ r cis] r |
  cis4 cis8[ r cis] r |
  fis,4 fis8[ r fis] r |
  fis4 fis8[ r fis] r |
  fis4 fis8[ r fis] r |
  fis4 fis8[ r fis] r |
  fis2 r4
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegretto."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key a \major
      \time 3/4
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
