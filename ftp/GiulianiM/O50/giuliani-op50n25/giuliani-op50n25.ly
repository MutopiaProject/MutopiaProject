\version "2.10.33"

\header {
  title             = "Opus 50 No. 25"
  composer          = "Mauro Giuliani"
  meter             = "Andantino grazioso"
  opus              = "Op. 50"
  piece             = "No. 25"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1353"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative d'' {
  \stemUp
  \slurDown
  r4. r4 <a fis'>8
  <b g'>4 <a fis'>8 \acciaccatura fis' <g, e'> <fis d'> <g e'>
  <a fis'>4. <fis d'>4 <fis d'>8
  <e cis'>8[ r <g e'>] <fis d'>[ r <d' fis>]
%5
  <d fis>4. <cis e>8 r e
  <b d e>8 \acciaccatura gis' fis e <a, cis e> d16 e \acciaccatura gis fis d
  d'16 b gis e fis e <a, cis>4 r8
  \acciaccatura cis16 b ais b cis d e gis fis \acciaccatura fis e d \acciaccatura d cis b
  <d, b'>8 <cis a'> <cis a'> <cis a'> <e cis'> <d b'>
%10
  <c a'>4. r16 gis' b d fis8
  r16 e cis a e8 r16 gis b d e, gis
  a16 cis e8 r r16 gis, b d fis8
  r16 e a cis e8 r16 d b d e, gis
  a8 a a a a a
%15
  a8 cis, cis a' d, d
  a' <cis, e> <cis e> a' <dis, fis> <dis fis>
  a'8. gis16 a ais b a g fis e d
  cis16 e g fis e d cis b a g fis e
  d8 r r r4 <fis' a>8
%20
  <g b>4 <fis a>8 \acciaccatura a <e g> <dis fis> <e g>
  <fis a>4. <d fis>4 <fis d'>8
  <e cis'>8 r <g e'> <fis d'> r <d e gis>
  <d e b'>4. <cis e a>4 dis8
  \acciaccatura fis16 e dis e fis g a ais8 b cis,
%25
  d16 cis d e fis g gis( a) g fis e d
  cis16 b ais b g' e <fis, d'>8 <a fis'> <g e'>
  <fis d'>4. r16 cis' d g b8
  r16 a fis d a8 r16 b e g a, cis
  d16 fis a8 r r16 cis, e g b8
%30
  r16 fis a d fis8 r16 e b d a cis
  <fis, d'>4. <d fis>8 <d fis> <d fis> 
  <d fis>8 <d fis> <d fis> <d e> <d e> <cis a'>
  <d fis>4. <a d>8 <a d> <a d>
  <a d>2.
}

bass = \relative d' {
  \stemDown
  d8 d d d d d
  d8 d d d d d
  d8 d d d4 r8
  r8 a r r a r
%5
  a8 d fis a r r
  gis,4 r8 a4 r8
  e4. fis4 r8
  <d' fis>4 r8 r4.
  e,4. e4 e8
%10
  a8 a a a a a
  a8 a a a a a
  a8 a a a a a
  a8 a a a a a
  a4 r8 r4.
%15
  r8 <a g'> <a g'> r <a fis'> <a fis'>
  r8 a a r a a
  <a e'' g>8 r4 r4.
  r2.
  d8 d d d d d
%20
  d8 d d d d d
  d8 d d d4 r8
  r8 a r r e r
  a8 a' e a,4 <a' cis>8
  <g b>4 r8 r4 <g bes>8
%25
  <fis a>4 r8 fis,4 r8
  g4. a4 cis8
  d8 d d d d d
  d8 d d d d d
  d8 d d d d d
%30
  d8 d d d d d
  d4. d8 cis b
  ais8 b fis g e ais
  <d a'>4. <d fis>8 <d fis> <d fis>
  <d a>2.
}

\score {
  {
    \key d \major
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
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
  
