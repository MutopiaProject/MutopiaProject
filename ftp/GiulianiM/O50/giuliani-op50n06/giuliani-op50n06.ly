\version "2.10.33"

\header {
  title             = "Opus 50 No. 6"
  composer          = "Mauro Giuliani"
  meter             = "Allegro"
  opus              = "Op. 50"
  piece             = "No. 6"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1334"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  \slurDown
  \partial 8*2 e8 e
  \acciaccatura f8 e d c \acciaccatura d c b a
  gis8 b gis e f gis
  a8 b c \acciaccatura d c b a
  gis8 b gis e e' e
%5
  \acciaccatura d8 e d c \acciaccatura d c b a
  gis8 b gis e f gis
  a8 b c e d b
  a4. r8 g' g
  e4 c8 e4 g8
%10
  f4. d4 r8
  e8 d c a e' d
  c4. b8 g' g
  g4 e8 c e g
  f4 d8 r d f
%15
  r8 e c r d b
  c4. r8 e e
  \acciaccatura f8 e d c \acciaccatura d c b a
  gis8 b gis e f gis
  a8 b c \acciaccatura d c b a
%20
  gis8 b gis e e' e
  \acciaccatura d8 e d c \acciaccatura d c b a
  gis8 b gis e f gis
  a8 b c e d b
  a8 e e b' e, e
%25
  c'8 e, e b' e, e
  a8 e e' b e, e'
  c8 a c e d b
  a8 a' gis a e c
  r8 a gis a e c
%30
  r4. <b' d gis>
  <c e a>4. r
}

bass = \relative c' {

  \partial 8*2 r4
  a4 r8 a4 r8
  e4 r8 e4 r8
  a4 r8 a4 r8
  e4 r8 e4 r8
%5
  a4 r8 a4 r8
  e4 r8 e4 r8
  a4 r8 e4 r8
  a8 e' c a4 r8
  c8 e g c, e g
%10
  b,8 d g b, d g
  c,4 r8 f4 r8
  g,8 e' g <g, d'>4 r8
  c8 e g c,4 r8
  b8 d g g,4 r8
%15
  c4 r8 g4 r8
  c8 g' e c4 r8
  a4 r8 a4 r8
  e4 r8 e4 r8
  a4 r8 a4 r8
%20
  e4 r8 e4 r8
  a4 r8 a4 r8
  e4 r8 e4 r8
  a4 r8 e4 r8
  a4 r8 e4 r8
%25
  a4 r8 e4 r8
  a4 r8 e4 r8
  a4 r8 e4 r8
  a4 r8 r4.
  a4 r8 r4.
%30
  a4. e'
  a,4. r
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
      tempoWholesPerMinute = #(ly:make-moment 144 4)
    }
  }
}
