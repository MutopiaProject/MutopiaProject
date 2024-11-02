%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

% % ly:expect-warning only works to supress once.  This function allows
% % you to specify the number of times a warning appears.
% #(define ly:expect-warning-times (lambda args
%    (for-each (lambda _ (apply ly:expect-warning (cdr args)))
%              (iota (car args)))))

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

% sempreDim =
%   #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
%                'span-text "sempre dim.")
%   
% perdendosi =
%   #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
%                'span-text "perdendosi")

pocoAPocoCrescMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "poco a poco cresc."
pocoAPocoCresc =
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
               'span-text pocoAPocoCrescMarkup)
  
crescEdAccelMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "cresc. ed accel."
crescEdAccel =
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
               'span-text crescEdAccelMarkup)
  
decrescEdAccelMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "decresc. ed accel."
decrescEdAccel =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text decrescEdAccelMarkup)

% ffz = #(make-dynamic-script "ffz")
% rf = #(make-dynamic-script "rf")

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

%
% Markup
%

ten = \markup \large \italic ten.
riten = \markup \large \italic riten.
leggiero = \markup \large \italic leggiero
cantando = \markup \large \italic cantando
piuLento = \markup \large \italic "più lento"
stretto = \markup \large \italic \whiteout \pad-markup #0.25 stretto
sostenuto = \markup \large \italic \whiteout \pad-markup #0.25 sostenuto
% pocoRit = \markup \large \italic "poco rit."
aTempo = \markup \large \italic "a tempo"
piuPresto = \markup \large \italic "più presto"
% piuF = \markup { \large più \dynamic f }
% secondVolta = \markup \bold "2nd volta"
% ffEnergico = \markup { \dynamic ff \normal-text \large \italic energico }
% pEspress = \markup { \dynamic p \normal-text \large \italic espress. }
% ritenEMoltoCresc = \markup \large \italic "riten. e molto cresc."
% firstVoltaSecondVolta = \markup {
%   \whiteout { \pad-markup #0.25 { \large { \normal-text { "1st volta:" }
%   "soto voce," \normal-text{ "2nd volta:" } forte } } }
% }
parenPiuP = \markup { \concat { \large \italic "(più " \dynamic p ")" } }

edAccelSpanner = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.25 
  "ed accel."
smorzSpanner = \makeSpanner \markup \large \italic smorz.
dimERallSpanner = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.25 
  "dim. e rall."

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((-1 . 2.5) (-1 . 2) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0.5 . 0) (0 . 1) (0 . 1) (0 . -1))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 0.5))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . -0.25) (-5 . -0.25) (-5.5 . 1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 1))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 0.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeM = \shape #'((0 . 2.5) (0 . -1) (0 . -1) (0 . 2.5)) \etc
slurShapeN = \shape #'((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 3.5) (1 . -3) (0 . -1) (0 . 2)) \etc
slurShapeP = \shape #'((0 . 3) (1 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 3.5) (1 . -3) (0 . -1) (0 . 2)) \etc
slurShapeR = \shape #'((0 . 2.5) (0 . -1) (0 . -1) (0 . 1.5)) \etc
slurShapeS = \shape #'(
                        ((0 . 2.5) (0 . 0.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeT = \shape #'((0 . 2.5) (0 . -1) (0 . -1) (0 . 2.5)) \etc
slurShapeU = \shape #'((0 . 2.5) (0 . -0.5) (0 . -0.5) (0 . 2.5)) \etc
slurShapeV = \shape #'((0 . 3) (0 . 2) (0 . 0.5) (0 . 0)) \etc
slurShapeW = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 2))
                      ) \etc
slurShapeX = \shape #'((0 . 2.5) (0 . 2) (0 . 0.5) (0 . 0)) \etc
slurShapeY = \shape #'((0 . -0.5) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeZ = \shape #'((0 . 2.5) (0 . -0.5) (0 . -1.5) (0 . 0)) \etc
slurShapeAA = \shape #'((0 . 1) (0 . -1) (0 . -2) (0 . 2.5)) \etc
slurShapeAB = \shape #'((0 . 2.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeAC = \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAD = \shape #'((0 . 1) (0 . -1) (0 . -1) (0 . 2.5)) \etc
slurShapeAE = \shape #'((0 . -0.5) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeAF = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeAG = \shape #'((0 . 2.5) (1 . -1) (0 . 0) (0 . 1)) \etc
slurShapeAH = \shape #'((0 . -2) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeAI = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAJ = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAK = \shape #'(
                         ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                         ((0 . 1) (0 . 1) (0 . 1) (0 . 0))
                       ) \etc
slurShapeAL = \shape #'((0 . 1) (2 . 1) (-2 . 1) (0 . 0)) \etc
slurShapeAM = \shape #'(
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAN = \shape #'((0 . 1) (2 . 1) (-2 . 1) (0 . 0)) \etc
slurShapeAO = \shape #'((0 . 1) (2 . 1) (-2 . 1) (0 . 0)) \etc
slurShapeAP = \shape #'(
                         ((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (0 . -8) (0 . -3) (0 . 4))
                       ) \etc
