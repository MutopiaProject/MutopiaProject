\version "2.18.0"

\header {
  title = "Als der gütige Gott vollenden wollt' sein Werk"
  composer = "J. S. Bach"
  opus = "BWV 264"
  instrument = "Voice (SATB)"
  source = "www.jsbchorales.net"
  copyright = "Creative Commons Attribution 3.0"
  style = "Baroque"
  maintainer = "Julián Villegas"

  \sourcefilename "BWV-264.tex"
  mutopiacomposer = "BachJS"
  footer = "Mutopia-2008/08/22-1529"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
}
sopranoMusic = \relative c' {
  \global
  \partial 4 d g a b a g2\fermata r4
  a b c b a g2\fermata r4
  b d d c b a2\fermata r4
  b g c b a g2( a4)\fermata
  a b c b a g2.\fermata \bar "|."
}

altoMusic = \relative c' {
  \global
  \partial 4 b4 e8 g4( fis8) g8[ fis16 e] fis4 d2\fermata r4
  fis g g8[ a] a[ g] g[ fis] d2\fermata r4
  g g g4 g8[ fis] g4 | g4( fis4) \fermata r
  fis4 | fis8[ e] g[ a] a[ g] g[ fis] \melismaEnd
  g4.( fis16[ e] fis4) \fermata
  fis g g g4. fis8 d2.\fermata
}

tenorMusic = \relative g {
  \global
  \partial 4 g4  b d d d8[ c] b2\fermata r4
  d d e d4. d16[ c] b2\fermata r4
  d d b c d d2\fermata r4
  b b e8[ d] d4. d16[ c] b8[( a b cis] d4) \fermata
  d d c8[ e] d4 d8.[ c16] b2.\fermata
}

bassMusic = \relative g {
  \global
  \partial 4 g4  e d g d g,2\fermata r4
  d' g c, d d, g2\fermata r4
  g4 b g a b8[ c] d2\fermata r4
  dis e4. fis8 g4 d e2( d4)\fermata
  d g e8[ c] d4 d, g2.\fermata
}

wordsI = \lyricmode {
  \set stanza = #"1. "
  Als der gü -- ti -- ge Gott
  voll -- en -- den wollt' sein Werk,
  sand er sein' En -- gel schnell,
  des Na -- me Ga -- bri -- el, __
  ins ga -- li -- lä -- isch Land,
}
wordsII = \lyricmode {
  \set stanza = #"2. "
  in die Stadt Na -- za -- reth,
  da er ein Jung -- frau hatt',
  die Ma -- ri -- a ge -- nannt,
  Jo -- seph nie hatt' er -- kannt, __
  dem sie ver -- trau -- et war.
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopranos" <<
      \set Staff.instrumentName = "Sopran"
      \new Voice = "sopranos" { \global \sopranoMusic }
    >>
    \new Lyrics \lyricsto "sopranos" { \wordsI }
    \new Lyrics \lyricsto "sopranos" { \wordsII }
    \new Staff = "altos" <<
      \set Staff.instrumentName = "Alt"
      \new Voice = "altos" { \global \altoMusic }
    >>
    \new Staff = "tenors" <<
      \set Staff.instrumentName = "Tenor"
      \new Voice = "tenors" { \global \clef "treble_8" \tenorMusic }
    >>
    \new Lyrics \lyricsto "tenors" { \wordsI }
    \new Lyrics \lyricsto "tenors" { \wordsII }
    \new Staff = "basses" <<
      \set Staff.instrumentName = "Bass"
      \new Voice = "basses" { \clef "bass" \global \bassMusic }
    >>
  >>
  \layout {}
  \midi { \tempo 4 = 85 }
}
