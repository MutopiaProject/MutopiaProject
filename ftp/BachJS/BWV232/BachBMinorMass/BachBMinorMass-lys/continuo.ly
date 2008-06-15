\version "2.11.48"

\include "defs.lyi" 
\include "continuo_notes.lyi" 

instrument = "Continuo"

\paper
{
  %first-page-number = 2
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

\book
{
  \include "header.lyi"
  \score
  {
    \new Staff %\with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      <<
        \new Voice << \continuoAria \outlineAria >>
        \new FiguredBass \continuoAriaFiguredBass
      >>
    }
  }
}

