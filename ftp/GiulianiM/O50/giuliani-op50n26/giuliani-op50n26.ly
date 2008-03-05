\version "2.10.33"

\header {
  title             = "Opus 50 No. 26"
  composer          = "Mauro Giuliani"
  meter             = "Allegro"
  opus              = "Op. 50"
  piece             = "No. 26"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1354"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative d'' {
  \stemUp
  \slurDown
  \partial 8*1 d16 e
  r16 fis e r r d cis r
  r16 ais b dis e fis g e
  d16( cis) b a gis( a) b cis
  d16 e fis g gis a g e
%5
  r16 fis e r r d cis r
  r16 ais b dis e fis g e
  d16( cis) b a gis( a) b cis
  r16 fis, a d d,8 cis'16( d)
  e16 d a' gis \acciaccatura gis fis e d cis
%10
  d16 b gis' e b'8. d,16
  d16( cis) \acciaccatura cis b a gis'( fis) e d
  r16 a cis e <gis, b>8 cis16( d)
  e16 cis a' gis \acciaccatura gis fis e d cis
  d16 b gis' e b'( gis) e d
%15
  cis16 a' e cis e( d) b gis
  a4 <e'-0>16 d'( b) <e,-0>
  <e-0>16 cis'( a) <e-0> <e-0> b'( gis) <e-0>
  <e-0>16 e'( cis) <e,-0> <e-0> d'( b) <e,-0>
  <e-0>16 cis'( a) <e-0> <e-0> b'( gis) <e-0>
%20
  a4 r16 e, d' b
  r16 e, cis' a r e b' gis
  r16 e e' cis r e, d' b
  r16 e, cis' a r e b' gis
  a8 gis16( a) b( a) cis( b)
%25
  d16( cis) e( d) fis( e) g( fis)
  a16(gis) g( fis) e d cis b
  r16 a( gis) a b cis d e
  r16 fis e r r d cis r
  r16 ais b dis e fis( g) e
%30
  d16( cis) b a gis a b cis
  d16 e fis g gis a gis e
  r16 fis e r r d cis r
  r16 ais b dis e fis g e
  d16( cis) b a gis( a) b cis
%35
  d16 a d fis a8 <a, cis g'>
  <a d fis>4 r8 <g' cis>
  <fis d'>4 <a, d>8 <a d>
  <a d>4 r
}


bass = \relative d' {
  \partial 8*1 r8
  d16[ r r cis] b[ r r a]
  g4 r
  a4 a
  d4 r8 a
%5
  d16[ r r cis] b[ r r a]
  g4 r
  a4 a
  d4 r
  a4 a
%10
  e4 e
  a4 d
  e4 e,
  a4 a
  e4 e
%15
  a4 e
  a4 e
  e4 e
  e4 e
  e4 e
%20
  a4 e
  e4 e
  e4 e
  e4 e
  a4 r
%25
  r2
  r2
  a4 r
  d16[ r r cis] b[ r r a]
  g4 r
%30
  a4 a
  d4 r8 a
  d16[ r r cis] b[ r r a]
  g4 r
  a4 a
%35
  d4 r8 a
  d16 a d fis a8 <a, e''>
  <d d'>4 <d fis>8 <d fis>
  <d fis>4 r
}

\score {
  {
    \key d \major
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
      tempoWholesPerMinute = #(ly:make-moment 144 4)
    }
  }
}
