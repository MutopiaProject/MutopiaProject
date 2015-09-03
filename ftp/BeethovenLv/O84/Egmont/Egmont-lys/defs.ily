\version "2.18.2"

%---Definitions

softPageBreak = {
 %\allowPageTurn 
}

hardPageBreak = {
  \pageBreak
}

preventBreak = {
  \noBreak
}

hideF = \tweak #'stencil ##f \f
hideFF = \tweak #'stencil ##f \ff
hideP = \tweak #'stencil ##f \p
hidePP = \tweak #'stencil ##f \pp
hidePPP = \tweak #'stencil ##f \ppp
hideMF = \tweak #'stencil ##f \mf

moreAccidentalPadding = \override Staff.AccidentalPlacement #'right-padding = #0.15

hideMetronomeMark = \override Score.MetronomeMark.transparent = ##t

hairpinPastBarline = \once \override Hairpin.to-barline = ##f
hairpinNarrow = {
  \once \override Hairpin.height = 0.45
  \once \override Hairpin.padding = 0.0
}

doubleSlursOn = \set doubleSlurs = ##t
doubleSlursOff = \set doubleSlurs = ##f

aDue = \markup \tiny "a 2."
forteSforzato = \markup { \concat { \dynamic "f " \raise #0.6 \huge \musicglyph #"scripts.sforzato" }}
pDolce = \markup { \dynamic p \italic \larger dolce }
pCresc = \markup { \dynamic p \italic \larger \whiteout cresc. }
txtCresc = \markup \italic \larger "cresc."
dolce = \markup \italic \larger \whiteout "dolce"
txtMarcato = \markup \italic \large "marcato"
txtPizz = \markup \italic \large "pizz."
txtArco = \markup \italic \large "arco"
upFermata = \markup{ \concat { \hspace #1 \musicglyph #"scripts.ufermata" } }
downFermata = \markup{ \musicglyph #'"scripts.dfermata" }
sostNonTropo = \markup { \large \bold { \hspace #-4.0 "Sostenuto ma non troppo" } }
flautoPiccolo = \markup { \whiteout "Flauto piccolo." }
allegro = \markup { \large \bold "Allegro" }

insideSlur = \once \override Slur.outside-staff-priority = #500
hideTupletNumber = \temporary \override TupletNumber.transparent = ##t
hideTupletBracket = \temporary \override TupletBracket.bracket-visibility = ##f

posDynamicTxtA = \once \override DynamicText.extra-offset = #'(0.8 . -0.5)
posDynamicTxtB = \once \override DynamicText.extra-offset = #'(1.6 . -0.2)
posDynamicTxtC = \once \override DynamicText.extra-offset = #'(-1.5 . 6.7)
posDynamicTxtD = \once \override DynamicText.extra-offset = #'(2 . -2)

shapeSlurA = \shape #'(( 0 . 2) (0 . 0) (0 . 0) (0 . 2)) Slur
shapeSlurB = \shape #'(( 0 . 1.3) (0 . 1.3) (0 . 1.3) (0 . 1.3)) Slur
shapeSlurC = \shape #'(( 0 . -1.3) (0 . -0.5) (0 . 0) (0 . 0)) Slur

spaceSpannerA = \temporary \override DynamicLineSpanner.padding = #2.5
spaceSpannerB = \temporary \override DynamicLineSpanner.padding = #1.9
spaceSpannerC = \temporary \override DynamicLineSpanner.padding = #1.0
spaceSpannerD = \temporary \override DynamicLineSpanner.padding = #1.5
spaceSpannerE = \temporary \override DynamicLineSpanner.padding = #2.0
spaceSpannerF = \temporary \override DynamicLineSpanner.padding = #3.0

spaceTextScrA = \temporary \override TextScript.padding = #1.5