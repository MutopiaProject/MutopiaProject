\version "2.16.0"

% 2nd movement tacet. Common for viola and basso.
\score { \context Staff  {
  \Clef
  \key f \major
  \time 4/4
  \set Score.skipBars = ##t
  \repeat "volta" 2 {
    \partial 8 r8 | R1*6 | r2 r4
  }
  \repeat "volta" 2 {
    r4 | R1*6
  }
  }

  \header { piece = "Largo" }
  \layout {}
}