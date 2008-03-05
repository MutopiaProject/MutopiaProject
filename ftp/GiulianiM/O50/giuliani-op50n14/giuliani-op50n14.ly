\version "2.10.33"

\header {
  title             = "Opus 50 No. 14"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 14"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1342"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative d'' {
  \stemUp
  \slurDown
  d8 d b b
  c8 c a4
  c16( b) a b <a c>8 <g b>
  <g b>4 a16 b c cis
%5
  d8 d b b
  c8 c a4
  b16 g e a b, g' a, fis'
  r16 a c fis <g, b g'>8 r
  c8 c a4
%10
  b8 b g4
  c8 a b g
  <g b>4 a16 b c cis
  d8 d b4
  g'8 g e4
%15
  d8 b c a
  g16 d g b c a c fis
  <b, g'>4 r
}

bass = \relative g {
  \stemDown
  b16 d b d g, d' g, d'
  a16 d a d fis, d' fis, d'
  g,4 fis16 d' g, d'
  g,16 d' b d fis,8 r
%5
  b16 d b d g, d' g, d'
  a d a d fis, d' fis, d'
  g,8 c b a
  d4 <g, g'>8 r
  fis16 d' a d fis, d' a d
%10
  g,16 d' b d g, d' b d
  fis,16 d' a d g, d' b d
  g,16 d' b d fis,8 r
  b16 d b d g, g' d g
  e16 g e g c, g' c, g' 
%15
  b,16 d g, d' a d fis, d'
  g,4 d'
  <g, g'>4 r
}

\score {
  {
    \key g \major
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

  
  
 
