\version "2.10.33"

\header {
  title             = "Opus 50 No. 17"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 17"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1345"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}


saprano = \relative bes {
  \stemUp
  <d bes'>8 <d bes'> <d bes'>
  <d a'>4 <d g>8
  <d c'>8 <d c'> <d bes'>
  <d a'>4 r8
%5
  <d a' d>8 <d a' d> <d a' d>
  d'16 bes d g bes8
  cis,8 cis cis
  d4.
  r16 d, bes' d, bes' d,
%10
  r16 d a' d, g d
  r16 d c' d, bes' d,
  a'4 r8
  d8 d d
  d4 r8
%15
  d8 g g
  r16 g, ees' g, d' g,
  r16 g cis g c a
  r16 d, bes' d, bes' d,
  r16 ees aes c ees8
%20
  r16 bes d g bes8
  r16 fis, a d fis a
  <bes, d g>4 r8
  <d, a' d>8 <d a' d> <d a' d>
%25
  <bes d g>4.
}

bass = \relative g {
  g8 g g
  c4 bes8
  a8 a g
  fis4 r8
%5
  fis8 fis fis
  g4 r8
  <ees' bes'>8 <ees a> <ees g>
  <d fis>4.
  g,4.
%10
  c4 bes8
  a4 g8
  fis16 d' a d a d
  fis,16 d' a d a d
  g,16 d' bes d bes d
%15
  b16 g' d g d g
  c,4 d8
  ees4 fis,8
  g4.
  c4.
%20
  d4.
  d4.
  g,4 r8
  <fis a>8 <fis a> <fis a>
%25
  g4.
}

\score {
  {
    \key g \minor
    \time 3/8
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
