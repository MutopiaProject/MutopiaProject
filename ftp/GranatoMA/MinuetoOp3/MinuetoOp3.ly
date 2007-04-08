\version "2.11.13"
\header {
 title = "Minueto Op. 3"
 composer = "M. A. Granato"
 piece = "Poco Allegretto"

 mutopiatitle = "Minueto Op. 3"
 mutopiacomposer = "GranatoMA"
 mutopiaopus = "Op. 3"
 mutopiainstrument = "Piano"
 date = "2006"
 source = "Original composition"
 style = "Classical"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "M. A. Granato"
 maintainerEmail = "m.gr@hotmail.com"
 lastupdated = "2007/January/26"
 footer = "Mutopia-2007/01/26-916"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upper = \relative c'' {
 \clef treble
 \key e \minor
 \time 3/4

 g'8-\markup { \italic dolce} fis8 g4 e4-.
 e4-. g8 fis8 g4
 d4-. d4-. g8 fis8
 g4 c,4-. c4-.
 fis8 e8 d8 c8 d4~
 d2 g8 fis8
 g4 e4-. e4-.
 g8 fis8 g4 d4-.
 d4-. g8 fis8 g4
 c,4-. c4-. fis8 e8
 d8 fis8 g2~
 g2 r4
 g8 a8 b8 g8 e4-.
 e4-. fis8 g8 a8 fis8
 d4-. d4-. e8 fis8
 g8 e8 c4-. c4-.
 c8 d8 e8 c8 d4~
 d4. r8 g8 a8
 b8 g8 e4-. e4-.
 fis8 g8 a8 fis8 d4-.
 d4-. e8 fis8 g8 e8
 c4-. c4-. d8 c8
 b8 c8 a4 r4
 d,8 e8 fis8 g8 a8 b8
 c4-. b4-. fis8 g8
 a8 b8 c8 d8 e4-.
 d4-. a8 b8 c8 d8
 e8 fis8 g4 fis4
 e4 \times 2/3 {fis8 g8 a8} d,4-.
 fis4-. g4 r4
 g8 fis8 g4 e4-.
 e4-. g8 fis8 g4
 d4-. d4-. g8 fis8
 g4 c,4-. c4-.
 fis8 e8 d8 fis8 g4~
 g2 r4
 \bar "|."
}

lower = \relative c' {
 \clef bass
 \key e \minor
 \time 3/4

 e2.
 c2.~
 c4 b2~
 b2 a4
 d2 b4
 g8 a8 b8 g8 e'4~
 e2 c4~
 c2.
 b2.~
 b4 a4 d4
 b4 g2
 d8 e8 fis8 g8 a8 b8
 e2.
 c4 d2~
 d4 b4 c4~
 c2 a4~
 a4 c4 b4
 g8 a8 b8 g8 e'4~
 e2 c4
 d2.
 b4 c2~
 c4 a4 b4
 g4 fis4 d4
 fis2.
 e4-. g4-. a4~
 a2 g4-.
 b4-. fis2~
 fis4 b4 d4
 c4 d4 b4-.
 d4-. b2
 e2.
 c2.~
 c4 b2~
 b2 a4
 d4 b4 g4~
 g4 d4 g,4
 \bar "|."
}

\score {
 \new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
 >>
 \layout {}
 \midi {
  \context {
   \Score
   tempoWholesPerMinute = #(ly:make-moment 135 4)
  }
 }
} 
