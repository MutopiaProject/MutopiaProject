\version "2.11.37"

\include "horn_notes.lyi"
\include "defs.lyi"

\paper
{
  #(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

instrument = "Horn in E"

\include "header.lyi"

\score
{
  \new Staff
  {
    #(set-accidental-style 'modern)
    \set Score.skipBars = ##t
    \clef treble
    << \horn \outline >>
  }
}

