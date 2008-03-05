\version "2.10.33"

\header {
  title             = "Opus 50 No. 7"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 7"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1335"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}


saprano = \relative c'' {
  \stemUp
  \partial 8*1 b16 c
  d4 r8 e16 d
  c4 r8 d16 c
  b8 g e a
  r16 g b g a8 b16 c
%5
  d4 r16 b e d
  c4 r16 a d c
  b16 g' e c b d c a
  g4 r8 g'
  e8 e c e
%10
  d4 r8 b
  a8 a d c
  ais4 b8 g'
  e8 e c e
  d4 r16 d, g b
%15
  b,16 d' c, c' d, b' d, a'
  r16 g d b r d' c b
  a4 r16 c b a
  g4 r16 b a g
  fis16 a d fis e g cis, e
%20
  d16 a d fis e cis e g
  fis16 a, d fis a g e fis
  d16 a d fis e cis e g
  d16 a d fis a g e cis
  d16 d, e fis g a b c
%25
  d4 r8 e16 d
  c4 r8 d16 c
  g,16 b' b, g' r fis a c
  r16 g b g a8 b16 c
  d4 r16 b e d
%30
  c4 r16 e d c
  g16 g' e c b d c a
  g4 a
  b4 d16 c a b
%35
  g4 a
  b4 d16 c a b
  g8 <b g'> <g b g'> <g b g'>
  <g b g'>2
}

bass = \relative c' {
  \partial 8*1 r8
  r8 b16 a g8 r
  r8 a16 g fis8 r
  g4 c
  d4 <d fis>
%5
  r16 ais b a gis8 r
  r16 gis a g fis8 r
  g8 c d d
  g,16 d' b d g, d' b d
  c16 g' e g c, g' e g
%10
  g,16 d' b d g, d' b d
  fis,16 d' a d fis,16 d' a d
  g,16 d' b d g, d' b d
  c16 g' e g c, g' e g
  g,16 d' b d g,4
%15
  b8 c d d
  g,4 g
  r16 eis' fis e dis4
  r16 fis e d cis4
  d4 g,8 a
%20
  d4 a
  d4 a
  d4 a
  d4 a
  d8 s4.
%25
  r8 b16 a g8 r
  r8 a16 g16 fis8 r
  g8 b c4
  d4 <d fis>8 r
  r16 ais b a gis8 r
%30
  r16 gis a g fis8 r
  g8 c d d
  g,16 d' b d fis, d' a d
  g,16 d' b d fis,4
  g16 d' b d fis, d' a d
%35
  g,16 d' b d fis,4
  g8 g' d b
  <g b d>2
}

\score {
  {
    \key g \major
    \time 2/4
    << \saprano \\ \bass >>
  }
  \layout {
    \context {
      \Score
      fingeringOrientations = #'(left)
    }
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
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
  
