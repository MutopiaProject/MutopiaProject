\version "2.11.14"

\include "defs.lyi"
\include "HornMvtI.lyi"
\include "HornMvtII.lyi"

instrument = "Corno in D"

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
      \set Score.skipBars = ##t
      << \hornMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \hornMvtII \outlineMvtII >>
    }
  }
}

