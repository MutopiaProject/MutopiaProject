\version "2.10.33"

\header {
  title             = "Opus 50 No. 2"
  composer          = "Mauro Giuliani"
  meter             = "Grazioso"
  opus              = "Op. 50"
  piece             = "No. 2"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1330"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}


saprano = \relative c'' {
  \stemUp
  \partial 8*1 g8
  c4 b8 g
  c8 c d4
  e8 c a d
  c4 b8 g
%5
  c4 b8 g
  c8 c d4
  e8 c a b
  d4 c8 g
  e'8 e g4
%10
  f8 f d4
  e8 c b c
  e4 d8 g,
  e'8 e g4
  f8 f d4
%15
  e8 c a b
  d4 c8 g
  c8 c b r
  c8 c d r
  e8 c r16 a f' d
%20
  r16 e, g c b8 r
  c8 c b r
  c8 c d r
  e8 c d b
  r16 f g b c g c d
%25
  e8 e g4
  f8 f d4
  e8 c b c
  r16 g c e d g, c d
  e8 e g4
%30
  f8 f d4
  c,16 e' e, c' f, a d, b'
  r16 f g d' <e, g c>8[ <g b g'>]
  <e g c e>4 r
}

bass = \relative c' {
  \partial 8*1 r8
  c8 e d f
  e8 c b g
  c8 e f4
  e8 g d r
%5
  c8 e d f
  e8 c b g
  c8 e f d
  f8 g e r
  c8 c e g
%10
  d8 d b g'
  c,8 e d c
  c8 g' b, r
  c8 c e g
  d8 d b g'
%15
  c,8 e f d
  f8 g e r
  c16 g' e g d g f g
  e16 g c, g' b, g' g, g'
  c,16 g' e g f4
%20
  g,4 g16 g' f d
  c16 g' e g d g f g
  e16 g c, g' b, g' g, g'
  c,16 g' e g f g d g
  g,4 <c e>8 r
%25
  c16 g' c, g' e g g g
  d16 g d g b, g' g g
  c,16 g' e g d f c g'
  c,4 b8 r
  c16 g' c, g' e g g g
%30
  d16 g d g b, g' g g
  c,8 e f d
  g,4 c8[ g]
  c4 r
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
      tempoWholesPerMinute = #(ly:make-moment 108 4)
    }
  }
}
  
