\version "2.10.33"

\header {
  title             = "Opus 50 No. 1"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 1"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1329"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c''{
  \stemUp
  c2 c4
  d2 d4
  e4 f e
  d2 r4
%5
  f2 g4
  e2 c4
  d2 b4
  c2 r4
  d2 e4
%10
  d2 r4
  d4 f e
  d2 r4
  e2 d4
  c2 d4
%15
  c2 b4
  c2 r4
  c2 c4
  d2 d4
  e4 f e
%20
  d2 r4
  f2 g4
  e2 c4
  d2 b4
  r8 c g e c4
%25
  d'2 e4
  d2 r4
  d4 f e
  d8 g, a b c d
  e2 d4
%30
  c2 d4
  c2 b4
  r8 e, g c c,4
}


bass = \relative c' {

  e2 e4
  g2 g4
  c4 d c
  g2 r4
%5
  a2 g4
  c2 a4
  f2 g4
  e2 r4
  g2 c4
%10
  g2 r4
  g2 c4
  g2 r4
  c2 gis4
  a2 d4
%15
  g,2 g4
  e2 r4
  e8 g g g e g
  b,8 g' g g b, g'
  c,8 g' d g c, g'
%20
  b,8 g' g g g g
  d8 g g g b, g'
  c,8 g' g g e g
  f8 a a a d, g
  c,2 c4
%25
  b8 g' g g c, g'
  b,8 g' g g g g
  b,8 g' d g c, g'
  b,4 r r
  c8 g' g g b, gis'
%30
  a,8 a' a a f, f'
  g,8 e' e e g, d'
  c2 c4
}

\score {
  
  {
    \key c \major
    \time 3/4
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
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
