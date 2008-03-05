\version "2.10.33"

\header {
  title             = "Opus 50 No. 11"
  composer          = "Mauro Giuliani"
  meter             = "Grazioso"
  opus              = "Op. 50"
  piece             = "No. 11"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1339"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative g'' {
  \stemUp
  g4 g
  e4 r
  f4 f
  d4 r
%5
  c4 d
  e4 c
  f4 e
  d4 r
  d4 d
%10
  b4 g
  d'4 c
  b4 r
  g'4 f
  e4 r16 f, a d
%15
  c4 b
  c4 r
}

bass = \relative c' {
  \stemDown
  c16 g' e g c, g' e g
  c,16 g' e g c, g' e g
  b,16 g' d g b, g' d g
  b,16 g' d g b, g' d g
%5
  c,16 g' e g b, g' d g
  c,16 g' e g c, g' e g
  b,16 g' d g c, g' e g
  b,16 g' d g b, g' d g
  fis,16 d' a d fis, d' a d
%10
  g,16 d' b d g, d' b d
  fis,16 d' a d fis, d' a d
  g,16 d' b d g, d' b d
  b16 g' d g b, g' d g
  c,16 g' e g f,4
%15
  g16 g' e g g, g' d g
  c,16 g' e g c,4
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

  
