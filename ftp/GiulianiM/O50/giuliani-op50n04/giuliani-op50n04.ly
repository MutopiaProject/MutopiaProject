\version "2.10.33"

\header {
  title             = "Opus 50 No. 4"
  composer          = "Mauro Giuliani"
  meter             = "Grazioso"
  opus              = "Op. 50"
  piece             = "No. 4"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1332"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  \partial 8*1 d8
  d4. b
  g4. r4 d'8
  d4. c
  a4. r
%5
  d4. e
  d4. r8 c b
  a4. b
  a4. r
  d4. b
%10
  g4. r4 d'8
  d4. c
  a4. r
  d4. e
  d4. r8 c a
%15
  r8 b g r4.
  g4. a
  b4. d
  g,4. a
  b4. d
%20
  b4. d
  b4. d
  <g, b g'>4. r
}

bass = \relative c' {
  \stemDown
  \partial 8*1 r8
  g8 b d g, b d
  g,8 b d g, b d
  fis,8 a d fis, a d
  fis,8 a d fis, a d
%5
  b8 d g c, e g
  b,8 d g g,4 r8
  fis8 a d g, b d
  fis,8 a d c b a
  g8 b d g, b d
%10
  g,8 b d g, b d 
  fis,8 a d fis, a d
  fis,8 a d fis, a d
  b8 d g c, e g
  b,8 d g c,4.
%15
  d4. d8 e fis
  g,8 b d fis, a d
  g,8 b d fis, a d
  g,8 b d fis, a d
  g,8 b d fis, a d
%20
  g,8 b d fis, a d
  g,8 b d fis, a d
  g,4. r
}

\score {
  {
    \key g \major
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
      tempoWholesPerMinute = #(ly:make-moment 108 4)
    }
  }
}

  
