\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 1"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  date = "c.1832"
  opus = "Op. 100"
  piece = "No. 1"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1796"
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
%  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
%  \mark "Cadence. Maestoso."
  r8 g16[ c] e[ c g c,] r8 g'16[ d'] f[ d b b,] |
  r8 g'16[ c] e[ c g c,] r8 g'16[ b] f'[ b, g d] |
  r8 g16[ c] e[ c g e] r8 a16[ d] f[ d a f] |
  r8 g16[ c] e[ c g g,] r8 g'16[ b] f'[ b, g g,] |
  r8 g'16[ c] e[ c g c,] r8 gis'16[ d'] e[ d gis, b,] |
  r8 a'16[ c] e[ c a a,] r8 gis'16[ d'] e[ d gis, b,] |
  r8 a'16[ c] e[ c a c,] r8 a'16[ c] e[ c a a,] |
  r8 a'16[ d] f[ d a d, ] r8 a'16[ d] f[ d a f] |
  r8 a16[ c] e[ c a e] r8 gis16[ d'] e[ d gis, e,] |
  <a' c>2 r2 |
  \bar "||"

}

lowerVoice = \relative c {
  \voiceTwo
  c4^\markup{ "I"} r b r |
  c4 r d r |
  e4 r f r |
  g,4 r g r |
  c4 r b r |
  a4 r b r |
  c4 r a r |
  d4 r f r |
  e4 r e, r |
  a2 r2 |
}

\score {
  <<
    \new Staff = "Guitarre"
    <<
      \set Staff.instrumentName = \markup {\column {"Cadence." "Maestoso."}}
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
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
