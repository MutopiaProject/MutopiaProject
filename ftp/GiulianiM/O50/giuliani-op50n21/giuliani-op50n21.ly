\version "2.10.33"

\header {
  title             = "Opus 50 No. 21"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 21"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1349"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative f'' {
  \stemUp
  d4 d d 
  cis2 r4
  <d f>4 <d f> <d f>
  <cis e>2 r4
%5
  <cis g'>4 <cis g'> <cis g'>
  f8. e16 d4 r
  <gis, d'>4 <gis d'> <gis d'>
  <a c>2 r4
  <a c>4 <a c> <a c>
%10
  c8. d16 c8. fis16 g4
  <bes, c> <bes c> <bes c>
  c8. d16 c8. gis'16 a4
  <c, f>4 <c f> <c f>
  <bes d f>4. e8 f d
%15
  <a c>4. f'8 g e
  f4 r a8. a16
  a4 r a8. a16
  a4 r a8. a16
  a4 g8 f e d
%20
  <a cis>4. <cis e>8 <d f>4
  <cis e>4. <e, cis'>8 <f d'>4
  <e cis'>4 <a cis a'> r
  d,8 d' e, d' f, d' 
  g,8 <d' e> a <d e> bes <d e>
%25
  r8 d f d e cis
  d4 <a d f> r
}

middle = \relative f'' {
  \stemDown
  s2.
  s2.
  s2.
  s2.
%5
  s2.
  s2.
  s2.
  s2.
  s2.
%10
  s2.
  s2.
  s2.
  s2.
  s4. cis8 d bes
%15
  s4. a8 bes g
}

bass = \relative f' {
  \stemDown
  d4 f gis
  a4 a, a\rest
  d4 f gis
  a4 a, a\rest
%5
  r8 a e' a e a,
  d8. e16 f4 f\rest
  bes,4 bes bes
  <a e'>2 r4
  f4 a f'
%10
  <e bes'>2 r4
  g,4 c e
  <f a>2 r4
  a,4 c <ees a>
  d4 bes4 s
%15
  c4 c s
  <f a>4 f, r
  r4 <a g' cis> r
  r4 <a f' d'> r
  <bes' d>4. r8 <gis b>4
%20
  a,8 a a a a a
  a8 a a a a a
  a4 a a\rest
  d4 e f
  g4 a bes
%25
  c2 a,4
  d4 d d\rest
}

\score {
  {
    \key f \major
    \time 3/4
    << \saprano \\ \middle \\ \bass >>
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
