\version "2.11.14"

\include "defs.lyi"
\include "BassoonsMvtI.lyi"
\include "BassoonsMvtII.lyi"

instrument = "Fagotti"

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
      << \bassoonsMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \bassoonsMvtII \outlineMvtII >>
    }
  }
}

