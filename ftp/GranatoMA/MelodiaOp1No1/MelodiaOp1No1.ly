\version "2.11.13"
\header {
 title = "Melodia Op. 1 No. 1"
 composer = "M. A. Granato"
 piece = "Andantino grazioso"

 mutopiatitle = "Melodia Op. 1 No. 1"
 mutopiacomposer = "GranatoMA"
 mutopiaopus = "Op. 1"
 mutopiainstrument = "Piano"
 date = "2005"
 source = "Original composition"
 style = "Classical"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "M. A. Granato"
 maintainerEmail = "m.gr@hotmail.com"
 lastupdated = "2007/January/27"
 footer = "Mutopia-2007/01/27-917"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upper = \relative c'' {
 \clef treble
 \key c \major
 \time 2/4

 \repeat volta 2{
  e4\( g4
  c,8.( d16) e4
  f8.( g32 f32) e8.( f32 e32)
  d8.( e16) c4\)
  e8 e16-. e16-. g8 g16-. g16-.
  c,8 c16-. c16-. e4
  f16-. f16-. f16 g32 f32 e16-. e16-. e16 f32 e32
  d16-. d16-. d16 e16 c8. r16
  a'8.\( (g32 f32) g8.( f32 e32)
  f8.( e32 d32) e4\)
  a16-. a16-. a16 g32 f32 g16-. g16-. g16 f32 e32
  f8[ g8 f8 d8]
 }
 \alternative {
  { c16-. b16-. c16-. d16-. e16-. d16-. e16-. f16-.}
  { c8[ b8 c8 d8]}
 }
 \repeat volta 2 {
  c4~\( c8.( d32 c32)
  b2\)
  c8\( c8~ c8.( d32 c32)
  b4\) r4
  c4\( a4
  f'4 e4
  d4~ d8.( b16)
  c4\) r4
  d8\( d8~ d8.( b16)\)
 }
 \alternative {
  { c16\( b16 c16 d16 e16 d16 c16 b16\)}
  { c16\( b16 c16 d16 e16 d16 e16 f16\)}
 }
 \bar "||"
 e4\( g4
 c,8.( d16) e4
 f8.( g32 f32) e8.( f32 e32)
 d8.( e16) c4\)
 e8 e16-. e16-. g8 g16-. g16-.
 c,8 c16-. c16-. e4
 f16-. f16-. f16 e32 d32 e16-. e16-. e16 d32 c32
 d16-. d16-. d16 b16 c4
 r8 b16\( c16 d8.( b16)
 f'8 d8 e4\)
 r8 b16\( c16 d8.( b16)
 f'8 g8 e4\)
 r8 f16\( g16 a8.( g16)
 f8 e8 f8.( e16)
 d4\) c16 d16 e16 f16
 e8.( d16) d8.( c16)
 c8 r8 c,16 d16 e16 f16
 e8.( d16) d8.( c16)
 c2^\fermata
 \bar "|."
}

lower = \relative c' {
 \clef treble
 \key c \major
 \time 2/4

 \repeat volta 2{
  c16 g'16 e16 g16 b,16 g'16 d16 g16
  c,16 g'16 e16 g16 c,16 g'16 e16 g16
  b,16 g'16 f16 g16 c,16 g'16 e16 g16
  b,16 g'16 d16 g16 c,16 g'16 e16 g16
  c,16 g'16 e16 g16 b,16 g'16 d16 g16
  c,16 g'16 e16 g16 c,16 g'16 e16 g16
  b,16 g'16 f16 g16 c,16 g'16 e16 g16
  b,16 g'16 f16 g16 c,16 g'16 e16 g16
  f16 c'16 a16 c16 e,16 c'16 g16 c16
  d,16 a'16 f16 a16 c,16 a'16 e16 a16
  f16 c'16 a16 c16 e,16 c'16 g16 c16
  d,8[ b8 d8 f8]
 }
 \alternative {
  { e16-. r8. c16-. r8.}
  { e4. r8
    \clef bass
  }
 }
 \repeat volta 2 {
  a,16 e'16 c16 e16 a,16 e'16 c16 e16
  g,16 e'16 b16 e16 g,16 e'16 b16 e16
  a,16 e'16 c16 e16 a,16 e'16 c16 e16
  g,16 e'16 b16 e16 g,16 e'16 b16 e16
  f,16 c'16 a16 c16 e,16 c'16 g16 c16
  d,16 a'16 f16 a16 c,16 a'16 e16 a16
  b,16 g'16 d16 g16 b,16 g'16 d16 g16
  c,16 g'16 e16 g16 c,16 g'16 e16 g16
  b,16 g'16 d16 g16 b,16 g'16 d16 g16
 }
 \alternative {
  { e4. r8}
  { e8-. r8 c'8-. r8
     \clef treble
  }
 }
 \bar "||"
 c16 g'16 e16 g16 b,16 g'16 d16 g16
 c,16 g'16 e16 g16 c,16 g'16 e16 g16
 b,16 g'16 f16 g16 c,16 g'16 e16 g16
 b,16 g'16 d16 g16 c,16 g'16 e16 g16
 c,16 g'16 e16 g16 b,16 g'16 d16 g16
 c,16 g'16 e16 g16 c,16 g'16 e16 g16
 b,16 g'16 f16 g16 c,16 g'16 e16 g16
 b,16 g'16 f16 g16 c,16 g'16 e16 g16
 c,16 g'16 e16 g16 b,16 g'16 d16 g16
 b,16 g'16 d16 g16 c,16 g'16 e16 g16
 c,16 g'16 e16 g16 b,16 g'16 d16 g16
 b,16 g'16 d16 g16 c,16 g'16 e16 g16
 b,16 g'16 d16 g16 a,16 e'16 c16 e16
 g,16 e'16 b16 e16 a,16 f'16 c16 e16
 b16 g'16 d16 g16 e4
 c4 f4
 e8 r8
 \clef bass
 e,4
 c'4 b4
 e,2_\fermata
 \bar "|."
}

\score {
 \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
 >>
 \layout {}
} 

\score {
 \unfoldRepeats {
  \new PianoStaff <<
   \new Staff = "upper" \upper
   \new Staff = "lower" \lower
  >>
 }
 \midi {
  \context {
   \Score
   tempoWholesPerMinute = #(ly:make-moment 60 4)
  }
 }
}
