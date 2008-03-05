\version "2.10.33"

\header {
  title             = "Opus 50 No. 9"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 9"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1337"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}


saprano = \relative c'' {
  \stemUp
  \slurDown
  \partial 8*1 <b d>8
  <e g>4 r8 <cis e>
  <d fis>4 r8 d
  <cis e>8 a' <cis, e> a'
  fis16( g) e( fis) d8 <d fis>
%5
  <e g>4 r8 <cis e>
  <d fis>4 r8 d
  <a cis>8 e' <gis, b> e'
  r16 a, e cis r a' d fis
  <cis g'>4 r16 cis e g
%10
  <d fis>4 r16 a d fis
  e16 cis a' cis, e cis a' e
  fis16( g) e(fis) d a d fis
  <cis g'>4 r16 cis e g
  <d fis>4 r16 a d fis
%15
  e16 fis g e cis d e cis
  d,16 <d' fis> d,16 <d' fis> cis, <d' fis> cis, <d' fis>
  b,16 <d' fis> b, <d' fis> a, <d' fis> a, <d' fis>
  g,,16 <d'' e> g,, <d'' e> gis,, <d'' f> gis,, <d'' f>
  r16 a d fis r a, cis e
%20
  \times 2/3 { d,16 d' fis } \times 2/3 { d,16 d' fis } \times 2/3 { cis,16 d' fis } \times 2/3 { cis,16 d' fis }
  \times 2/3 { b,,16 d' fis } \times 2/3 { b,,16 d' fis } \times 2/3 { a,,16 d' fis } \times 2/3 { a,,16 d' fis }
  \times 2/3 { g,,16 d'' e } \times 2/3 { g,,16 d'' e } \times 2/3 { gis,,16 d'' f } \times 2/3 { gis,,16 d'' f }
  \times 2/3 { a,,16 d' fis } \times 2/3 { a,16 d fis } \times 2/3 { a,,16 cis' e } \times 2/3 { a, cis e }
  r16 d fis d a d fis, a 
%25
  d,4 <cis' a'>
  <d fis>2
}

bass = \relative a {
  \partial 8*1 r8
  r8 a a r
  r8 d d r
  a4 a
  d8 a d r
%5
  r8 a a r
  r8 d d r
  a4 e
  a4 a
  r8 a a r
%10
  r8 d d r
  a4 a
  d8 a d r
  r8 a a r
  r8 d d r
%15
  g,4 a
  d8 d cis cis
  b8 b a a
  g8 g gis gis
  a4 a
%20
  d8 d cis cis
  b8 b a a
  g8 g gis gis
  a4 a
  d4 a'8 fis
%25
  d4 <a a'>
  <d a'>2
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
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
