\version "2.10.33"

\header {
  title             = "Opus 50 No. 18"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 18"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1346"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\header {
  composer        = "Mauro Giuliani"
  opus            = "Opus 50"
  piece           = "No. 18"
  meter           = "Allegretto"
  maintainer      = "Stephen Rhen"
  maintainerEmail = "srhen@verizon.net"
}

saprano = \relative g' {
  \stemUp
  \partial 4*1 b16 g c g
  d'16 g, b g c g e' g,
  cis16 g d' g, e' d c b
  a8 a b b
  a4 b16 g c g
%5
  d'16 g, b g g' g, e' g,
  cis16 g d' g, e' d c b
  gis16 a c e d b c a
  r16 g g g c8 b
  e8 d c b
%10
  e8 d c b
  r16 e, a c b d c a
  r16 g g g c8 b
  e8 d c b
  e8 d f f
%15
  f16 e c a <g b g'>8 <a c f>
  <g b g'>4 r
}

bass = \relative g {
  \partial 4*1 g8 a
  b8 g a c
  ais8 b r4
  fis16 d' a d g, d' b d
  fis,16 d' a d g,8 a
%5
  b8 g e' c
  ais8 b r4
  c4 d8 d
  g,4 e'16 g d g
  c,16 g' b, g' e g d g
%10
  c,16 g' b, g' e g d g
  c,4 d
  g,4 e'16 g d g
  c,16 g' b, g' e g d g
  c,16 g' b, g' g, g' b, g'
%15
  c,4 d8 d
  <g, b d>4 r
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
      tempoWholesPerMinute = #(ly:make-moment 132 4)
    }
  }
}
  
