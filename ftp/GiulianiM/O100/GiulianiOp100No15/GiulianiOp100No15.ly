\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 15"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 15. Rondo"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/12/19-1812"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
}

posI = \markup{"I"}
posII = \markup{"II"}
posIII = \markup{"III"}
posIV = \markup{"IV"}
posV = \markup{"V"}
posVI = \markup{"VI"}
posVII = \markup{"VII"}

global = {
  \time 2/4
  % template with key changes
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \override Score.KeySignature #'break-align-anchor-alignment = #RIGHT
  \key a \major
  \skip 2*16
  \key a \minor
  \mark \markup { \smaller "Minore" }
  \skip 2*48
  \key a \major
  \mark \markup { \smaller "Maggiore" }
  \skip 2*38
}

upperVoice = \relative c' {
  \voiceOne
  r16^\posI cis[ fis cis] r b[ e b] |
  r16^\posII a[ d a] r a^\posI[ d a] |
  r16 a[ b a] r a[ b a] |
  r16 gis[ b gis] r gis[ b gis] |
  r16^\posII a[ e' a,] r^\posI gis[ e' gis,] |
  r16 b[ e b] r^\posII a[ e' a,] |
  r16 d[ e d] r cis[ e cis] |
  r16 b[ e b] r^\posI b[ e b] |
  r16 cis[ e cis] r b[ e b] |
  r16 a[ d a] r a[ cis a] |
  r16 a[ b a] r a[ b a] |
  r16 gis[ b gis] r gis[ b gis] |
  r16^\posII a[ e' a,] r a[ dis a] |
  r16 a[ e' a,] r a[ fis' a,] |
  r16 a[ cis a] r^\posI gis[ b gis] |
  a4 r |
  \bar "||"
  a,8[ a' c c,] |
  b8[ b' e e,,] |
  a8[ a' c c,] |
  b8[ b' e e,,] |
  a8[ a' b gis,] |
  a8[ c' d b,] |
  c8[ e' f d,] |
  e,8[ gis' b e] |
  a,,8[ a' c c,] |
  b8[ b' e e,,] |
  a8[ a' c c,] |
  b8[ b' e e,,] |
  a8[ a' b gis,] |
  a8[ c' bes d,] |
  e8[ a gis e,] |
  a'4 r |
  e'8[ g,! f' g,] |
  \bar "||"
  d'4 r |
  e8[ g, f' g,] |
  d'4 r |
  c8[ g d' g,] |
  e'8[ g, d' g,] |
  f'8[ g, e' g,] |
  d'8[ g f d] |
  e8[ g, f' g,] |
  d'8[ g,_( a) g] |
  e'8[ g, f' g,] |
  d'8[ g,_( a) g] |
  g'8[ g, fis' g,] |
  f'!8[ g, e' g,] |
  d'8[ a b g] |
  c4 r |
  r8 e,8[ e' c] |
  r8^\posII e,[ d' b] |
  r8^\posI e,[c' a] |
  r8 e[ b' gis] |
  r8 e[ <c' e>8 <c e>8 ] |
  r8 e,[ <b' d>8 <b d>8] |
  r8 e,[ <a c>8 <a c>8] |
  <gis b>4 r |
  a,8[ a' c c,] |
  b8[ b' e e,,] |
  a8[ a' c c,] |
  b8[ b' e e,,] |
  a8[ a' b gis,] |
  a8[ c' bes d,] |
  e8[ a gis e,] |
  a'4 r |
  \bar "||"
  r16 cis[ e cis] r b[ e b] |
  r16 a[ d a] r a[ cis a] |
  r16 a[ b a] r a[ b a] |
  r16 gis[ b gis] r gis[ b gis] |
  r16 a[ e' a,] r gis[ e' gis,] |
  r16 b[ e b] r a[ e' a,] |
  r16 d[ e d] r cis[ e cis] |
  r16 b[ e b] r b[ e b] |
  r16 cis[ e cis] r b[ e b] |
  r16 a[ d a] r a[ cis a]  |
  r16 b[ fis' b,] r a[ b a] |
  r16 gis[ b gis] r gis[ e' gis,] |
  r16 a[ e' a,] r a[ dis a] |
  r16 a[ e' a,] r a[ fis' a,] |
  r16 a[ cis a] r gis[ b gis] |
  r16 a[ cis a] r g![ e' g,] |
  r16 fis^\posII[ d' fis,] r gis!^\posI[ b gis] |
  r16 a[ cis a] r g![ e' g,] |
  r16 fis[ d' fis,] r gis[ b gis] |
  r16 a[ cis a] r a[ cis a] |
  r16 a[ cis a] r a[ c a] |
  r16 a[ cis a] e'[ a, cis a] |
  r16 gis[ b gis] e'[ gis, b gis] |
  r16 a[ cis a] r g^\posII[ a' g,] |
  r16 fis[ d' fis,] r gis^\posI[ e' gis,] |
  r16 a[ cis a] r g[ a' g,] |
  r16 fis[ d' fis,] r gis[ e' gis,] |
  r16 a[ cis a] r^\posII a[ cis a] |
  r16 a[ d a] r a[ dis a] |
  r16 a[ cis a] e'[ a, cis a] |
  r16 gis[ b gis] e'[ gis, b gis] |
  r16 a[ cis a] r a[ cis a] |
  \repeat unfold 3 { r16 a[ cis a] r a[ cis a] | }
  <a cis>4 r |
  <a cis e>4 r |
  <a cis e a>2
  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  a4 gis |
  fis4 e |
  d4 dis |
  e4 d! |
  cis4 b |
  d4 cis |
  gis4 a |
  e4 gis' |
  a4 gis |
  fis4 e |
  d4 dis |
  e4 d! |
  cis4 bis |
  cis4 d |
  e4 e, |
  a4 r |
  a4. c8 |
  b4. e,8 |
  a4. c8 |
  b4. e,8 |
  a4. gis8 |
  a4. b8 |
  c4. d8 |
  e,2 |
  a4. c8 |
  b4. e,8 |
  a4. c8 |
  b4. e,8 |
  a4. gis8 |
  a4. d8 |
  e4. e,8 |
  a4 r |
  c4 d |
  b8[ g a g] |
  c4 d |
  b8[ g a g] |
  e'4 b |
  c4 b |
  d4 c |
  b4 r |
  c4 d |
  b4 s |
  c4 d |
  b4 s |
  g4 a |
  b4 c |
  f4 d |
  c4 r |
  \repeat unfold 7 { e,2 | }
  e4 r |
  a4. c8 |
  b4. e,8 |
  a4. c8 |
  b4. e,8 |
  a4. gis8 |
  a4. d8 |
  e4. e,8 |
  a4 r |
  a'4 gis |
  fis e |
  d4 dis |
  e4 d! |
  cis4 b |
  d4 cis |
  gis4 a |
  e4 gis' |
  a4 gis |
  fis4 e |
  d4 dis |
  e4 d! |
  c4 bis |
  c4 d |
  e4 e, |
  \repeat unfold 4 { a4 a | }
  a4 eis' |
  fis4 dis |
  e2 |
  e,2 |
  a4 a |
  \repeat unfold 3 { a4 a | }
  a4 g' |
  fis4 f |
  e2 |
  e,2 |
  a4 e |
  a4 cis |
  a4 e |
  a4 cis |
  a4 r |
  a4 r |
  a2
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \clef "treble_8"
      \global
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 112 4)
    }
  }
}
