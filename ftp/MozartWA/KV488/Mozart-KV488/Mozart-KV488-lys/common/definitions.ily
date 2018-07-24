% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Common definitions file, to be included at the top of all files
% Do not compile

% Definitions with template dependencies
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
condenseRests = \set Score.skipBars = ##t

% "Solo" and "tutti" markings. At any given position, a marking will be
% displayed only once at the top of the system, no matter on which
% staves it was specified. To aid readability of the source, each part
% can therefore declare ``\solo'' or ``\tutti'' whenever appropriate.
solo = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup { \fontsize #-2 \bold SOLO }
}
tutti = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup { \fontsize #-2 \bold TUTTI }
}

% Articulation markings
legato = \markup { \italic legato }
dolce = \markup { \italic dolce }
cadenza = \markup { \italic Cadenza }

% Voicing marking for bassoon and horn, indicating that the (monophonic)
% notation should be played by both members.
both = \markup { a. 2. }

% We split the score into three atomic groups of staves: winds (flute,
% clarinet, bassoon, horn), piano, and strings. We want each of these
% groups to appear atomically: that is, we want it to never be the case
% that (e.g.) the staves for some woodwinds are hidden while others
% aren't.
%
% This has two benefits. First, it eliminates any potential ambiguity
% between the clarinet and the horn, which are distinguishible only by
% their position relative to the bassoon, without needing to label each
% staff with short instrument names (which is kind of ugly and takes up
% space). Second, it makes it easier for a reader to scan the score:
% when moving from one system to the next, one can always continue
% looking at (say) the third staff in the woodwind section, without
% having to readjust because another staff has gone out of view.
%
% For reference, this is also the layout used by the source score.
\layout {
  \context {
    \StaffGroup
    \name "AtomicStaffGroup"
    \type "Engraver_group"
    \alias StaffGroup
    \description "A group of staves that are only removed together,
never separately (as with @code{PianoStaff}), and otherwise like
@code{StaffGroup} but without the bracket."
    \consists "Keep_alive_together_engraver"
    \remove "System_start_delimiter_engraver"
  }
  \context {
    \StaffGroup
    % AtomicStaffGroup is only contained within the top-level
    % StaffGroup, so this suffices.
    \accepts "AtomicStaffGroup"
  }
}

% Sample definitions
hideF = \tweak #'stencil ##f \f
hideFF = \tweak #'stencil ##f \ff
hideMF = \tweak #'stencil ##f \mf
hideMP = \tweak #'stencil ##f \mp
hideP = \tweak #'stencil ##f \p
hidePP = \tweak #'stencil ##f \pp
hidePPP = \tweak #'stencil ##f \ppp
hidePPPP = \tweak #'stencil ##f \pppp

omitDynamic = \once\omit DynamicText

