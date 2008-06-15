\version "2.11.48"

\include "defs.lyi" 
\include "bass_notes.lyi" 

instrument = "Bass"

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
    <<
      \new Staff %\with { \consists "Page_turn_engraver" }
      {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
        \set Score.skipBars = ##t
        \new Voice = "bass" << \bassAria \outlineAria >>
      }
      \new Lyrics \lyricsto "bass"
      {
        \override Score . LyricText #'font-size = #-0.5
        \textAria
      }
    >>
  }
}

