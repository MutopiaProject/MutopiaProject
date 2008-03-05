\version "2.10.33"

\header {
  title             = "Opus 50 No. 28"
  composer          = "Mauro Giuliani"
  meter             = "Andantino"
  opus              = "Op. 50"
  piece             = "No. 28"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1356"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative c'' {
  \stemUp
  \slurDown
  e4. e8  \acciaccatura g f e
  d4. d8 e d
  c4 c8 e4 g8
  d4. g8 fis f
%5
  e4. e8 \acciaccatura g f e
  d4. d8 e d
  c8 e c \acciaccatura c b a b
  c4. r
  r8 g g g a b
%10
  r8 c c \acciaccatura d c b c
  r8 d d d cis d
  r8 e e f16( e) d c b a
  r8 g g g a b
  r8 c c d16( c) b c d e
%15
  r8 f d r e c
  g'4. r8 fis f
  e4. e8 \acciaccatura g f e
  d4. d8 e d
  c4 c8 e4 g8
%20
  d4. g8 fis f
  e4. e8 \acciaccatura g f e
  d4. d8 e d
  c8 e c \acciaccatura c b a b
  c4. r
%25
  <g c>4. r \bar "|."
}

bass = \relative c' {
  \stemDown
  c8 e g c, e g
  b,8 f' g b, f' g
  c,8 e g c, e g
  b,8 d g g, a b
%5
  c8 e g c, e g
  b,8 f' g b, f' g
  <c, e>4. <g f'>
  <c e>8 g' e c4 r8
  <g f'>4. <g f'>
%10
  <c e>4. <c e>
  <b g'>4. <b g'>
  <c g'>4. <c g'>
  <g f'>4. <g f'>
  <c e>4. <c e>
%15
  <b g'>4. <c g'>
  b8 d g g, a b
  c8 e g c, e g
  b,8 f' g b, f' g
  c,8 e g c, e g
%20
  b,8 d g g, a b
  c8 e g c, e g
  b,8 f' g b, f' g
  <c, e>4. <g f'>
  <c e>8 g' e c e g
%25
  <c, e>4. r
}

\score {
  {
    \key c \major
    \time  6/8
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
