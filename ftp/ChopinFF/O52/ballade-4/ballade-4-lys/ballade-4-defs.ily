%%--- Definitions for Chopin Ballade 4---
%%
%%
%%--  Do Not Compile---------------------

\version "2.18.2"

nb = \noBreak
mb = { \break }

andante = \markup { \center-align \raise #3.5 \bold \larger "  Andante con moto" }
aTempo =  \markup { \center-align \italic "    a tempo" }
moltoRF = \markup \concat { "molto  " \dynamic "rf" }
smTen = \markup \small "ten."
pocoRiten = \markup "poco riten."
smrzPocoRit = \markup "smorz. e poco rit."

bc = \clef bass
tc = \clef violin

hideP = \tweak #'stencil ##f \p
hidePP =  \tweak #'stencil ##f \pp
hideF = \tweak #'stencil ##f \f
hideFF = \tweak #'stencil ##f \ff

st = \staccato
piuf = \markup { \italic "più" \dynamic "f" }
semprepiuf = \markup { \italic "sempre più" \dynamic "f" }
rf = \markup { \dynamic rf }
ls = { \change Staff = bass \stemUp }
us = { \change Staff = treble \stemDown }
trillSpanner = {
    \override TextSpanner.style         = #'trill
    \override TextSpanner.extra-offset  = #'(0 . 2.5)
    \override TextSpanner.edge-text     = #(cons (make-musicglyph-markup "scripts.trill")  "")
}
invisnext = { 
    \once \override Stem.transparent = ##t 
    \once \override NoteHead.transparent = ##t
}

pd = \sustainOn
pu = \sustainOff

hideTupletNumber =  \temporary \override TupletNumber.transparent = ##t
hideTupletBracket = \temporary \override TupletBracket.bracket-visibility = ##f

ignoreClashNote =   \temporary \override NoteColumn.ignore-collision = ##t
hairpinPastBar = \once\override Hairpin.to-barline = ##f
dblSlursOn = \set doubleSlurs = ##t
dblSlursOff = \set doubleSlurs = ##f
tieWaitForNoteOn = \set tieWaitForNote = ##t
tieWaitForNoteOff = \set tieWaitForNote = ##f
noAccidental = \once\override Voice.Accidental.stencil = ##f

shpSlurA = \shape #'((0.3 . 0.7) (0 . 0.7) (0 . 0.7) (-1.8 . 0.7)) Tie
shpSlurB = \shape #'((0 . 0) (1 . 0.7) (-1 . 0.7) (0 . 0)) Tie
shpSlurC = \shape #'((-0.5 . -1.4) (0 . -1.5) (0 . -1.5) (-0.5 . -1.3)) Tie
shpSlurD = \shape #'((1.2 . 0) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
shpSlurE = \shape #'((0.5 . 3) (0 . 0.5) (0 . 0) (0 . 0)) PhrasingSlur
shpSlurF = \shape #'((0 . -4) (10 . 3) (0 . 0) (0 . -3)) PhrasingSlur
shpSlurG = \shape #'((0 . 0) (0 . 0) (0 . 0) (1 . 0.2)) Slur
shpSlurH = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Tie
shpSlurJ = \shape #'((-3 . 0.5) (0 . 0.5) (0 . 0.5) (2 . 0)) PhrasingSlur
shpSlurK = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . 1.6) (0 . 1.6) (0 . 1.6) (0 . 1.6)) ) Tie
shpSlurL = \shape #'((0.4 . -1) (3 . 0) (-4 . 1.7) (-1 . -0.5)) PhrasingSlur
shpSlurM = \shape #'((0.7 . 1.7) (0 . 1.8) (0 . 0.6) (0 . 0)) PhrasingSlur
shpSlurN = \shape #'((0.7 . 1.8) (0 . -0.4) (-1 . -0.7) (0 . 0)) PhrasingSlur
shpSlurP = \shape #'((0 . 0) (0 . 0) (2 . 0.5) (3 . 0.5)) PhrasingSlur
shpSlurQ = \shape #'((0 . -2.2) (0 . 0.9) (0 . 0.9) (0 . -2.2)) PhrasingSlur
shpSlurR = \shape #'((0 . 1.5) (0 . 1.2) (0 . 0.3) (0 . -0.8)) PhrasingSlur
shpSlurS = \shape #'( ((0 . 0) (0 . 0) (2 . 0.5) (3 . 0.5))
                      ((0 . 2) (2 . -4) (-3 . -5) (0 . 0)) )PhrasingSlur
shpSlurT = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . 1) (0 . 1) (0 . 0.3) (0 . 0)) )PhrasingSlur
shpSlurU = \shape #'( ((0 . -4) (2 . 1) (-1 . 1) (0 . -2))
                      ((0 . 0) (0 . 0) (0 . 0) (0 . 0)) )PhrasingSlur
shpSlurV = \shape #'((0 . -4) (2 . 1.2) (-1 . 1.2) (0 . -2)) PhrasingSlur
shpSlurW = \shape #'((0 . -12) (1 . 1.3) (-2 . 2) (0 . 0.5)) PhrasingSlur
shpSlurX = \shape #'( ((0 . 0) (0 . 0.3) (0 . 0.3) (0 . 0))
                      ((0 . 1) (3 . 2.5) (-1 . 4) (0 . 3)) )PhrasingSlur
shpSlurY = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . -2) (4 . 1) (-2 . 1.5) (0 . 0)) )PhrasingSlur

posScrA = \once\override DynamicText.extra-offset = #'(0 . -2)
posScrB = \once\override TextScript.extra-offset = #'(0 . -1)
posScrC = \once\override Dots.extra-offset = #'(-0.2 . 0)

posHairpinA = \once\override Hairpin.extra-offset = #'(0 . -2)

posPedalA = \once\override Staff.SustainPedal.extra-offset = #'(-0.7 . 0)
posPedalB = \once\override Staff.SustainPedal.extra-offset = #'(-1.2 . -1)

posClefA = \once\override Staff.Clef.extra-offset = #'(0.9 . 0 )

posScrUnderSlur = \temporary\override Script #'avoid-slur = #'inside
posTrillUnderSlur = {
  \temporary\override TrillSpanner #'outside-staff-priority = #20
  \temporary\override PhrasingSlur #'outside-staff-priority = #50
}

posBeamA = \once \override Beam.positions = #'(-4.3 . -2.8)
posBeamB = \once \override Beam.positions = #'(-1.8 . -1.8)
posBeamC = \once \override Beam.positions = #'(-6 . -6)

cadenzaSize = {
  \temporary \override NoteHead.font-size = #-2.5
  \temporary \override Accidental.font-size = #-3
  \temporary \override Staff.AccidentalPlacement #'right-padding = #-0.04
  \temporary \override AccidentalCautionary.font-size = #-3
  \temporary \override Staff.Clef.font-size = #-1.2
  \temporary \override Beam.beam-thickness = #0.32
  \temporary \override Beam.length-fraction = #0.7
  \temporary \override Script.font-size = #-2
}

subdivideBeam = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/44)
}

setBeatStructureTuplets = {
\set Voice.beamExceptions = #'()
\set Voice.baseMoment = #(ly:make-moment 1/8)
\set Voice.beatStructure = #'(1 1 1 1 1 1)
\tupletSpan 8
}

setBeatStructureThreeSeize = {
  \set Voice.beatStructure = #'(3 3) 
}

smAcciac = {
  \once\override NoteHead.font-size = #-4
  \once\override Stem.font-size = #-4
}