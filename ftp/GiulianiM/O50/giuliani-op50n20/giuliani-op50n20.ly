\version "2.10.33"

\header {
  title             = "Opus 50 No. 20"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 20"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1348"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  e4. g8 f d
  c4.  \acciaccatura d8 c b c
  d4 d8 e4 e8
  g4 f8 d4 r8
%5
  e4. g8 f d
  c4. e8 d c
  b8 d g, a c fis,
  g4. r4 r8
  e'4. g8 f d
%10
  c4.  \acciaccatura d8 c b c
  d4 d8 e4 e8
  g4 f8 d4 r8
  e8 b c f b, c
  g'8 b, c a f' d
%15
  e,8 g c d, g b
  c4. c8 g e'
  c4. c8 g e'
  c4. c8 g e'
  c8 g e' c g e'
%20
  <g, c>2.
}

bass = \relative c' {
  \stemDown
  c8 e g b,4.
  c8 e g c,4.
  b8 d g c, e g
  b,8 d g b, d g
%5
  c,8 e g b,4.
  c8 e g c,4.
  d4 r8 d4 r8
  g,8 d' b g a b
  c8 e g b,4.
%10
  c8 e g c,4.
  b8 d g c, e g
  b,8 d g b, d g
  c,4. d
  e4. f
%15
  g,4. g
  c8 e g c,4.
  c8 e g c,4.
  c8 e g c,4.
  g4. e
%20
  <c' e>2.
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
