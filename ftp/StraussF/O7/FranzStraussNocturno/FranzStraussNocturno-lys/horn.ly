\version "2.11.62"

\include "defs.lyi"
\include "horn_notes.lyi"

instrument = "Horn in F"

\paper
{
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\book
{
  \include "header.lyi"
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

