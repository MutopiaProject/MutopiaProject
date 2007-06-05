\version "2.11.14"

\include "defs.lyi"
\include "BassMvtI.lyi"
\include "BassMvtII.lyi"

instrument = "Basso"

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
      << \bassMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \bassMvtII \outlineMvtII >>
    }
  }
}

