\version "2.10.33"

\header {
  title             = "Opus 50 No. 13"
  composer          = "Mauro Giuliani"
  meter             = "Allegro"
  opus              = "Op. 50"
  piece             = "No. 13"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1341"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative a' {
  \stemUp
  r16 a c a e' a, c a a,16 a' b, a' c, a' a, a'
  r16 a d a f' a, d a d,16 a' e a f a d, a'
  r16 gis b gis e' gis, b gis e gis f gis e gis d gis
  r16 a c a e' a, c a r gis d' gis, e' gis, d' gis,
%5
  r16 a c a e' a, c a a, a' b, a' c, a' a, a'
  r16 a d a f' a, d a d, a' e a f a d, a'
  r16 a c a e' a, c a r a c a e' a, c a
  r16 a b a e' a, b a r gis b gis e' gis, b gis
  r16 a c e r gis, d' e r a, c e r gis, b e
%10
  r16 a, c e r gis, d' e r a, c e r gis, b e
  a,,4 r r2
}

bass = \relative a {
  \stemDown
  a4 r a8 b c a
  d4 r d8 e f d
  e4 r e8 f e d
  c2 b
%5
  a4 r a8 b c a
  d4 r d8 e f d
  e2 e,
  e'2 e,
  a4 e a e
%10
  a4 e a e
  a4 r r2
}

\score {
  {
    \key a \minor
    \time 4/4
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

  
