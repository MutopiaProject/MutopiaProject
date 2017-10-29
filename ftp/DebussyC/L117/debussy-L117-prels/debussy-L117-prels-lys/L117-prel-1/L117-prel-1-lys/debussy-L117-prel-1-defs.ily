\version "2.18.2"

%--------Definitions for Debussy Prelude 1
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
mBreak = { \break }
ten = \tenuto
hideP = \tweak #'stencil ##f \p
hidePP = \tweak #'stencil ##f \pp
hideMF = \tweak #'stencil ##f \mf
hideF = \tweak #'stencil ##f \f
piuPP = \markup { \right-align \concat { \italic \bold "più " \dynamic pp } }
piuP = \markup { \left-align \concat { \italic \bold "più " \dynamic p } }

breatheFermata = {
  \once \override BreathingSign.text = \markup {
  \combine
  \musicglyph #"scripts.rcomma"
  \raise #1
  \musicglyph #"scripts.ufermata"
  }
  \breathe
}
shiftNoteRight = \override NoteColumn.force-hshift = #1.3
shiftNoteRightTwo = \override NoteColumn.force-hshift = #0.5
shiftNoteLeft = \override NoteColumn.force-hshift = #-1.0
shiftNoteNone = \revert NoteColumn.force-hshift
pushDynLeft = \once \override DynamicText.extra-offset = #'( -0.5 . 0 )
moveDynOne = \once \override DynamicText.extra-offset = #'( -2.0 . -2.8 )
moveDynTwo = \once \override Hairpin.extra-offset = #'( 1.6 . -1.5 )
moveDynTre = \once \override Hairpin.extra-offset = #'( 0 . -1 )
moveDynQtr = \once \override Hairpin.extra-offset = #'( 0 . 0.8 )
moveDynCin = \once \override DynamicText.extra-offset = #'( 0 . 0.8 )
moveDynSix = \once \override TextScript.extra-offset = #'( -0.5 . 3 )
moveDynSep = \once \override DynamicText.extra-offset = #'( -2.5 . 2.5 )
moveDynOct = \once \override DynamicText.extra-offset = #'( -3.2 . 3.5 )
moveDynNov = \once \override DynamicText.extra-offset = #'( 0.6 . 1.4 )
moveDynTen = \once \override DynamicText.extra-offset = #'( 0 . -2.4 )
moveDynEle = \once \override DynamicText.extra-offset = #'( -1.5 . -2.5 )
moveDynTwe = \once \override Hairpin.rotation = #'(9 0.5 0)
moveDynThi = \once \override TextScript.extra-offset = #'( -0.7 . -4 )
moveDynFou = \once \override DynamicText.extra-offset = #'( -2.5 . -3.8 )
moveDynFif = \once \override DynamicText.extra-offset = #'( -4.8 . -4.7 )
moveDynSixt = \once \override Hairpin.extra-offset = #'( -3 . 0 )
moveDynSevt = \once \override Hairpin.extra-offset = #'( 0 . -0.6 )
moveDynEigt = \once \override DynamicText.extra-offset = #'( 0 . -0.6 )
openHairpin = \once \override Hairpin.height = #1
lengthenHairpin = \once \override Hairpin.minimum-length = #8
brokenHairpin = {
  \override Hairpin.to-barline = ##f
  \override Hairpin.after-line-breaking = ##t
}
spacerOne = { \hideNotes \shiftOff a,,8 \unHideNotes }
timeSigParenth = \once \override Staff.TimeSignature.stencil = #(lambda (grob) (parenthesize-stencil 
      (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
timeSigShowBeg = {
  \once \override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible 
}

shapeSlurOne = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) Slur
shapeSlurTwo = \shape #'((-1.0 . 1.3) (0 . 1.0) (0 . 0.1) (-0.9 . 0.2)) Slur
shapeSlurTre = \shape #'((1.0 . -0.8) (2 . -6.0) (-1 . 0.8) (0 . 1.2)) PhrasingSlur
shapeSlurQtr = \shape #'((0.6 . 2) (2 . -1.5) (0 . 0) (0 . 0)) Slur
shapeSlurCin = \shape #'((-0.5 . 0) (3 . 2) (-2 . 2) (-0.5 . -1.6)) PhrasingSlur
shapeSlurSix = \shape #'(
               ((0.4 . -1.6) (3 . 0.4) (0 . 0) (0 . 0))
               ((0 . -0.4) (0 . -0.2) (0 . -0.4) (-0.5 . -1.2))
               ) PhrasingSlur
