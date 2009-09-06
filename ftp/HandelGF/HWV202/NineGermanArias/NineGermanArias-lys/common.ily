markUpBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #UP
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #3
}

markDownBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #3
}

markUpEnd = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #UP
  \once \override Score . RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark #'padding = #3
}

markDownEnd = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark #'padding = #3
}

addIncipitClef =
#(define-music-function (parser location a b)  (string? string?)
#{
	\set Staff . instrumentName = \markup{
		\score{
			\new Staff \with { \remove "Time_signature_engraver" }
			{ \set Staff . instrumentName = $b
			  \cadenzaOn
				\clef $a s32
			}
			\layout {
			\context {\Voice \remove Ligature_bracket_engraver }
			%line-width=2\cm
			}
		}
	}
#})

%32tel in 16tel verbinden
srbcsq = { \set stemRightBeamCount = #2 } 
%
slbcsq = { \set stemLeftBeamCount = #2 } 
%

\include "deutsch.ly"
eon = \bassFigureExtendersOn
eoff = \bassFigureExtendersOff
