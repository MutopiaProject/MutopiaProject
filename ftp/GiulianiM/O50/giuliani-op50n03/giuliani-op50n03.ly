\version "2.10.33"
\header {
  title             = "Opus 50 No. 3"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 3"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1331"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  e4 e
  g2
  e4 e
  g2
%5
  e4 c
  a4 d
  c4 b
  c2
  e4 e
%10
  g2
  e4 e
  g2
  e4 c
  a8 b c d
%15
  c4 b
  c2
  \times 2/3 { c,8 g' e' } \times 2/3 { e,8 g c }
  \times 2/3 { d,8 g f' } \times 2/3 { b,,8 g' d' }
  \times 2/3 { c,8 g' e' } \times 2/3 { e,8 g c }
%20
  \times 2/3 { d,8 g f' } \times 2/3 { b,,8 g' d' }
  \times 2/3 { c,8 g' e' } \times 2/3 { e,8 g c }
  \times 2/3 { r8 f, a } \times 2/3 { d8 a f }
  \times 2/3 { c'8 g e } \times 2/3 { b'8 g d }
  \times 2/3 { c8 e g } c4
%25
  r16 g e g c g e' c
  g'2
  r16 g, e g c g e' c
  g'2
  r16 g, e' g, r g c g
%30
  r16 a d a e' a, d a
  r16 e c' e, r d g b
  c2
}

bass = \relative c' {
  \stemDown
  <c c'>4 <c c'>
  <b d'>2
  <c c'>4 <c c'>
  <b d'>2
%5
  c4 e
  f2
  g4 g,
  c2
  c8 g' e g
%10
  b,8 g' d g
  c,8 g' e g
  b,8 g' d g
  c, g' e g
  f4 r
%15
  e8 g d g
  c,2
  c4 e
  d4 b
  c4 e
%20
  d4 b
  c4 e
  f,2
  g4 g
  c4 r
%25
  c2
  b16 g' d g b, g' d g
  c,2
  b16 g' d g b, g' d f
  c4 e
%30
  f2
  g,4 g
  <c e g>2
}
 

\score {
  {
    \key c \major
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
