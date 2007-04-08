% vim: ft=lilypond

\version "2.6.0"

#(ly:set-option 'point-and-click #f)

% Some useful macros

graceStroke = \once \override Stem #'stroke-style = #"grace"

cue = \once \override Stem   #'stroke-style = #'()

raiseDynamics = \once \override Staff.DynamicText #'extra-offset = #'(0 . 1.0)

RaiseDynamics = \once \override Staff.DynamicText #'extra-offset = #'(0 . 1.5)

lowerDynamics = \once \override Staff.DynamicText #'extra-offset = #'(0 . -1.0)

LowerDynamics = \once \override Staff.DynamicText #'extra-offset = #'(0 . -1.5)

staccato = \markup { \italic staccato }
legato = \markup { \italic legato }

RaiseText = \once \override Staff.TextScript #'extra-offset = #'(0 . 3)

raiseText = \once \override Staff.TextScript #'extra-offset = #'(0 . 1)

lowerText = \once \override Staff.TextScript #'extra-offset = #'(0 . -1)

LowerText = \once \override Staff.TextScript #'extra-offset = #'(0 . -2)

raiseBeam = \once \override Staff.Stem #'beamed-lengths = #'(4)

tupletNum = \override TupletBracket #'number-visibility = ##t

noTupletNum = \override TupletBracket #'number-visibility = ##f 

tupletBracket = \override TupletBracket #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket #'bracket-visibility = ##f

smartTupletBracket = \override TupletBracket #'bracket-visibility = #'if-no-beam

raiseHairpin = \once \override Staff.Hairpin #'extra-offset = #'(0 . 1)

lowerHairpin = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)

LowerHairpin = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1.7)

raiseScript = \once \override Staff.Script #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \override Staff.Script #'extra-offset = #'(0.0 . 1.5)

lowerScript = \once \override Staff.Script #'extra-offset = #'(0.0 . -1.0)

LowerScript = \once \override Staff.Script #'extra-offset = #'(0.0 . 1.5)

stemOff = \override Stem   #'transparent = ##t
stemOn = \override Stem   #'transparent = ##f

setTrillWave = {
  \override TextSpanner   #'type = #'trill
  \override TextSpanner   #'edge-height = #'(0 . 0)
  \override TextSpanner   #'padding = #1.0
  \override TextSpanner   #'minimum-space = #5.0
  \override TextSpanner   #'edge-text = #'((line
  (music "scripts.trill") " ") . "")
}

preNaturalTrill = \once \override TextScript #'self-alignment-X = #-0.6
naturalTrill = \markup { \center-align { { \fontsize #-1 \natural }
  { \musicglyph #"scripts.trill" } } }

preFlatTrill = \once \override TextScript #'self-alignment-X = #-0.6
flatTrill = \markup { \center-align { { \fontsize #-1 \flat }
  { \musicglyph #"scripts.trill" } } }

preSharpTrill = \once \override TextScript #'self-alignment-X = #-0.6
sharpTrill = \markup { \center-align { { \fontsize #-1 \sharp }
  { \musicglyph #"scripts.trill" } } }

preNaturalTurn = {
  \once \override TextScript #'self-alignment-X = #-0.6
  \once \override TextScript #'baseline-skip = #1.8
}
naturalTurn = \markup { \center-align { { \fontsize #-2 \natural }
  { \musicglyph #"scripts.turn" } } }
preTurnNatural = {
  \once \override TextScript #'self-alignment-X = #-0.6
  \once \override TextScript #'baseline-skip = #1.8
}
turnNatural = \markup { \center-align { { \musicglyph #"scripts.turn" }
{ \fontsize #-2 \natural } } }

preSharpTurn = \once \override TextScript #'self-alignment-X = #-0.6
sharpTurn = \markup { \center-align { { \fontsize #-2 \sharp }
  { \musicglyph #"scripts.turn" } } }
preTurnSharp = {
  \once \override TextScript #'self-alignment-X = #-0.6
  \once \override TextScript #'baseline-skip = #1.8
}
turnSharp = \markup { \center-align { { \musicglyph #"scripts.turn" }
  { \fontsize #-2 \sharp } } }

preFlatTurn = \once \override TextScript #'self-alignment-X = #-0.6
flatTurn = \markup { \center-align { { \fontsize #-2 \flat }
  { \musicglyph #"scripts.turn" } } }
preTurnFlat = {
  \once \override TextScript #'self-alignment-X = #-0.6
  \once \override TextScript #'baseline-skip = #1.8
}
turnFlat = \markup { \center-align { { \musicglyph #"scripts.turn" }
  { \fontsize #-2 \flat } } }


parentP = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "p" 
\hspace #-1.3 \large ")" }
parentF = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "f" 
\hspace #-1.0 \large ")" }
parentPP = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "pp" 
\hspace #-1.3 \large ")" }
parentFF = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "ff" 
\hspace #-1.0 \large ")" }
parentMP = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "mp" 
\hspace #-1.3 \large ")" }
parentMF = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "mf" 
\hspace #-1.0 \large ")" }
parentFP = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "fp" 
\hspace #-1.3 \large ")" }
parentFZ = \markup { \hspace #-1.5 \large "(" 
  \hspace #-1.3 \dynamic "fz" 
\hspace #-1.3 \large ")" }
parentCresc = \markup { \italic "(cresc.)" }
parentDecresc = \markup { \italic "(decresc.)" }

parentShift = \once \override TextScript
#'extra-offset = #'(-1.0 . 0.0)

ParentShift = \once \override TextScript
#'extra-offset = #'(-1.5 . 0.0)

rbcOne = \set stemRightBeamCount = #1
rbcTwo = \set stemRightBeamCount = #2
lbcOne = \set stemLeftBeamCount = #1
lbcTwo = \set stemLeftBeamCount = #2

barNumberDefaultStyle = {
  \override Score.BarNumber   #'font-size = #1
}

