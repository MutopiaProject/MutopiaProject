\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 14"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 14. Caprice"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/12/19-1811"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
}

%mbreak = \break
mbreak = {}

posI = \markup{"I"}
posII = \markup{"II"}
posIII = \markup{"III"}
posIV = \markup{"IV"}
posV = \markup{"V"}
posVI = \markup{"VI"}
posVII = \markup{"VII"}

keyTime = { \key d \major \time 4/4 }

upperVoice = \relative c' {
  \voiceOne
  \partial 2 { r8^\posI a16[ d] fis[ d a d,] | }
  r8 gis16[ b] e[ b gis d] r8 g16[ cis] e[ cis g d] |
  \mbreak
  r8 fis16^\posIII[ d'] a'[ d, fis, d] r8 d16^\posI[ a'] d[ a d, fis,] |
  r8 b'16[ d] e[ d b g,] r8 a'16[ cis] g'[ cis, a a,] |
  \mbreak
  r8 a'16[ d] fis[ d a d,] r8 a'16[ d] fis[ d a d,] |
  r8 gis16[ b] e[ b gis d] r8 g16[ cis] e[ cis g d] |
  r8^\posIII fis16[ d'] a'[ d, fis, d] r8 a'16^\posI[ b] fis'[ b, a d,] |
  \mbreak
  r8 a'16[ b] e[ b a d,] r8 gis16[ d'] e[ d gis, e,] |
  r8 a'16[ cis] e[ cis a a,] r8 a'16[ d] fis[ d a a,] |
  r8 a'16[ cis] e[ cis a a,] r8^\posII b'16[ d] gis[ d b a,] |
  \mbreak
  r8 a'16[ cis] a'[ cis, a a,] r8^\posI a'16[ d] fis[ d a a,] |
  r8 a'16[ cis] e[ cis a a,] r8 gis'16[ d' e d gis, a,] |
  r8 a'16[ cis] e[ cis a a,] r8 a'16[ cis] e[ cis a a,] |
  \mbreak
  r8 c'16^\posV[ e] a[ e c a,] r8 c'16[ fis] a[ fis c dis,] |
  r8^\posIII b'16[ e] g![ e b e,,] r8 b''16[ e] g[ e b g,] |
  \mbreak
  r8^\posII c'16[ e] fis[ e c a,] r8 b'16[ dis] fis[ dis b b,] |
  r8 g'16[ b] e[ b g e,] r8 g'16[ b] e[ b g e,] |
  r8^\posIII b''16[ e] g[ e b e,,] r8 bes''16[ e] g[ e bes cis,] |
  \mbreak
  r8^\posI a'16[ d] fis[ d a d,]  r8 d16[ a'] d[ a d, fis,] |
  r8 b'16[ d] e[ d b g,] r8 b'16[ d] e[ d b gis,] |
  r8 a'16[ cis] e[ cis a a,] r8 a'16[ d] fis[ d a d,] |
  \mbreak
  r8 gis16[ b] e[ b gis d] r8 g16[ cis] e[ cis g d] |
  r8^\posIII fis16[ d'] a'[ d, fis, d] r8 d'16^\posVI[ f] b[ f d gis,] |
  r8 d'16^\posV[ fis!] a[ fis d a,] r8 cis'16[ e] a[ e cis a,] |
  r8^\posI a'16[ d] fis[ d a d,] r8 a'16[ c] fis[ c a d,] |
  r8 g16[ b] g'[ b, g d] r8 g16[ cis!] e[ cis g d] |
  \mbreak
  r8^\posII fis16[ a] d[ a fis d] r8 f16^\posI[ gis] d'[ gis, f b,] |
  r8^\posII fis'16[ a] d[ a fis a,] r8^\posI e'16[ a] cis[ a e a,] |
  r8^\posII fis'16[ a] d[ a fis d] r8 g16[ cis] e[ cis g d] |
  \mbreak
  r8 fis16[ a] d[ a fis d] r8 g16[ cis] e[ cis g d] |
  r8 fis16[ a] d[ a fis d] r8 g16[ a] d[ a g d] |
  \mbreak
  r8 fis16[ a] d[ a fis a,] r8 fis'16[ a] d[ a fis fis,] |
  r8 fis'16[ a] d[ a fis d] r8 fis16[ a] d[ a fis d] |
  r8 a'16[ d] fis[ d a d,] r8 d'16^\posV[ fis] a[ fis d d,] |
  \mbreak
  r8^\posVII d'16[ fis] d'[ fis, d d,] r8 d'16[ fis] c'[ fis, d d,] |
  r8 d'16[ g] b[ g d d,] r8 d'16[ g] cis!16[ g d d,] |
  \mbreak
  r8 d'16[ fis] d'[ fis, d d,] r8 d'16[ fis] c'[ fis, d d,] |
  r8 d'16[ g] b[ g d d,] r8 d'16[ g] cis![ g d d,] |
  r8 d'16[ fis] d'[ fis, d d,] r8 d'16[ fis] d'[ fis, d d,] |
  r8^\posV d'16[ fis] a[ fis d d,] r8^\posI a'16[ d] fis[ d a d,] |
  <fis a d>2^\posII r2
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 2 { d2 | }
  d2 d2 |
  %
  d2 fis, |
  g2 a |
  %
  d2 d |
  d2 d |
  d2 d |
  %
  e2 e, |
  a2 a |
  a2 a |
  %
  \repeat unfold 3 { a2 a | }
  %
  a2 dis |
  e,2 g |
  %
  a2 b |
  e,2 e |
  e2 cis' |
  %
  d2 fis, |
  g2 gis |
  a2 d |
  %
  d2 d |
  d2 gis |
  a,2 a |
  %
  d2 d |
  d2 d |
  %
  b2 b |
  a2 a |
  d2 d |
  %
  d2 d |
  d2 d |
  %
  a2 fis |
  d'2 d |
  \repeat unfold 7 { d2 d | }
  d2 r2 |
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \keyTime
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
