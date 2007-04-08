\version "2.11.13"
\header {
 title = "Melodia Op. 1 No. 2"
 composer = "M. A. Granato"
 piece = "Poco Allegretto"

 mutopiatitle = "Melodia Op. 1 No. 2"
 mutopiacomposer = "GranatoMA"
 mutopiaopus = "Op. 1"
 mutopiainstrument = "Piano"
 date = "2005"
 source = "Original composition"
 style = "Classical"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "M. A. Granato"
 maintainerEmail = "m.gr@hotmail.com"
 lastupdated = "2007/February/8"
 footer = "Mutopia-2007/02/11-924"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upper = \relative c'' {
 \clef treble
 \key c \major
 \time 4/4

 \repeat volta 2{
  e4.\( c8 d4. e8
  f4 g8 f8 e2\)
 }
 \alternative {
  { d2\( c8 d8 e8 f8\)}
  { d4.\( c8 b4. c8\)}
 }
 c8\( b8 c8 d8 e8 d8 e8 f8\)
 \bar "||"
 e4.\( c8 d4. d8
 f4. e8 e4. e8
 g4. f8 e2\)
 d8\( c8 d8 e8 c2\)
 e8\( c8 e8 c8 e4\) r4
 f8\( d8 f8 d8 f4\) r4
 g8\( e8 g8 e8 a8 g8 f8 e8
 d8 e8 f8 c8 e2
 d2\) e8\( c8 e8 c8
 e8 c8 e8 g8 f8 d8 f8 d8
 f8 d8 f8 g8 e8 c8 e8 c8
 e8 c8 e8 g8 f8 d8 f8 d8
 f8 d8 b8 d8 c4.\) c8
 c4 r4 b4. b8
 b4 r4 a4.\( a8
 a4 c4 g2\)
 r2 f4. f8
 f4. g8\( e4 g4
 c2\) c4.\( a8
 d4\) d4~ d4. c8
 c1^\fermata
 \bar "|."
}

lower = \relative c' {
 \clef treble
 \key c \major
 \time 4/4

 \repeat volta 2{
  c2 b2
  d2 << { r4 g8 e8} \\
            { c2} >>
 }
 \alternative {
  { << { r4 f8 d8} \\
         { b2} >> e2}
  { f2 d2}
 }
 e4 r4 c4 r4
 \bar "||"
 c8 g'8 e8 g8 b,8 g'8 d8 g8
 b,8 g'8 d8 g8 c,8 g'8 e8 g8
 c,8 a'8 f8 a8 c,8 g'8 e8 g8
 b,8 g'8 d8 g8 c,8 g'8 e8 g8
 c,8 g'8 e8 g8 c,8 g'8 e8 g8
 b,8 g'8 d8 g8 b,8 g'8 d8 g8
 c,8 g'8 e8 g8 c,8 a'8 f8 a8
 b,8 g'8 d8 g8 c,8 g'8 e8 g8
 b,8 g'8 d8 g8 c,8 g'8 e8 g8
 c,8 g'8 e8 g8 b,8 g'8 d8 g8
 b,8 g'8 d8 g8 c,8 g'8 e8 g8
 c,8 g'8 e8 g8 b,8 g'8 d8 g8
 b,8 g'8 d8 g8 c,8 g'8 e8 g8
 c,8 g'8 e8 g8 b,8 g'8 d8 g8
 b,8 g'8 d8 g8
 \clef bass
 a,8 e'8 c8 e8
 a,8 e'8 c8 e8 g,8 e'8 b8 e8
 g,8 e'8 b8 e8 f,8 c'8 a8 c8
 f,8 c'8 a8 c8 e,8 c'8 g8 c8
 a8 e'8 c8 e8 a,8 e'8 c8 e8
 g,8 e'8 b8 e8 g,8 e'8 b8 e8
 << c1 e1_\fermata >>
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
   tempoWholesPerMinute = #(ly:make-moment 100 4)
  }
 }
}
