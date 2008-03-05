\version "2.10.33"

\header {
  title             = "Opus 50 No. 22"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 22"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1350"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative d'' {
  \stemUp
  \slurDown
  \partial 4*1 d8 e
  fis16( g) e( fis) d fis e d
  cis16( d) b cis a( gis) a b
  cis16( d) e fis g( e) a g
  fis16( g) e( fis) d a d e
%5
  fis16( g) e fis d fis e d
  cis16( d) b cis a( gis) a b
  cis16 d e fis g e a cis,
  r16 d a fis d8 a''
  g16( a) e a g( a) e a
%10
  fis16( g) a fis d a d fis
  a16( g) dis e g( fis) cis d
  e16 cis d b a cis e a
  gis16( a) e a g( a) e a
  fis16 g a fis d fis e d
%15
  e16 a e cis e d b gis
  r16 a gis a b cis d e
  fis16( g) e fis d fis e d
  cis16 d b cis a gis a b
  cis16( d) e fis g( e) a g
%20
  fis16( g) e fis d a d e
  fis16( g) e fis d fis e d
  r16 b( cis) d e( fis) g e
  r16 fis, a d r e, a cis
  <d fis>4 r
}

bass = \relative d' {
  \stemDown
  \partial 4*1 r4
  d4 d
  a4 a
  a4 a
  d4 d
%5
  d4 d
  a4 a
  a4 a
  d4 d8 r
  a4 a
%10
  d4 d
  a4 d
  a4 r
  a4 a
  d4 d
%15
  a4 e
  a4 r
  d4 d
  a4 a
  a4 a
%20
  d4 d
  d4 d
  g,4 r
  a4 a
  <d a'>4 r
}

\score {
  {
    \key d \major
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
  