scrCourtMordent = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.mordent" \hspace #0.2 ")" } }
scrCourtMordStem = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.mordent" \hspace #0.2 ")" } }
scrCourtMordentRight = \markup { \center-align \concat { \hspace #1.4 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.mordent" \hspace #0.2 ")" } }
scrCourtTurn = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.turn" \hspace #0.2 ")" } }
scrCourtRevTurn = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.reverseturn" \hspace #0.2 ")" } }
scrCourtPrall = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.prall" \hspace #0.2 ")" } }
scrCourtPrallStem = \markup { \center-align \concat { \hspace #1.9 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.prall" \hspace #0.2 ")" } }
scrCourtPrallPrall = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.prallprall" \hspace #0.2 ")" } }
scrCourtTrill = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.0 \small \musicglyph #"scripts.trill" \hspace #0.2 ")" } }
scrTutti = \markup \tiny \bold "Tutti"
scrTuttiCtr = \markup { \center-align \tiny \bold \whiteout "Tutti" }
scrTuttiCtrPar = \markup { \center-align \tiny \bold \whiteout "(Tutti)" }
scrPiano = \markup { \small \concat { \dynamic p \italic \bold "iano" } }
scrPianoSpc = \markup { \small \concat { \hspace #1 \dynamic p \italic \bold "iano" } }
scrPianoLeft = \markup { \center-align \small \concat { \hspace #3.7 \dynamic p \italic \bold "iano" } }
scrForteParLeft = \markup { \center-align \small \concat { \hspace #1.7 \italic "(" \dynamic f \italic \bold "orte)" } }
scrPianoWhite = \markup { \small \whiteout \concat { \dynamic p \italic \bold "iano" } }
scrPianoPar = \markup { \small \concat { \italic \bold "(" \dynamic p \italic \bold "iano)" } }
scrPianoParWhite = \markup { \small \whiteout \concat { \italic \bold "(" \dynamic p \italic \bold "iano)" } }
scrForte = \markup { \small \concat { \dynamic f \italic \bold "orte" } }
scrForteLeft = \markup { \center-align \small \concat { \hspace #2 \dynamic f \italic \bold "orte" } }
scrFortePar = \markup { \small \concat { \italic \bold "(" \dynamic f \italic \bold "orte)" } }
scrForteParCtr = \markup { \center-align \small \concat { \italic \bold "(" \dynamic f \italic \bold "orte)" } }
scrSolo = \markup \small \bold "Solo"
scrTastoSolo = \markup \small \bold "Tasto Solo"
scrSpiccato = \markup { \center-align \concat { \hspace #4 \small \bold "spiccato" } }
scrSpiccatoLeft = \markup \small \bold "spiccato"
scrSoloPiano = \markup { \override #'(baseline-skip . 0) \center-align \center-column \small \whiteout { \bold "  Solo  " \concat { \dynamic p \italic \bold "iano" } } }
scrSoloPianoLeftAlg = \markup { \override #'(baseline-skip . 0) \left-align \center-column \small \whiteout { \bold "  Solo  " \concat { \dynamic p \italic \bold "iano" } } }
scrTuttiSpiccato = \markup { \override #'(baseline-skip . 0.2) \left-align \left-column \small \bold \whiteout { "Tutti" "spiccato" } }

scrNoPad = {
  \once \override TextScript.staff-padding = #'()
  \once \override TextScript.outside-staff-padding = #0.1
}

nachschlag = {
  \shape #'((0 . 0.2) (0 . 0) (0 . 0) (0 . 0)) Slur
  \once \override Slur.height-limit = 0.5
  \once \override NoteHead.font-size = -5
  \once \override Flag.font-size = -5
  \once \override Stem.length = 4
  \once \override Beam.beam-thickness = 0.3
  \once \override Beam.length-fraction = 0.5
  \once \override Beam.shorten = 1
}

setUpPrallSpanner = {
  \override TrillSpanner.bound-details.left.text = \markup {
      \halign #-1.1 \concat {
        \raise #1.0
        \smaller
        \musicglyph #"scripts.upprall"
        \hspace #-.6
      }
  }
  \override TrillSpanner.bound-details.right.padding = #'3.0
  \override TrillSpanner.bound-details.left.padding = #'0
  \override TrillSpanner.to-barline = ##t
}

setTrillSpanner = {
  \override TrillSpanner.bound-details.left.text = \markup{ \musicglyph #"scripts.trill" }
  \override TrillSpanner.bound-details.right.padding = #'5.0
  \override TrillSpanner.bound-details.left.padding = #'1.0
  \override TrillSpanner.to-barline = ##t
}

setBeatStructureQuarter = {
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = #'(1 1 1 1)
}

setBeatStructureHalf = {
  \set Voice.baseMoment = #(ly:make-moment 1/2)
  \set Voice.beatStructure = #'(1 1)
}

setBeatStructureEigth = {
  \set Voice.baseMoment = #(ly:make-moment 1/8)
  \set Voice.beatStructure = #'(1 1 1)
  \set Timing.beamExceptions = #'()
}

doKneedBeam = \once \override Beam.auto-knee-gap = #1
flatBeam = \once \override Beam.damping = #+inf.0
lessBeamSlant = \once \override Beam.damping = #2

posTextScriptA = \once \override TextScript.extra-offset = #'(0 . -1.9)
posTextScriptB = \once \override TextScript.extra-offset = #'(0 . -6.6)
posTextScriptC = \once \override TextScript.extra-offset = #'(0 . -0.3)
posTextScriptD = \once \override TextScript.extra-offset = #'(1.4 . 0)
posTextScriptE = \once \override TextScript.extra-offset = #'(-2.0 . -0.3)
posTextScriptF = \once \override TextScript.extra-offset = #'(3.9 . -0.5)

alignBeamOne = \once \override Beam.positions = #'(0.1 . -0.1)
alignBeamTwo = \once \override Beam.positions = #'(-2.7 . -3.7)
alignBeamTre = \once \override Beam.positions = #'(1.9 . 1.9)
alignBeamQtr = \once \override Beam.positions = #'(3.4 . 3.4)
alignBeamCin = \once \override Beam.positions = #'(1.9 . 2.3)
alignBeamSix = \once \override Beam.positions = #'(2.9 . 2.9)
alignBeamSep = \once \override Beam.positions = #'(-3.1 . -1.8)

shapeSlurA = \shape #'((0 . 0.6) (0 . 0.6) (0 . 0.6) (0 . 0.6)) Slur
shapeSlurB = \shape #'((0 . 0) (1 . 0.6) (-1 . 0.6) (-0.5 . 0)) Tie
shapeSlurC = \shape #'((0 . 0) (1 . -0.6) (-1 . -0.6) (-0.5 . 0)) Tie
shapeSlurD = \shape #'((0 . 0) (1 . 0.6) (-1 . 0.6) (0 . 0)) Tie
shapeSlurE = \shape #'((0 . 0) (1 . -0.6) (-1 . -0.6) (0 . 0)) Tie
shapeSlurF = \shape #'((0 . 0) (0 . -0.6) (0 . -0.6) (0 . 0)) Slur
shapeSlurG = \shape #'((0 . 0) (1 . 0.6) (-1 . 0.6) (0 . 0)) Slur
shapeSlurH = \shape #'((0 . 0) (1 . 0.3) (-1 . 0.3) (0 . 0)) Tie

scriptAboveSlur = \once \override Script.avoid-slur = #'outside

smallNotehead = {
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
  \override Beam.beam-thickness = #0.35
  \override Beam.length-fraction = #0.7 }
noteLeft = \once \override NoteColumn #'force-hshift = #-0.7
longerStem = \once \override Stem #'length-fraction = #(magstep 2)
hideAccidental = \once \override Voice.Accidental.stencil = ##f

hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
