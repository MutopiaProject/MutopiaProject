\version "2.11.34"

\include "defs.lyi"
\include "HornNotes.lyi"

\paper
{
  #(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

instrument = "Horn"
\include "Header.lyi"
\score
{
  \new Staff
  {
    #(set-accidental-style 'modern)
    \set Score.skipBars = ##t
    << \outline \horn >>
  }
}

