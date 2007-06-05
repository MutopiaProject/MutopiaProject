\version "2.11.24"

\include "HornMvtI.lyi"
\include "HornMvtII.lyi"
\include "HornMvtIII.lyi"
\include "HornMvtIV.lyi"

instrument = "Horn in F"

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
      << \transpose f ees \hornMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \transpose f ees \hornMvtII \outlineMvtII >>
    }
    \header { piece = "Scherzo" }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \transpose f ees \hornMvtIII \outlineMvtIII >>
    }
  }
  \score
  {
    \new Staff
    {
      \set Score.skipBars = ##t
      << \transpose f ees \hornMvtIV \outlineMvtIV >>
    }
    \header { piece = "Finale" }
  }
}

