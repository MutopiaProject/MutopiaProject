\version "2.11.12"

\include "defs.lyi"
\include "ViolinIIMvtI.lyi"
\include "ViolinIIMvtII.lyi"
\include "ViolinIIMvtIII.lyi"

instrument = "Violin II"

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
      << \violinIIMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinIIMvtII \outlineMvtII >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinIIMvtIII \outlineMvtIII >>
    }
  }
}

