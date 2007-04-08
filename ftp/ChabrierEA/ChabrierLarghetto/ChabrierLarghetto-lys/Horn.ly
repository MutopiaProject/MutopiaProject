\version "2.11.13"

\include "HornNotes.lyi"
\include "defs.lyi"

instrument = "Horn"

\paper
{
  %#(define page-breaking ly:page-turn-breaking)
  %ragged-last-bottom = ##f %This setting causes long measures under long markups
}

\include "Header.lyi"
\score
{
  \new Staff
  {
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \set Staff.instrumentName = \markup { \column { "Horn" "en Fa" } }
      \set Score.skipBars = ##t
      << \horn \outline >>
    }
  }
  \layout
  {
  }
  \midi
  {
    \context
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}

