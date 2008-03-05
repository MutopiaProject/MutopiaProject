\version "2.10.33"

\header {
  title             = "Opus 50 No. 27"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 27"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1355"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative a' {
  \stemUp
  \slurDown
  <cis e>4 <a cis>8 <b d>
  <cis e>4 <cis e>8 <a cis>
  d8 e <a, cis> e'
  <gis, b>8 <gis b>16( <a cis>) <b d>8 <bis dis>
%5
  <cis e>4 <cis e>8 <b d>
  <cis e>8 <cis e> <cis a'> <cis e>
  <a cis>8 e' <gis, b> d'
  r8 cis a4 \bar "|."
  r8 <gis b>16( <a cis>) <gis b>4
%10
  r8 <a cis>16 <b d> <a cis>4
  r8 <b d> r <a cis>
  <gis b>8 <a cis> <b d> <bis dis>
  <cis a>4 <a cis>8 <b d>
  <cis e>8 <cis e> <cis a'> <cis e>
%15
  cis8 e b e
  r8 cis a4 \bar "|."
  r8 e'16 cis cis a d b
  e16 a, cis e a e cis e
  r8 d16 b r8 cis16 a
%20
  r8 gis16 b a cis b d
  r8 e16 cis cis a d b
  e16 a, cis e a e cis e
  r8 cis16 a r8 b16 gis
  r16 cis d e fis a gis fis
%25
  fis16( e) dis e fis a gis fis
  fis16( e) dis e r8 d16 b
  r8 cis16 a r8 b16 gis
  a16 cis d e fis a gis fis
  fis16( e) dis e fis a gis fis
%30
  fis16 e dis e r b d b
  r16 a cis a r gis b gis
  r16 a cis a e a cis, e
  r4 <cis' a'>
  <a cis a'>4 r \bar "|."
}

bass = \relative a {
  \stemDown
  a4 r
  a4 r
  <e gis'>4 a
  e4 e
%5
  a4 r
  a4 r
  <a a'>4 e
  a8 e' cis4
  e,4. e8
%10
  e4. e8
  e4 e
  e4 r
  a4 r
  a4 r
%15
  <a a'>4 <e gis'>
  a8 e' cis4
  a4 r
  a4 a
  e4 a
%20
  e4 r
  a4 r
  a4 a
  e'4 e,
  a4 d
%25
  cis4 d
  cis4 d
  e4 e,
  a4 r
  cis4 d
%30
  cis4 d
  e4 e,
  a4 e'8 cis
  a4 <a a'>
  <a e'>4 r
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
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
  
