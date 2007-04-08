\version "1.6.9"

% 2nd movement tacet. Common for viola and basso.
\score { \context Staff \notes {
  \Clef
  \key f \major
  \time 4/4
  \property Score.skipBars = ##t
  \repeat "volta" 2 {
    \partial 8 r8 | R1*6 | r2 r4
  }
  \repeat "volta" 2 {
    r4 | R1*6
  }
  }

  \header { piece = "Largo" }
  \paper {}
}