\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 3"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 3"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/22-1798"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
