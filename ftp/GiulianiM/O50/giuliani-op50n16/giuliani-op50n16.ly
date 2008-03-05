\version "2.10.33"

\header {
  title             = "Opus 50 No. 16"
  composer          = "Mauro Giuliani"
  meter             = "Vivace"
  opus              = "Op. 50"
  piece             = "No. 16"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1344"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c''' {
  \stemUp
  \slurDown
  \partial 4*1 g16( f) d e
  c8 c e e
  d16 b g8 g'16 f d e
  c8 c e e
  g4 g16( f) d e
%5
  c8 c e e
  d16( b) g8 fis16 g a b
  c8 c d d
  c4 r8 e
  f8 d r16 g, d' f
%10
  e8 c r16 g c e
  d8 g g g
  g8. e16 c8 e
  f8 d r16 g, d' f
  e8 c r16 g c e
%15
  r16 f, a d e, c' d, b'
  c8 c e e
  d16( b) g8 g'16( f) d e
  c8 c d d
  <e, g c>4 r
}

bass = \relative c' {
  \partial 4*1 r4
  c16 g' e g c, g' e g
  g,4 r
  c16 g' e g c, g' e g
  b,16 g' d g r4
%5
  c,16 g' e g c, g' e g
  g,4 r
  e'16 g c, g' b, g' g, g'
  c,16 g' e g c, g' e g
  b,16 g' d g b,4
%10
  c16 g' e g c,4
  b16 g' f g b, g' f g
  c,16 g' e g c, g' e g
  b,16 g' d g b,4
  c16 g' e g c,4
%15
  f,4 g
  c16 g' e g c, g' e g
  g,4 r
  e'16 g c, g' b, g' g, g'
  c,4 r
}

\score {
  {
    \key c \major
    \time 2/4
    << \saprano \\ \bass >>
  }
  \layout {
    \context {
      \Score
      fingeringOrientations = #'(left)
    }
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
