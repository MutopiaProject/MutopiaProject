\version "2.11.62"

\include "HornNotes.lyi"

instrument = "Horn in F"

\paper
{
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\include "Header.lyi"
\score
{
  \new Staff
  {
    << \horn \outline >>
  }
}

