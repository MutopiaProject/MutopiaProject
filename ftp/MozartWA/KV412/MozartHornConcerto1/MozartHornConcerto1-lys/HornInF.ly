\version "2.11.14"

\include "defs.lyi"
\include "HornMvtI.lyi"
\include "HornMvtII.lyi"

instrument = "Corno in F"

\paper
{
  ragged-last-bottom = ##f
}

\book
{
  \include "Header.lyi"
  \score
  {
    \new Staff
    {
      \key d \major
      \set Score.skipBars = ##t
      << \transpose f d \hornMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \key d \major
      \set Score.skipBars = ##t
      << \transpose f d \hornMvtII \outlineMvtII >>
    }
  }
}

