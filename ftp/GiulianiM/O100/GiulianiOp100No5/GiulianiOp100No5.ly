\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 5"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 5"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/22-1800"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
