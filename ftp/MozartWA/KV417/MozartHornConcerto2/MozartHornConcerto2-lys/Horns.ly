\version "2.11.12"

\include "defs.lyi"
\include "HornsMvtI.lyi"
\include "HornsMvtII.lyi"
\include "HornsMvtIII.lyi"

instrument = "Corni in Es"

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
      << \hornsMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \hornsMvtII \outlineMvtII >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \hornsMvtIII \outlineMvtIII >>
    }
  }
}

