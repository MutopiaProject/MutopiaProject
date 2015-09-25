%{
  ***********************************************************************
  * BachJS - Violin Concerto No.1 in A minor                            *
  * typeset by Federico Bruni and Javier Ruiz-Alma                      *
  *                                                                     *
  *                                                                     *
  * Common declarations file, to be included in all other files         *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}


mbreak={\break}
%mbreak={}
mPageBreak={\pageBreak}
%mPageBreak={}

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

hideF = \tweak #'stencil ##f \f
hideFF = \tweak #'stencil ##f \ff
hideMF = \tweak #'stencil ##f \mf
hideMP = \tweak #'stencil ##f \mp
hideP = \tweak #'stencil ##f \p
hidePP = \tweak #'stencil ##f \pp
hidePPP = \tweak #'stencil ##f \ppp
hidePPPP = \tweak #'stencil ##f \pppp

scrCresc = \markup \italic "cresc."
scrForte = \markup { \bold \concat { \dynamic f \italic "orte" } }
scrRitPar = \markup \italic "(rit.)"
scrSolo = \markup \bold "Solo"
scrUber = \markup \small "(über drei Saiten)"
scrFingerOnePar = \markup { \concat { \tiny { "(" }  \finger 1 \tiny { ")" } } }
scrFingerFourPar = \markup  \combine  \finger " 4" \tiny "( )"
scrFingerOpParTwo = \markup { \concat { \tiny { "(" }  \finger 2 } }
scrFingerOneClPar = \markup { \concat {  \finger 1 \tiny { ")" }  } }
scrFingerOpParThree = \markup { \concat { \tiny { "(" }  \finger 3 } }
scrFingerTwoClPar = \markup { \concat {  \finger 2 \tiny { ")" }  } }
scrTwoI = \markup { \override #'(baseline-skip . 1.3)  \center-column { \finger "2" \teeny "I" } }
scrFingerTwo = \markup \finger "2"
scrThreeI = \markup { \override #'(baseline-skip . 1.3)  \center-column { \finger "3" \teeny "I" } }
scrI = \markup \smaller "I"
scrII = \markup \smaller "II"
scrIIPar = \markup \center-align \smaller " (II)"
scrIVPar = \markup \left-align \small "(IV)"
scrNoPad = \once \override TextScript.padding = #'()
scrTrillPar = \markup { \concat { "(" \musicglyph #"scripts.trill" ")" } }
scrOpen = \markup \small "o"
scrUpBow = \markup \left-align \musicglyph #"scripts.upbow"
scrDownBow = \markup \left-align \musicglyph #"scripts.downbow"
scrStaccato = \markup \center-align { \concat { \hspace #1.4 \musicglyph #"scripts.staccato" } }

posScriptA = \once \override DynamicText.extra-offset = #'(-1.7 . 1.1)
posScriptB = \once \override Fingering.extra-offset = #'(3 . -3.5)
posScriptC = \once \override Script.extra-offset = #'(0.7 . 1.3)
posScriptD = \once \override TupletNumber.extra-offset= #'(0 . -1.4)
posScriptE = \once \override Fingering.extra-offset = #'(2 . -3.5)
posScriptF = \once \override Fingering.extra-offset = #'(-0.2 . -7)
posScriptG = \once \override Fingering.extra-offset = #'(0 . 2)

hairpinPastBar = \once \override Hairpin.to-barline = ##f
hairpinAddPad = \once \override Hairpin.bound-padding = #3

fingerNoStaffPad = \temporary \override Fingering.staff-padding = #'()
revFingerNoStaffPad = \revert Fingering.staff-padding
fingerNoPad = \once \override Fingering.padding = #'()
fingerUnderSlur = \override Fingering #'avoid-slur = #'inside
fingerLeft = \set fingeringOrientations = #'(left)
fingerDown = \set fingeringOrientations = #'(down)

scriptUnderSlur = \temporary \override Script #'avoid-slur = #'inside
scriptStaffPad = \temporary \override Script.staff-padding = #1.0
scriptPadHalf = \temporary \override Script.padding = #0.5
scriptPadQuart = \temporary \override Script.padding = #0.25
scriptPriorityA = \temporary \override Staff.TextScript.outside-staff-priority = #200  %place textscript under dynamic spanner

beamLessSlant = \once \override Beam.damping = #4

adjBeamA = \once \override Beam.positions = #'(-3.1 . -3.3)

condenseRests = \set Score.skipBars = ##t

hideTupletBracket = \temporary \override TupletBracket.bracket-visibility = ##f
hideTupletNumber = \temporary \override  TupletNumber #'stencil = ##f

setRestezSpanner = {
  \override TextSpanner.bound-details.left.text = \markup "r e s t e z "
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left-broken.text = ##f
  \override TextSpanner.dash-period = #5.5
  \override TextSpanner.dash-fraction = #0.4
  \override TextSpanner.direction = #DOWN
  \once \override TextSpanner.to-barline = ##t
}

setFingerSpannerTwo = {
  \override TextSpanner.bound-details.left.text = \markup \finger "2   "
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left-broken.text = ##f
  \override TextSpanner.dash-period = #5.5
  \override TextSpanner.dash-fraction = #1
  \override TextSpanner.direction = #DOWN
}
setFingerSpannerOne = {
  \override TextSpanner.bound-details.left.text = \markup \finger "1  "
  \override TextSpanner.to-barline = ##t
}
setFingerSpannerOneUp = {
  \override TextSpanner.direction = #UP
}

