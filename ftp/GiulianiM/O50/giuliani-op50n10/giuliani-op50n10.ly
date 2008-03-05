\version "2.10.33"

\header {
  title             = "Opus 50 No. 10"
  composer          = "Mauro Giuliani"
  meter             = "Allegro"
  opus              = "Op. 50"
  piece             = "No. 10"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1338"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative d'' {
  \stemUp
  \slurDown
  #(revert-auto-beam-setting '(end * * 2 4) 1 4)
  \partial 8*2 fis8 g
  a8( fis) e d
  d8( cis) e fis
  g8( e) a g
  eis8( fis) fis g
%5
  a8( fis) e d
  d8( cis) e cis
  cis8( b) d b
  gis8( a) fis' g
  a8( fis) e d
%10
  d8( cis) e fis
  g8( e) a g
  eis8( fis) a g
  dis8( e) g fis
  cis8( d) fis d
%15
  cis8( b) cis a
  d8 a d fis
  e8 cis e g
  fis8 a, d fis
  a8( gis) g e
%20
  d8 a d fis
  e8 cis e g
  fis8 a, d fis
  a8( gis) g e
  r8 d fis d
%25
  a8 d fis, a
  r8 d fis d
  a8 d fis, a
  d,4 r
  <cis' e a>4 r
%30
  <fis d'>2
}

bass = \relative d' {
  \stemDown
  \partial 8*2 r4
  d4 r
  a4 r
  a4 r
  d4 r
%5
  d4 r
  a4 r
  e4 r
  a4 r
  d4 r
%10
  a4 r
  a4 r
  d4 r
  a4 r
  d4 r
%15
  a4 r
  d4 r
  a4 r
  d4 r
  a4 r
%20
  d4 r
  a4 r
  d4 r
  a4 r
  d4 r
%25
  a'4 fis
  d4 r
  a'4 fis
  d4 s
  <a a'>4 r
%30
  <d d'>2
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
