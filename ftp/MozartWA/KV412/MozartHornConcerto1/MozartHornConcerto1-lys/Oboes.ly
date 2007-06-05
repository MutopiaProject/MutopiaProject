\version "2.11.14"

\include "defs.lyi"
\include "OboesMvtI.lyi"
\include "OboesMvtII.lyi"

instrument = "Oboi"

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
      << \oboesMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \oboesMvtII \outlineMvtII >>
    }
  }
}

