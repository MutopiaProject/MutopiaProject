\version "2.11.25"

\include "ViolinMvtI.lyi"
\include "ViolinMvtII.lyi"
\include "ViolinMvtIII.lyi"
\include "ViolinMvtIV.lyi"

instrument = "Violin"

\paper
{
  ragged-last-bottom = ##f
  %#(define page-breaking optimal-page-breaks)
}

\book
{
  \include "Header.lyi"
  \score
  {
    \new Staff
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \violinMvtI \outlineMvtI >>
    }
  }
  \score
  {
    \new Staff
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \violinMvtII \outlineMvtII >>
    }
    \header { piece = "Scherzo" }
  }
  \score
  {
    \new Staff
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \violinMvtIII \outlineMvtIII >>
    }
  }
  \score
  {
    \new Staff
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \violinMvtIV \outlineMvtIV >>
    }
    \header { piece = "Finale" }
  }
}