shapeSlurSep = \shape #'((0.5 . 2) (1 . 0.5) (0 . 0) (0 . 0)) Slur
shapeSlurOct = \shape #'((0 . 0) (1 . -0.8) (-1 . -1) (-0.5 . -1)) Slur
shapeSlurNov = \shape #'((0.4 . 2) (1 . 2.2) (0 . 2.2) (-0.7 . 2.7)) Slur
shapeSlurEle = \shape #'((0.5 . 1) (0 . 0.3) (0 . 0.3) (-0.5 . 1)) Slur
shapeSlurTwe = \shape #'((0 . 0) (0 . 0) (0 . 0) (2 . 0)) Slur
shapeSlurThi = \shape #'((0 . 0) (0 . 0) (-0.5 . 0.6) (0 . -0.8)) PhrasingSlur
shapeSlurFou = \shape #'((0.5 . -1.8) (1 . -0.5) (-1 . -0.4) (-0.5 . -1.8)) PhrasingSlur
shapeSlurFif = \shape #'(
               ((0.7 . -0.9) (3 . 1.2) (-1 . 1.2) (-0.5 . 0))
               ((0 . 0) (2 . 1.3) (-1 . 1.3) (-0.5 . 0.5))
               ) PhrasingSlur
shapeSlurSixt = \shape #'((0.8 . -1.8) (4 . 2) (-7 . 2) (-0.5 . -2.5)) PhrasingSlur
shapeSlurSevt = \shape #'((0 . -0.5) (2 . 2) (-3 . 0.5) (-0.5 . 0)) PhrasingSlur
shapeSlurEigt = \shape #'((0.5 . 2.8) (0 . 2) (0 . 1.3) (0 . 1)) Slur
shapeSlurNint = \shape #'((1.0 . 2.1) (1 . 1.3) (-1 . 0.3) (-1.5 . 0.8)) PhrasingSlur
shapeSlurTwen = \shape #'((1.0 . 1.1) (1.5 . 0.4) (-1 . 0.0) (-0.5 . 0.3)) PhrasingSlur
shapeSlurTwUn = \shape #'((0 . 0.4) (0 . 0.3) (0 . 0) (-0.5 . 0)) Slur

alignBeamOne = \once \override Beam.damping = #4
alignBeamTwo = \once \override Beam.positions = #'(0.3 . 0.7)
alignBeamTre = \once \override Beam.positions = #'(1.0 . 2.0)
alignBeamQtr = \once \override Beam.positions = #'(-5.5 . -6.6)
alignBeamCin = \override Beam.positions = #'(2.2 . 2.6)
alignBeamSix = \once \override Beam.positions = #'(5.7 . 8)
alignBeamRev = \revert Beam.positions

moveNoteOne = \once \override NoteColumn #'force-hshift = #-1.9
moveNoteTwo = \once \override NoteColumn #'force-hshift = #1
moveNoteTre = \once \override NoteColumn #'force-hshift = #-0.7

moveScriptOne = \once \override TextScript.extra-offset = #'( -2.5 . -2.8 )

preBrokenBeam = {
  \override Beam.layer = #0
  \override Stem.layer = #3
  \override Accidental.layer = #3
  \override NoteHead.layer = #15
  \override StaffSymbol.layer = #3
  \override TextScript.layer = #1
}
preBrokenBeamOne = { 
  \once \override TextScript.staff-padding = #0
  \once \override TextScript.vertical-skylines = #'()
  \once \override TextScript.extra-offset = #'( -1 . 3.3 )
}
preBrokenBeamTwo = { 
  \once \override TextScript.staff-padding = #0
  \once \override TextScript.vertical-skylines = #'()
  \once \override TextScript.extra-offset = #'( -1 . 4.2 )
}
preBrokenBeamTre = { 
  \once \override TextScript.staff-padding = #0
  \once \override TextScript.vertical-skylines = #'()
  \once \override TextScript.extra-offset = #'( -0.9 . 4.8 )
}
postBrokenBeam = {
  \revert Beam.layer
  \revert Stem.layer
  \revert NoteHead.layer
  \revert StaffSymbol.layer
  \revert TextScript.layer
}
breakBeamOne = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.0 . 9.0) #'(1.0 . 1.8) #0
}
breakBeamTwo = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.4) #'(1.0 . 1.8) #0
}
breakBeamTre = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.4) #'(1.05 . 1.9) #0
}
breakBeamQtr = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.3 . 8.6) #'(0.5 . 1.2) #0
}
breakBeamCin = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.0 . 8.3) #'(0.5 . 1.2) #0
}
breakBeamSix = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.2) #'(0.5 . 1.2) #0
}
breakBeamSep = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.5) #'(0.5 . 1.2) #0
}
legendOne = \markup \smaller \italic "doux et soutenu"
legendTwo = \markup { \center-align \italic \smaller "doux mais en dehors" }

ignoreClashOnce = \once \override NoteColumn.ignore-collision = ##t
setRestDirDown = \override Rest #'direction = #down

global = {
  \key bes \major
  \time 3/4
}
