\version "2.18.2" 

omitDynamic = \once\omit DynamicText
omitHairpin = \once\omit Hairpin

posSlurPriority = \once \override Slur.outside-staff-priority = #150

shpSlurA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.2) (0 . 0)) Slur
shpSlurB = \shape #'((-0.5 . 0.2) (-1 . -0.5) (-1 . -1) (-1 . -1.5)) Slur
shpSlurC = \shape #'((0 . 0.7) (0 . 2.8) (0 . 4) (0 . 3)) Slur
shpSlurD = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) Slur
shpSlurE = \shape #'((0 . 0.8) (0 . 1) (0 . 1) (0 . 1.5)) Slur
shpSlurF = \shape #'((0.8 . -1.8) (0.8 . -2) (-0.5 . -1.8) (-0.8 . -1.8)) Slur
shpSlurG = \shape #'((0.6 . -0.4) (0.4 . -0.6) (-0.3 . -0.6) (-0.6 . -0.4)) PhrasingSlur
shpSlurH = {
  \posSlurPriority
  \shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . -3)) Slur
}
shpSlurJ = \shape #'((0 . 0) (0 . 1.5) (2 . 1.5) (0 . 0)) Slur
shpSlurK = \shape #'((0 . 1.5) (0 . 1.5) (0 . 1) (0 . 0)) Slur
shpSlurL = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 1.8)) Slur
shpSlurM = \shape #'((0 . 0.5) (0 . 2) (0 . 1.3) (0 . 0)) Slur
shpSlurN = \shape #'((0 . 0) (0 . 1) (0 . 2.5) (0 . 4)) Slur
shpSlurP = \shape #'((0 . 0.5) (0 . 0) (0 . 0.4) (0 . 0.8)) Slur
shpSlurP = \shape #'((0 . -1.5) (1 . 1) (-1 . 1) (0 . -1.5)) Slur
shpSlurQ = \shape #'((0 . -2) (1 . 1) (-1 . 0) (0 . -3)) Slur
shpSlurR = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . -1.7)) Slur
shpSlurS = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 3)) Slur
shpSlurT = \shape #'((0.8 . -2.5) (1 . -2.2) (-1 . -2.5) (-0.7 . -2.5)) Slur
shpSlurU = \shape #'((1 . 0.8) (1 . 0.9) (0 . 0.4) (0 . 0)) Slur

posSlurA = \once \override Voice.Slur #'positions = #'(0.5 . 3)
posSlurB = \once \override Voice.Slur #'positions = #'(1 . 0.5)
posSlurC = \once \override Voice.Slur #'positions = #'(2.2 . 0)

posTextA = \once\override TextScript.extra-offset = #'(0 . 1)
posTextB = \once\override DynamicText.extra-offset = #'(0 . -1)
posTextC = \once\override TextScript.extra-offset = #'(0 . -1)
posTextD = \once\override TextScript.extra-offset = #'(-2.8 . -9)

posHairpinA = \once\override Hairpin.extra-offset = #'(0 . -1)

doubleSlurOn = \set doubleSlurs = ##t
doubleSlurOff = \set doubleSlurs = ##f

noFingPad = \once \override Fingering.padding = #0.5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A function to modify the shape of slurs by offsetting the positions property
% from default control-point values. Setting either y1 or y2 to zero will leave
% that attachment-point unchanged. Syntax: \offsetPositions #'(y1 . y2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

offsetPositions =
#(define-music-function (offsets) (pair?)
   #{
     \once \override Slur.positions =
     #(lambda (grob)
        `(,(+ (car offsets) (cdar (ly:slur::calc-control-points grob))) .
           ,(+ (cdr offsets) (cdr (cadddr (ly:slur::calc-control-points grob))))))
   #})

