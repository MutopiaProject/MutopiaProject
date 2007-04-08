\version "2.9.24"

\include "HornMvtI.lyi"
\include "HornMvtII.lyi"
\include "HornMvtIII.lyi"
\include "HornMvtIV.lyi"

instrument = "Horn in Es"

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
    \header { piece = "Scherzo" }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \hornMvtIII \outlineMvtIII >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \hornMvtIV \outlineMvtIV >>
    }
    \header { piece = "Finale" }
  }
}

