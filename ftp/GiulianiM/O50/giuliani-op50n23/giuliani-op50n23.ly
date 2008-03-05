\version "2.10.33"

\header {
  title             = "Opus 50 No. 23"
  composer          = "Mauro Giuliani"
  meter             = "Grazioso"
  opus              = "Op. 50"
  piece             = "No. 23"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1351"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  \partial 8*1 e8
  e8. f16 e8 e4 e8
  e4 a8 g16 f e d c b
  r8 a c e d b
  a4. r16 gis b e f, gis
%5
  r16 a c e a, c r b d e gis b
  a8 <a, c> <a c> <a c>4 c8
  <g b>8. c16 b8 <a b>4 b8
  <g b>4 e'8 d16 c b a g fis
  r8 e g b a fis
%10
  e4. r16 a b fis' a, b
  r16 g b g' g, b r a dis, a' b fis'
  e8 e e <b e>4 e8
  <c e>8 f16 e d c b4 g8
  <c g'>4. a16 b c d e f
%15
  r8 <g, e'> <e c'> r <f d'> <d b'>
  c'8 e e e e e
  e8 d b d c a
  gis8 b gis e gis b
  r8 <a c> <a c> r <a cis> <a cis>
%20
  r8 <a d> e' f8. e16 d8
  c8 e4 b8 e4
  a,8. c16 b a r gis b e gis, b
  r16 a c e a, c r b d e gis b
  <c, e a>4. r
}

bass = \relative a {
  \partial 8*1 r8
  <a a' c>4 r8 <e gis' b>4 <b'' d>8
  <a a' c>4 r8 d4 r8
  e4. <e, gis'>4.
  a4. e
%5
  e4. e
  a8 e' c a4 r8
  <e e'>4 r8 <fis dis'>4 <dis' a'>8
  <a e'>4 r8 a4 r8
  b4. <b dis>
%10
  e,4. dis'
  e4. b
  <e, g b>8 <b g' b> <g g' b> <e g'>4 r8
  <c' g'>4 r8 <d g>4 r8
  <e g>4. f
%15
  g,4. g
  <c e>4. r
  <e, gis'>4. <e a'>
  e4. e
  a4. g
%20
  f'4 <e a>8 <d a'>4 r8
  <e, a'>4. <e gis'>
  a4 r8 e4.
  e4. e
  a4. r
}


\score {
  {
    \key a \minor
    \time 6/8
    << \saprano \\ \bass >>
  }
  \layout {
    \context {
      \Staff
      midiInstrument = "acoustic guitar (nylon)"
      \override NoteCollision #'merge-differently-headed = ##t
      \override NoteCollision #'merge-differently-dotted = ##t
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 4)
    }
  }
}
