\version "2.10.33"

\header {
  title             = "Opus 50 No. 30"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 30"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1358"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c''{
  \stemUp
  \slurDown
  \partial 4*1 d8 d
  d8. b16 d8 c16 a
  g4 a
  c16 b a g <c e> <b d> <a c> <g b>
  <g b>8 <fis a> cis'16 d \acciaccatura fis e d
%5
  d8. b16 d cis c a
  g16 d g b a d cis g'
  fis16 g <g, b> e' r <fis, d'> r <e cis'>
  d'4 fis8 fis
  g16 fis e d c8 c
%10
  ais16 d, b' d, d' b ais g
  fis16 d g b d( c) c( b)
  b8 a cis16( d) \acciaccatura fis e d
  d8. b16 d cis c a
  g4 a8 a
%15
  b16 d c a b, g' a, fis'
  g8. d'16 b8. g'16
  e8. c16 a8. c16
  b8. d16 b8. g'16
  e8. c16 a8. d16
%20
  g,4 <b g'>
  <d, g>2
}

bass = \relative g {
  \partial 4*1 r4
  g16 d' b d fis, d' a d
  g,16 d' b d fis, d' a d
  g,4 r
  d'8 d r4
%5
  g,16 d' b d fis, d' a d
  g,4 fis'8 e
  d8 g, a a
  d16 d d d c d c d
  b16 d b d a d a d
%10
  g,4 r
  c8 b <a d> <g d'>
  <d' g>8 <d fis> r4
  g,16 d' b d fis, d' a d
  g,16 d' b d fis, d' a d
%15
  g,8 e'16 c b8 a
  g16 d' b d g, d' b d
  c16 g' e g fis, d' a d
  g,16 b g b g d' b d
  c16 g' e g fis, d' a d
%20
  g,4 <g g'>
  <g b>2
}

\score {
  
  {
    \key g \major
    \time 2/4
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
