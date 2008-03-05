\version "2.10.33"

\header {
  title             = "Opus 50 No. 15"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 15"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1343"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative a' {
  \stemUp
  \partial 8*2 a8 b
  \acciaccatura d8 c b a gis a b
  a4. r8 c d
  e8 c a f' d b
  gis8 b gis e e' e
%5
  \acciaccatura f8 e d c b a g
  g8 b c a e' d
  e,8 g c d, g b
  c4. r8 c c
  b4. r8 d d
%10
  c4. r8 e c
  r8 c b r c a
  gis8 b gis e e' d
  \acciaccatura d8 c b a gis e' d
  \acciaccatura d8 c b a gis e' d
%15
  cis8 e g bes a g
  r8 f e g f d
  c8 e a, b e gis,
  a8 c e d b e
  c8 a e' d b e
%20
  c8 e a f d b
  c8 e a, b e gis,
  a8 c e, a c, e
  a,2.
}

bass = \relative a {
  \stemDown
  \partial 8*2 r4
  a4. e
  a8 e' c a4 r8
  a4 r8 d4 r8
  e,4 r8 r4.
%5
  c'4. d
  e,4. f
  g4. g
  c8 g' e c4 r8
  c8 f g c,4 r8
%10
  c8 e g c,4 r8
  d4. dis
  e,4 r8 e4 r8
  a4 r8 e4 r8
  a4 r8 e4 r8
%15
  a4 r8 r4.
  d4 r8 d4 r8
  e,4 r8 e4 r8
  a4 r8 e4 r8
  a4 r8 e4 r8
%20
  a4 r8 d4 r8
  e,4 r8 e4 r8
  a4 r8 r4.
  a2.
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
      tempoWholesPerMinute = #(ly:make-moment 132 4)
    }
  }
}
