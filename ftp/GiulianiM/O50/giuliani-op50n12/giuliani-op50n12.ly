\version "2.10.33"

\header {
  title             = "Opus 50 No. 12"
  composer          = "Mauro Giuliani"
  meter             = "Alleretto"
  opus              = "Op. 50"
  piece             = "No. 12"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1340"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  e4. d
  c4. r8 d e
  f4. e
  d4. r8 e f
%5
  g4. g
  g4. ~ g8 f e
  r8 a, d r d, c'
  b8 a g r4.
  e'4. d
%10
  c4. r8 d e
  f4. e
  d4. r8 e f
  g4. g
  g4. f,8 a d
%15
  e,8 g c d, g b
  r8 e g c g e
  e'8 c g r4.
  c,4. r
}

bass = \relative c' {
  \stemDown
  c8 e g b, f' g
  c,8 e g c,4 r8
  b8 d g c, e g
  b,8 d g b,4 r8
%5
  c8 e g b, f' g
  c,8 e g c, d e
  f4. fis,
  <g d'>4. f'8 e d
  c8 e g b, f' g
%10
  c,8 e g c,4 r8
  b8 d g c, e g
  b,8 d g b,4 r8
  c8 e g b, f' g
  c,8 e g f,4.
%15
  g4. g
  c4. r
  r4. c'8 g e
  c4. r
}

\score {
  {
    \key c \major
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
