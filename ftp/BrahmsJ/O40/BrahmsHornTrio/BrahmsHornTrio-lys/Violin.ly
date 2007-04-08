\version "2.9.24"

\include "ViolinMvtI.lyi"
\include "ViolinMvtII.lyi"
\include "ViolinMvtIII.lyi"
\include "ViolinMvtIV.lyi"

instrument = "Violin"

\book
{
  \include "Header.lyi"
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinMvtII \outlineMvtII >>
    }
    \header { piece = "Scherzo" }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinMvtIII \outlineMvtIII >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \violinMvtIV \outlineMvtIV >>
    }
    \header { piece = "Finale" }
  }
}

