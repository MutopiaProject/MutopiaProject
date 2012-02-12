\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 4"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 4"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"

 footer = "Mutopia-2011/11/22-1799"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
