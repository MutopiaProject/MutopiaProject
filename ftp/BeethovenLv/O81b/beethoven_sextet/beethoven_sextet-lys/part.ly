\include "defs.ly"

\paper
{
  %first-page-number = 1
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##t
  ragged-bottom = ##t
}

\book
{
  \include "header.ly"
  \score
  {
    \new Staff \with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \notesI \tempoMark "Allegro con brio" >>
      \pageBreak
    }
   }

  \score
  { \new Staff \with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \notesII \tempoMark "Adagio">>
      \pageBreak
    }
  }

  \score
  {
    \new Staff \with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \notesIII \tempoMark "Allegro">>
    }
  }
}