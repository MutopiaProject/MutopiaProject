\version "2.10.33"

\header {
  title             = "Opus 50 No. 8"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 8"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1336"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}


saprano = \relative c'' {
  \stemUp
  \partial 8*1 b8
  c4 a8 r4 a8
  b4 g8 r4 b8
  a4 d8 d4 d8
  b4. r4 b8
%5
  c4 a8 r4 a8
  b4 g8 r4 b8
  a4 d8 d4 d8
  g,4. r4 g'8
  e4 c8 r4 e8
%10
  d4. b4 g'8
  e4 c8 g'4 e8
  d4. r4 b8
  c4 a8 r4 a8
  b4 g8 r4 b8
%15
  a4 d8 d4 d8
  b4. r4 b8
  c4 a8 r4 a8
  b4 g8 r4 b8
  a4 d8 d4 d8
%20
  <g, b>4. <a c>
  <g b>4. <a c>
  <g b>4. r
}

bass = \relative g {
  \partial 8*1 r8
  fis8 a d fis, a d
  g,8 b d g, b d
  fis,8 a d fis, a d
  g,8 b d g, b d
%5
  fis,8 a d fis, a d
  g,8 b d g, b d
  fis,8 a d fis, a d
  g,8 b d g, b d
  c8 e g c, e g
%10
  b,8 d g b, d g
  c,8 e g c, e g
  b,8 d g g, b d
  fis,8 a d fis, a d
  g,8 b d g, b d
%15
  fis,8 a d fis, a d
  g,8 b d g, b d
  fis,8 a d fis, a d
  g,8 b d g, b d
  fis,8 a d fis, a d
%20
  g,8 b d fis, a d
  g,8 b d fis, a d
  <g, b d>4. r
}
  
  
\score {
  {
    \key g \major
    \time 6/8
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
  
