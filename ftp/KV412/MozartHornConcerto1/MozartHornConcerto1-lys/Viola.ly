\version "2.11.14"

\include "defs.lyi"
\include "ViolaMvtI.lyi"
\include "ViolaMvtII.lyi"

instrument = "Viola"

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
      << \violaMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violaMvtII \outlineMvtII >>
    }
  }
}

