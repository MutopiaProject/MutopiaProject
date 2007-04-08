% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

% Some useful macros

graceStroke = \once \override Stem #'stroke-style = #"grace"

cue = \once \override Stem #'stroke-style = #'()

smallNote = { \once \override NoteHead #'font-size = #-4
	      \once \override Stem #'font-size = #-4 }

shiftNoteRight = {
    \once \override NoteHead #'extra-offset = #'(0.35 . 0.0)
    \once \override Stem #'extra-offset = #'(0.35 . 0.0)
}

raiseDynamics = \once \override DynamicText
    #'extra-offset = #'(0 . 1.0)

RaiseDynamics = \once \override DynamicText
    #'extra-offset = #'(0 . 1.5)

lowerDynamics = \once \override DynamicText
    #'extra-offset = #'(0 . -1.0)

LowerDynamics = \once \override DynamicText
    #'extra-offset = #'(0 . -1.5)

staccato = \markup { \italic "staccato" }
legato = \markup { \italic "legato" }
pizz = \markup "pizz."
arco = \markup "arco"
crescText = \markup { \italic "cresc." }
dimText = \markup { \italic "dim." }
ritText = \markup { \italic "rit." }

raiseSlur = \once \override Slur
    #'attachment-offset = #'((0 . 0.5) 0 . 0.5)

lowerSlur = \once \override Slur
    #'attachment-offset = #'((0 . -0.5) 0 . -0.5)

RaiseSlur = \once \override Slur
    #'attachment-offset = #'((0 . 1.2) 0 . 1.2)

LowerSlur = \once \override Slur
    #'attachment-offset = #'((0 . -1.2) 0 . -1.2)

raisePhrasingSlur = \once \override PhrasingSlur #'extra-offset = #'(0 . 0.6)
RaisePhrasingSlur = \once \override PhrasingSlur #'extra-offset = #'(0 . 1.2)

slurStemToStem = \once \override Slur
    #'attachment = #'(stem . stem)

slurHeadToHead = \once \override Slur
    #'attachment = #'(head . head)

slurHeadToStem = \once \override Slur
    #'attachment = #'(head . stem)

slurStemToHead = \once \override Slur
    #'attachment = #'(stem . head)

RaiseText = \once \override TextScript
    #'extra-offset = #'(0 . 3)

raiseText = \once \override TextScript
    #'extra-offset = #'(0 . 1)

lowerText = \once \override TextScript
    #'extra-offset = #'(0 . -1)

LowerText = \once \override TextScript
    #'extra-offset = #'(0 . -2)

raiseBeam = \once \override Stem
    #'beamed-lengths = #'(4)

tupletNum = \override TupletBracket #'number-visibility = ##t

noTupletNum = \override TupletBracket #'number-visibility = ##f 

tupletBracket = \override TupletBracket #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket #'bracket-visibility = ##f

smartTupletBracket = \override TupletBracket #'bracket-visibility = #'if-no-beam

raiseHairpin = \once \override Hairpin #'extra-offset = #'(0 . 1)

lowerHairpin = \once \override Hairpin #'extra-offset = #'(0 . -1)

LowerHairpin = \once \override Hairpin #'extra-offset = #'(0 . -1.7)

raiseScript = \once \override Script
    #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \override Script
    #'extra-offset = #'(0.0 . 1.5)

lowerScript = \once \override Script
    #'extra-offset = #'(0.0 . -1.0)

LowerScript = \once \override Script
    #'extra-offset = #'(0.0 . 1.5)

stemOff = \override Stem #'transparent = ##t
stemOn = \override Stem #'transparent = ##f

blankNotes = {
    \override NoteHead #'transparent = ##t
    \override Stem #'transparent = ##t
}

visibleNotes = {
    \override NoteHead #'transparent = ##f
    \override Stem #'transparent = ##f
}

naturalTrill = \markup { \super \fontsize #-3.0 \natural \hspace #0.1
			 \normalsize \musicglyph #"scripts.trill" }

flatTrill = \markup { \super \fontsize #-3.0 \flat \hspace #0.1
			 \normalsize \musicglyph #"scripts.trill" }

sharpTrill = \markup { \super \fontsize #-3.0 \sharp \hspace #0.1
			 \normalsize \musicglyph #"scripts.trill" }

naturalTurn = \markup { \hspace #0.15
			\center-align { { \fontsize #-3.0 \natural }
					{ \musicglyph #"scripts.turn" } } }
turnNatural = \markup { \hspace #0.15
			\center-align { { \musicglyph #"scripts.turn" }
					{ \fontsize #-3.0 \natural } } }

sharpTurn = \markup { \hspace #0.15
		      \center-align { { \fontsize #-3.0 \sharp }
				      { \musicglyph #"scripts.turn" } } }
turnSharp = \markup { \hspace #0.15
		      \center-align { { \musicglyph #"scripts.turn" }
				      { \fontsize #-3.0 \sharp } } }

flatTurn = \markup { \hspace #0.15
		     \center-align { { \fontsize #-3.0 \flat }
				     { \musicglyph #"scripts.turn" } } }
turnFlat = \markup { \hspace #0.15
		     \center-align { { \musicglyph #"scripts.turn" }
				     { \fontsize #-3.0 \flat } } }

parentP = \markup{ \center-align {\line { \bold{\italic (}
					  \dynamic p \bold{\italic )} }} }

parentF = \markup{ \center-align {\line { \bold{\italic (}
					  \dynamic f \bold{\italic )} }} }

parentPP = \markup{ \center-align {\line { \bold{\italic (}
					   \dynamic pp \bold{\italic )} }} }

parentFF = \markup{ \center-align {\line { \bold{\italic (}
					   \dynamic ff \bold{\italic )} }} }

parentMP = \markup{ \center-align {\line { \bold{\italic (}
					   \dynamic mp \bold{\italic )} }} }

parentMF = \markup{ \center-align {\line { \bold{\italic (}
					   \dynamic mf \bold{\italic )} }} }

parentFP = \markup{ \center-align {\line { \bold{\italic (}
					   \dynamic fp \bold{\italic )} }} }

parentFZ = \markup{ \center-align {\line { \bold{\italic (}
					   \dynamic fz \bold{\italic )} }} }

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
    \override Score.BarNumber #'font-size = #1
}

defaultMarks = {
    \set Score.markFormatter = #(lambda (mark context)
				 (make-bold-markup
				  (make-box-markup 
				   (make-markletter-markup (1- mark)))))
    %\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'extra-offset = #'(0 . 1.5)
}

veryTiny = { \set fontSize = #-3 }
