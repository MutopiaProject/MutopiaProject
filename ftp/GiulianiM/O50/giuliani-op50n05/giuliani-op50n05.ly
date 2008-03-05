\version "2.10.33"

\header {
  title             = "Opus 50 No. 5"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 5"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1333"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}


saprano = \relative c' {
  \stemUp
  \partial 8*1 e8
  a4 a16 c b a
  b4 e16 f e d
  c16 e d c b d c b
  r16 a e c a8 e'
%5
  a4 a16 c b a
  b16 g b d f a g f
  e16 g f e d f e d
  c4 r16 c b a
  e'4 r16 gis, b d
%10
  c4 r16 c e a
  g16 f8 e d c16
  r16 e, a c <gis b>8 e
  a4 a16 c e a
  f8. f16 e8. e16
%15
  g16 f d b e, a e, gis'
  r16 a c e r gis, b e
  a,, c' f, a d, b' e, gis
  r16 e' c a gis e' d b
  a,16 a' f a e a dis, a'
%20
  r16 a c a r gis a gis
  r16 a c e a[ e c e]
  \partial 8*3 a,4 r8
}

bass = \relative c' {
  \stemDown
  \partial 8*1 r8
  r16 a c e a,4
  r16 e' gis b e,,4
  a4 e
  a4 a8 s
%5
  r16 a c e a,4
  g4 d'
  c4 b
  r16 c e g c,8 r
  e,16 gis' b gis e4
%10
  a,16 c e a a,4
  d8 c b a
  a4 e
  r16 a c e r4
  r16 d a'8 r16 c, a'8
%15
  d,4 e8 e,
  a4 e
  a8 f' d e
  a,4 e
  a8 f' e dis
%20
  e4 e,
  a4 r
  a4 r8
}

\score {
  {
    \key a \minor
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