slurShapeAQ = \shape #'(
                         ((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0))
                         ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAR = \shape #'(
                         ((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0))
                         ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAS = \shape #'((0.5 . 0.75) (0 . 0.75) (0 . 0) (0 . 0)) \etc
slurShapeAT = \shape #'(
                         ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                         ((0 . 0) (0 . 2) (0 . 2) (0 . 0))
                         ) \etc
slurShapeAU = \shape #'(
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAV = \shape #'(
                         ((0 . -2) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 2))
                       ) \etc
slurShapeAW = \shape #'(
                         ((0 . 0) (0 . 2) (0 . 3) (0 . 3.5))
                         ((0 . 4) (0 . 3) (0 . 3) (-0.5 . 2))
                       ) \etc
slurShapeAX = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                       ) \etc
slurShapeAY = \shape #'((0 . 0) (0 . 2) (0 . 2) (0 . 0)) \etc
slurShapeAZ = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeBA = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0.75))
                         ((0 . 0.5) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBB = \shape #'(
                         ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                         ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBC = \shape #'(
                         ((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                         ((0.5 . 0) (0 . 0) (0 . 1) (0 . 2))
                       ) \etc
slurShapeBD = \shape #'(
                         ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (-0.5 . 1) (0 . 1))
                       ) \etc
slurShapeBE = \shape #'(
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0.5) (0.5 . 0.5) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBF = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 2))
                       ) \etc
slurShapeBG = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBH = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBI = \shape #'(
                         ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                         ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBJ = \shape #'(
                         ((-1 . 2.5) (-0.5 . 2) (0 . 1) (0 . 0.25))
                         ((0 . 2.5) (0.5 . 2.5) (0 . 2) (0 . 2))
                       ) \etc
slurShapeBK = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeBL = \shape #'(
                         ((0 . 0) (0 . -3) (0 . 0.5) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBM = \shape #'(
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (5 . 0) (0 . 0) (0 . 0))
                         ) \etc
slurShapeBN = \shape #'((0 . 2) (3 . -2) (0 . 0) (0 . 0)) \etc
slurShapeBO = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 2) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeBP = \shape #'((0 . 2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeBQ = \shape #'(
                         ((0 . 2) (0 . 1) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 1.25) (0 . 2))
                         ) \etc
slurShapeBR = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) \etc

tieShapeA = \shape #'((0 . 0) (0 . 0) (0 . -0.25) (0 . -0.25)) \etc
tieShapeB = \shape #'((0 . 0) (0 . -2) (0 . -2) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . -0.75) (0 . -0.75) (0 . 0)) \etc
tieShapeD = 
  \shape #'((0 . 0.5) (0 . 0.5) (-1.25 . 0.5) (-1.25 . 0.5)) \etc

tieThicknessA = \once \override Tie.thickness = 0.5
positioningDone = \once \override TieColumn.positioning-done = ##t

moveDynamicA = 
  \tweak X-offset -4 
  \offset Y-offset -3
  \etc
moveDynamicB = \tweak X-offset -3 \etc

moveOttavaA = \once \override Staff.OttavaBracket.outside-staff-priority = ##f

moveTextA = 
  -\tweak outside-staff-priority ##f 
  -\offset Y-offset 2 
  \etc
moveTextB = 
  -\tweak outside-staff-priority ##f 
  -\offset Y-offset 1.5
  \etc
  
moveTextSpannerA = \once \override Staff.TextSpanner.Y-extent = #'(0 . 0)

forceHShiftA = \once \override NoteColumn.force-hshift = -0.5

arpeggioPositionsA = 
  \tweak positions #'(-4 . 1) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
arpeggioPositionsB = 
  \tweak positions #'(-4 . 1) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
arpeggioPositionsC = 
  \tweak positions #'(-3 . 1) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
arpeggioPositionsD = 
  \tweak positions #'(-3 . 1) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
arpeggioPositionsE = 
  \tweak positions #'(-3 . 2) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
arpeggioPositionsF = 
  \tweak positions #'(-1 . 3) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
arpeggioPositionsG = 
  \tweak positions #'(-4 . 1) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc
  
rotateHairpinA = \once \override Hairpin.rotation = #'(7 -1 0)
rotateHairpinB = \once \override Hairpin.rotation = #'(10 -1 0)
rotateHairpinC = \once \override Hairpin.rotation = #'(9 -1 0)
rotateHairpinD = \once \override Hairpin.rotation = #'(-9 -1 0)
rotateHairpinE = \once \override Hairpin.rotation = #'(7 -1 0)
rotateHairpinF = \once \override Hairpin.rotation = #'(7 -1 0)
rotateHairpinG = \once \override Hairpin.rotation = #'(8 -1 0)
rotateHairpinH = \once \override Hairpin.rotation = #'(6 -1 0)
rotateHairpinI = \once \override Hairpin.rotation = #'(9 -1 0)
