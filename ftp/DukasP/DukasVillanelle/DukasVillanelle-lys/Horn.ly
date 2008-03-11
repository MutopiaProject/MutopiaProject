\include "HornNotes.lyi"

\version "2.11.40"

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
      #(set-accidental-style 'modern)
      \set Score.skipBars = ##t
      \clef treble
      << \hornNotes \outline >>
    }
  }
}

