\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 9"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 9"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-1804"
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
  \set minimumFret=4
  r16^\markup{"IV"} c[ ees aes] ees[ c aes c] |
  r16 des[ f aes] f[ des aes des] |
  r16 c[ ees aes] ees[ c aes c] |
  r16 c[ ees aes] ees[ c aes c] |
  r16 des[ ees bes'] ees,[ des g, des'] |
  r16 c[ ees aes] ees[ c aes c] |
  \set minimumFret=3
  r16^\markup{"III"} bes[ ees g] ees[ bes g bes] |
  r16 bes[ ees g] ees[ bes g bes] |
  \set minimumFret=4
  r16^\markup{"IV"} c[ ees aes] ees[ c aes c] |
  r16 des[ ees bes'] ees,[ des g, des'] | % 10
  r16 c[ ees aes] ees[ c aes c] |
  r16 des[ f bes] f[ des des, des'] |
  r16 c[ ees aes] ees[ c ees, c'] |
  \set minimumFret=3
  r16^\markup{"III"} bes[ ees g] ees[ bes ees, bes'] |
  \set minimumFret=4
  r16^\markup{"IV"} c[ ees aes] ees[ c aes c] |
  r16 c[ e bes'] e,[ c g c] |
  \set minimumFret=0
  r16^\markup{"I"} aes[ c f] c[ aes f aes] |
  r16 bes[ des f] des[ bes f bes] |
  r16 aes[ c f] c[ aes f aes] |
  r16 aes[ c f] c[ aes f aes] |	% 20
  r16 bes[ c g'] c,[ bes e, bes'] |
  r16 aes[ c f] c[ aes f aes] |
  r16 g[ c e] c[ g c, g'] |
  r16 g[ c e] c[ g c, g'] |
  r16 aes[ c f] c[ aes f aes] |
  r16 bes[ c g'] c,[ bes e, bes'] |
  r16 aes[ c f] c[ aes f aes] |
  r16 bes[ des g] des[ bes bes, bes'] |
  r16 aes[ c f] c[ aes c, aes'] |
  r16 g[ c e] c[ g c, g'] |
  r16 aes[ c f] c[ aes f aes] |
  r16 aes[ c f] c[ aes c, aes'] |
  r16 aes[ c f] c[ aes aes, aes'] |
  <aes c ees>2
  \bar "||"
}

lowerVoice = \relative c' {
  \voiceTwo
  \set minimumFret=4
  \repeat unfold 4 { aes2 | }
  g2 |
  aes2 |
  \set minimumFret=0
  ees2 |
  ees2 |
  \set minimumFret=4
  aes2 |
  g2 |				% 10
  aes2 |
  des,2 |
  ees2 |
  ees2 |
  aes2 |
  g2 |
  \set minimumFret=0
  \repeat unfold 4 { f2 | }
  e2 |
  f2 |
  c2 |
  c2 |
  f2 |
  e2 |
  f2 |
  bes,2 |
  c2 |
  c2 |
  f2 |
  c2 |
  aes2 |
  f2 |
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key aes \major
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
    \tempo 4 = 100
  }
}
