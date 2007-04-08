\version "2.11.12"

\include "defs.lyi"
\include "ViolaMvtI.lyi"
\include "ViolaMvtII.lyi"
\include "ViolaMvtIII.lyi"

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
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violaMvtIII \outlineMvtIII >>
    }
  }
}

