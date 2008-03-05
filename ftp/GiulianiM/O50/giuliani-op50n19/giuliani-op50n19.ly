\version "2.10.33"

\header {
  title             = "Opus 50 No. 19"
  composer          = "Mauro Giuliani"
  meter             = "Tempo di polacca"
  opus              = "Op. 50"
  piece             = "No. 19"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1347"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  \slurDown
  c4 r16 g  \acciaccatura d' c b c d e f
  d4. g8 g g
  e16( f) d e c( d) b c r f, a d
  r16 e, g c b8 r r4
%5
  c4 r16 g  \acciaccatura d' c b c d e f
  cis4 d8 g fis f
  e16 c a d r e, g a r d, g b
  c4 r8 e e e
  g8. f16 d8 r r4
%10
  r4 r8 e e e
  g8. f16 d8 r r4
  c4 c16 g c e d8 g
  c,4 c16 g c e d8 g
  <c, e>2 r4
}

bass = \relative c' {
  c16 g' e g c,4 r
  b16 g' d g b, g' d g b, g' d g
  c,4 r f,
  g4 <g d'>16 g' f g e g d g
%5
  c,16 g' e g c,4 r
  b16 g' d g b, g' g, g' a, g' b, g'
  c,8 f g,4 e
  c'16 g' e g c, g' e g c, g' e g
  b,16 g' d g b, g' g, g' a, g' b, g'
%10
  c,16 g' e g c, g' e g c, g' e g
  b, g' d g b, g' g, g' a, g' b, g'
  c,16 g' e g c,4 b16 g' g, g'
  c,16 g' e g c,4 b16 g' g, g'
  <c, e g>2 r4
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
