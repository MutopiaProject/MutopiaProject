\version "2.11.34"

\include "defs.lyi"
\include "HornNotes.lyi"

instrument = "Horn in F"

\paper
{
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\book
{
  \include "Header.lyi"
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Score.skipBars = ##t
      << \horn \outline >>
    }
  }
}


