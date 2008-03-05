\version "2.10.33"

\header {
  title             = "Opus 50 No. 29"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 29"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1357"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  \slurDown
  e16 f e d c8 c
  d8 d g4
  e16 f e d c8 c
  d16 b c a g8 r
%5
  e'16 f e d c8 c
  d8 d g4 ~
  g8 e16 c g'8 f16 d
  c4 r8 b16 c
  d8 g fis e
%10
  d4 r16 d, g b
  c16 a fis' d a'( fis) d c
  b16 g c a d g, b c
  d8 g fis e
  d4 e16 d c b
%15
  gis16( a) c e d b c a
  g4 a
  b4 d16 c a b
  g8. gis16 a8. ais16
  b8. b16 d( c) a b
%20
  g16 d g b d( c) a b
  g16 d g b d( c) a b
  r16 g fis a g b a c
  b16 d c e d f e g
  f8. e16 f8. e16
%25
  f16 g, fis g a b c d
  e16 f e d c8 c
  d8 d g4
  e16 f e d c8 c
  d16 b c a g8 r
%30
  e'16 f e d c8 c
  d8 d g4 ~
  g8 e16 c g'8 f16 d
  c4 d
  e4 g16( f) d e
%35
  c4 d
  e4 g16( f) d e
  c8 c c e
  c4 <e g c>
  <c e>2
}

bass = \relative c'
{
  \stemDown
  c16 g' e g c, g' e g
  b,16 g' d g b, g' d g
  c,16 g' e g c, g' e g
  b,8 d g,16 f' e d
%5
  c16 g' e g c, g' e g
  b,16 g' d g b, g' d g
  c,16 g' e g b, g' d g
  c,16 g' e g c,8 r
  b16 g' e g d g c, g'
%10
  b,16 g' d g b,8 r
  d4 d
  g,8 a b r
  b16 g' e g d g c, g'
  b,16 g' d g b,8 r
%15
  c4 d8 d
  g,16 d' b d fis, d' a d
  g,16 d' b d fis,4
  g16 d' b d fis, d' a d
  g,16 d' b d fis,4
%20
  g4 fis
  g4 fis
  g4 r8 fis
  g8 a b c
  d16 g g cis, d g g cis,
%25
  d8 r r4
  c16 g' e g c, g' e g
  b,16 g' d g b, g' d g
  c,16 g' e g c, g' e g
  b,8 d g,16 f' e d
%30
  c16 g' e g c, g' e g
  b,16 g' d g b, g' d g
  c,16 g' e g b, g' d g
  c,16 g' e g b, g' d g
  c,16 g' e g g,4
%35
  c16 g' e g b, g' d g
  c,16 g' e g g,4
  c16 g' e g c, g' e g
  c,4 <c' e>
  <c, e g>2
}

\score {
  {
    \key c \major
    \time  2/4
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
      tempoWholesPerMinute = #(ly:make-moment 132 4)
    }
  }
}
