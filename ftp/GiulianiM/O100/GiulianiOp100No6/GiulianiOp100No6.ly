\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 6"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 6"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1801"
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
  r16^\markup{"I"} a[ c f] f[ d a f] |
  r16 a[ c f] f[ d a f] |
  \repeat unfold 2 { r16 bes[ d f] f[ d bes f] | }
  \repeat unfold 2 { r16 a[ c f] f[ c a f] | }
  r16 bes[ des g] g[ des bes e,] |
  r16 bes'[ c g'] g[ c, bes e,] |
  r16 a[ c f] f[ c a f] |
  r16 bes[ d g] g[ d bes bes,] |
  r16 a'[ c f] f[ c a c,] |
  r16 bes'[ c e] e[ c bes c,] |
  r16 a'[ c f] f[ c a f] |
  r16 a[ cis g'] g[ cis, a e] |
  \repeat unfold 2 { r16 a[ d f] f[ d a d,] | }
  \repeat unfold 2 { r16 a'[ cis e] e[ cis a a,] | }
  \repeat unfold 2 { r16 a'[ cis f] f[ cis a a,] | }
  \repeat unfold 2 { r16 a'[ d f] f[ d a d,] | }
  \repeat unfold 2 { r16 a'[ d f] f[ d a g,] | }
  \repeat unfold 2 { r16 bes'[ d e] e[ d bes g,] | }
  r16 a'[ d f] f[ d a a,] |
  r16 a'[ cis e] e[ cis a a,] |
  \repeat unfold 2 { r16 a'[ d f] f[ d a f] | }
  <a d f>2
  \bar "||"
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat unfold 6 { f2 | }
  \repeat unfold 2 { e2 | }
  f2 |
  bes,2 |
  c2 |
  c2 |
  f2 |
  f2 |
  \repeat unfold 2 { d2 | }
  \repeat unfold 4 { a2 | }
  \repeat unfold 2 { d2 | }
  \repeat unfold 4 { g,2 | }
  \repeat unfold 2 { a2 | }
  \repeat unfold 3 { d2 | }
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key f \major
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
