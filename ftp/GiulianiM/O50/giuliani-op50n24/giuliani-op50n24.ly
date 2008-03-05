\version "2.10.33"

\header {
  title             = "Opus 50 No. 24"
  composer          = "Mauro Giuliani"
  meter             = "Allegro"
  opus              = "Op. 50"
  piece             = "No. 24"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1352"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative a' {
  \stemUp
  \partial 8*1 e8
  a4 a16 e cis' b
  a4 a16 e cis' b
  r16 a cis e r a, d fis
  <cis e>16 a' gis fis e dis d b
%5
  a4 a16 e cis' a
  a4 a16 e cis' b
  r16 a cis e d b d gis
  r8 a a4
  d,4 b
%10
  cis4 e
  d8 e cis d
  b4 r
  d4 cis
  cis4 e
%15
  <bis dis>8 <b d> <ais cis> <a c>
  b16 e, dis e eis fis g gis
  a4 a16 e cis' b
  a4 a16 e cis' b
  r16 a cis e r a, d fis
%20
  <cis e>16 a' gis fis e dis d b
  a4 a16 e cis' b
  a4 a16 e cis' b
  r16 a cis e d b d gis
  r8 a a a 
%25
  <cis, a'>4 r
}

bass = \relative a {
  \partial 8*1 r8
  a16 e' cis e a,8 e
  a16 e' cis e a,8 e
  a4 a
  a4 e
%5
  a16 e' cis e a,8 e
  a16 e' cis e a,8 e
  a4 e
  a8 <a' cis> <a, a' cis>4
  b'16 e,, e e gis' e, e e
%10
  a'16 e, e e cis'' e,, e e
  b''16 e,, gis' e, a' e, b'' e,,
  gis'16 e, e' e, e' e, e' e,
  b''16 e,, e e gis' e, e e
  a'16 e, e e cis'' e,, e e 
%15
  bis''16 e,, b'' e,, ais' e, a' e,
  <gis' e,>4 r
  a,16 e' cis e a,8 e
  a16 e' cis e a,8 e
  a4 a
%20
  a4 e
  a16 e' cis e a,8 e
  a16 e' cis e a,8 e
  a4 e
  a8 <a' cis> <e a cis> <cis a' cis>
%25
  <a e' a>4 r
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
