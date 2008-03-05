\version "2.10.33"

\header {
  title             = "Opus 50 No. 32"
  composer          = "Mauro Giuliani"
  meter             = "Allegro"
  opus              = "Op. 50"
  piece             = "No. 32"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1360"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative a' {
  \stemUp
  \slurDown
  a4 cis8 e
  \acciaccatura e16 d cis d fis e8 cis
  a'4 cis,8 e
  \acciaccatura b16 a gis a cis b8 e,
%5
  a4 cis8 e
  \acciaccatura e16 d cis d fis e8 cis
  a'4 cis,8 fis
  e16 dis cis dis e4
  a,4 cis8 e
%10
  \acciaccatura e16 d cis d fis e8 cis
  a'4 cis,8 e
  \acciaccatura b16 a gis a cis b8 e,
  a4 cis8 e
  \acciaccatura e16 d cis d fis e8 cis
%15
  a'4 cis,8 e
  a,16 cis b gis a4
  b'16 e, b' e, d'( cis) b a
  gis16 e e e a e e e 
  b'16 e, e e cis' e, e e 
%20
  e'16( d) cis d b cis, e fis
  b16 e, b' e, d'( cis) b a
  gis16 e gis e a e a e
  a16 e b' e, cis' e, a c
  b16 b, cis dis e fis gis e
%25
  a8 a fis4
  b8 b gis4
  a8 a fis fis
  e8 fis gis4
  a8 a fis4
%30
  b8 b gis4
  a8 a fis fis
  e16 dis fis e gis fis a gis
  b16 a gis fis e d cis b
  a4 cis8 e
%35
  \acciaccatura e16 d cis d fis e8 cis
  a'4 cis,8 e
  \acciaccatura b16 a gis a cis b8 e,
  a4 cis8 e
  \acciaccatura e16 d cis d fis e8 cis
%40
  a'4 a,8 cis
  a16 cis b gis a cis e a
  r8 <b, d fis> r <b d gis>
  <a cis a'>4 <e a>8 <e a>
  <e a>4 r
}

bass = \relative a {
  a4 a
  a4 a
  a4 a
  a4 e
%5
  a4 a
  a4 a
  a4 a
  a4 gis
  a4 a
%10
  a4 a
  a4 a
  a4 e
  a4 a
  a4 a
%15
  a4 a
  a8 e a4
  e4 a
  e4 a
  e4 a
%20
  e4 e
  e4 a
  e4 a
  e4 a
  e4 r
%25
  fis'16 b fis b dis, b' b b
  gis16 b gis b e, b' b b
  fis16 b fis b a b a b
  gis16 b dis, b' e, b' b b
  fis16 b fis b dis, b' b b
%30
  gis b gis b e, b' b b
  fis16 b fis b a b a b
  <gis b>4 r
  r2
  a,4 a
%35
  a4 a
  a4 a
  a4 e
  a4 a
  a4 a
%40
  a4 a
  a8 e a4
  d4 e,
  a4 <a cis>8 <a cis>
  <a cis>4 r
}

\score {
  
  {
    \key a \major
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
      tempoWholesPerMinute = #(ly:make-moment 144 4)
    }
  }
} 
