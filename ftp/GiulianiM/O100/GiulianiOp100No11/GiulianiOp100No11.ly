\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 11"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  date = "c.1832"
  opus = "Op. 100"
  piece = "No. 11. Caprice"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/02/15-1807"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #10
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.padding = #2
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  r16 e[ dis e] c[ e] b[ e] a,[ e'] e,,[ e''] c,[ e'] b,[ e'] |
  r16 e[ dis e] c[ e] b[ e] a,[ e'] e,,[ e''] c,[ e'] b,[ e'] |
  r16 e[ dis e] d[ e] c\3[ d] b\3[ e] e,,[ e''] d,[ e'] c,[ e'] |
  r16 e[ dis e] d[ e] c\3[ d] b\3[ e] e,,[ e''] gis,,[ e''] e,,[ e''] |
  r16 e[ dis e] c[ e] b[ e] a,[ e'] e,,[ e''] c,[ e'] b,[ e'] |
  r16 e[ dis e] c[ e] b[ e] a,[ e'] e,,[ e''] c,[ e'] b,[ e'] |
  r16 g,[ b g] f'[ g, e' g,] d[ g g, g'] d[ g c, g'] |
  r16 g[ d' g,] f'[ g, e' g,] d[ g g, g'] b,[ g' g, g'] |
  r16 g[ e' g,] g'[ g, f' g,] e'[ g, g, g'] e[ g d g] |
  r16 g[ e' g,] g'[ g, f' g,] e'[ g, g, g'] e[ g d g] |
  r16^\markup{"II"} a[ e' a,] a'[ a, g' a,] f'^\markup{"I"} [ a, cis, a'] d,[ a' c, a'] |
  r16 g[ d' g,] g'[ g, f' g,] e'[ g, b, g'] c,[ g' b, g'] |
  r16 f[ c' f,] f'[ f, e' f,] d'[ f, ais, f'] b,[ f' a, f'] |
  r16 e[ b' e,] e'[ e, d' e,] c'[ e, gis, e'] a,[ e' g, e'] |
  r16 e[ a e] r e[ a e] r dis[ a' dis,] r dis[ a' dis,] |
  r16 e[ gis e] b'[ gis e' b] gis'_!^\markup{"IV"} [ e_!\2 b'( gis)] e_!\2[ b'( gis) e_!\2] |
  r16^\markup{"I"} e,[ a e] c'[ a e' c]
    \slurUp \stemDown
    a'-!^\markup{"V"} [ e-!\2 c'( a)] e-!\2[ c'( a) e-!\2] |
    \slurDown \stemUp
  r16 e,[ gis e] b'[ gis e' b]
    \slurUp \stemDown
    gis'-!^\markup{"IV"} [ e-!\2 b'( gis)] e-!\2[ b'( gis) e-!\2] |
    \slurDown \stemUp
  r16^\markup{"I"} e,[ a e] c'[ a e' c] a'_!^\markup{"V"} [ e_!\2 c'( a)] e_!\2[ c'( a) e_!\2] |
  % markup to first position added by me
  r16^\markup{"I"} gis,[ b e] r a,[ c e] r gis,[ b e] r a,[ c e] |
  r16 gis,[ b e] r gis,[ b e] r a,[ c e] r gis,[ d' e] |
  a,,[ a'] e,[ a'] c,[ a'] b,[ a'] a,[ a'] e,[ a'] c,[ a'] b,[ a'] |
  r16 e'[ dis e] d[ e c e] b[ e a, e'] gis,[ e' a, e'] |
  d,16[ d'] a,[ d'] f,[ d'] e,[ d'] d,[ d'] a,[ d'] f,[ d'] e,[ d'] |
  r16 a[ d a] f'[ a, e' a,] d[ a f' a,] e'[ a, d a] |
  r16 a[ c a] f'[ a, e' a,] r a[ c a] f'[ a, e' a,] |
  r16 a[ b a] f'[ a, e' a,] r gis[ b gis] f'[ gis, e' gis,] |
  r16 e'[ dis e] c[ e] a,[ e'] r e[ dis e] d[( e]) b[ e] |
  r16 e[ dis e] c[ e] a,[ e'] r e[ dis e] d[ e] b[ e] |
  r16 e[ dis e] c[ e] b[ e] a,[ e'] e,[ e'] c,[ e'] b,[ e'] |
  r16 e[ dis e] c[ e] b[ e] a,[ e'] e,[ e'] c,[ e'] b,[ e'] |
  a,,16[ a'] e,[ a'] c,[ a'] b,[ a'] a,[ a'] e,[ a'] c,[ a'] b,[ a'] |
  r2 <a c e>2 |
  <e a c>2 r
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  a4 c'8[ b] a[ e,] c'[ b] |
  a4 c'8[ b] a[ e,] c'[ b] |
  gis4 d''8[ c\3] b\3[ e,,] d'\5[ c] |
  b4 d'8[ c\3] b\3[ e,,] g[ e] |
  a4 c'8[ b] a[ e,] c'[ b] |
  a4 c'8[ b] a[ e,] c'[ b] |
  g2 r8 g[ d' c] |
  b2 r8 g[ b g] |
  c2 r8 g[ e' d] |
  c2 r8 g[ e' d] |
  cis2 r8 cis[ d c] |
  b2 r8 b[ c b] |
  a2 r8 ais[ b a] |
  gis2 r8 gis[ a g] |
  f4 f f f |
  e1 |
  e1 |
  e1 |
  e1 |
  e4 e e e |
  e4 d' c b |
  a8[ e] c'[ b] a[ e] c'[ b] |
  a2 r |
  d8[ a] f'[ e] d[ a] f'[ e] |
  d2 r |
  e,2 e |
  e2 e |
  a4 c'8[ a] e,4 d''8[ b] |
  a,4 c'8[ <a c,>8 ] e,4 d''8[ <b gis,>8 ] |
  a,4 c'8[ b] a[ e] c[ b] |
  a4 c'8[ b] a[ e] c[ b] |
  a8[ e] c'[ b] a[ e] c'[ b] |
  a2 a |
  a2 r
}

\score {
  <<
    \new Staff = "Guitar" \with {
      \override StringNumber #'stencil = ##f
    } <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key a \minor
      \time 4/4
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
