\version "2.11.12"

\include "defs.lyi"
\include "ViolinIMvtI.lyi"
\include "ViolinIMvtII.lyi"
\include "ViolinIMvtIII.lyi"

instrument = "Violin I"

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
      << \violinIMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinIMvtII \outlineMvtII >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinIMvtIII \outlineMvtIII >>
    }
  }
}

