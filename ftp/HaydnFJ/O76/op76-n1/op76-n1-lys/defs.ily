% vim: ft=lilypond

\version "2.18.0"

#(ly:set-option 'point-and-click #f)

% Some useful macros

staccato = \markup { \italic staccato }
legato = \markup { \italic legato }

tupletNum = \revert TupletNumber.stencil

noTupletNum = \override TupletNumber.stencil = ##f

tupletBracket = \override TupletBracket.bracket-visibility = ##t

noTupletBracket = \override TupletBracket.bracket-visibility = ##f

preNaturalTrill = \once \override TextScript.self-alignment-X = #-0.6
naturalTrill = \markup { \center-column { { \fontsize #-1 \natural }
  { \musicglyph #"scripts.trill" } } }

preFlatTrill = \once \override TextScript.self-alignment-X = #-0.6
flatTrill = \markup { \center-column { { \fontsize #-1 \flat }
  { \musicglyph #"scripts.trill" } } }

preSharpTrill = \once \override TextScript.self-alignment-X = #-0.6
sharpTrill = \markup { \center-column { { \fontsize #-1 \sharp }
  { \musicglyph #"scripts.trill" } } }

preNaturalTurn = {
  \once \override TextScript.self-alignment-X = #-0.6
  \once \override TextScript.baseline-skip = #1.8
}
naturalTurn = \markup { \center-column { { \fontsize #-2 \natural }
  { \musicglyph #"scripts.turn" } } }
preTurnNatural = {
  \once \override TextScript.self-alignment-X = #-0.6
  \once \override TextScript.baseline-skip = #1.8
}
turnNatural = \markup { \center-column { { \musicglyph #"scripts.turn" }
{ \fontsize #-2 \natural } } }

preSharpTurn = \once \override TextScript.self-alignment-X = #-0.6
sharpTurn = \markup { \center-column { { \fontsize #-2 \sharp }
  { \musicglyph #"scripts.turn" } } }
preTurnSharp = {
  \once \override TextScript.self-alignment-X = #-0.6
  \once \override TextScript.baseline-skip = #1.8
}
turnSharp = \markup { \center-column { { \musicglyph #"scripts.turn" }
  { \fontsize #-2 \sharp } } }

lbcOne = \set stemLeftBeamCount = #1
