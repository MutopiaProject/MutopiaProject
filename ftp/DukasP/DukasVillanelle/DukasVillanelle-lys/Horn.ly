\include "HornNotes.lyi"

\version "2.11.23"

\paper
{
  #(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

instrument = "Horn"

\include "Header.lyi"
\score
{
  \new StaffGroup
  \with
  {
    \override SpanBar #'glyph-name = #":"
  }
  {
    \new Staff = horn
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      \clef treble
      << \hornNotes \outline >>
    }
  }
}

