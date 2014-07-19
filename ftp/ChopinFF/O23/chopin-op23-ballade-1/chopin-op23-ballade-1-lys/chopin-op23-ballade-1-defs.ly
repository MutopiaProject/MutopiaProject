\version "2.18.2"

%--------Definitions for Chopin Ballade 1
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
mBreak = {
  \break 
}
mNoBreak = {
  \noBreak
}

global = { \key g \minor }

myTitles = \markup {
       \override #'(baseline-skip . 1)
       \column {
         \override #'(baseline-skip . 1)
       \column {
         \fill-line {
           \huge \larger \larger \bold
           \fromproperty #'header:title
         }
       \fill-line {
         \fromproperty #'header:dedication
         \fromproperty #'header:composer
       }
      }
     }
    }

hideF = \tweak #'stencil ##f \f
hideP = \tweak #'stencil ##f \p
hideMF = \tweak #'stencil ##f \mf
hidePP = \tweak #'stencil ##f \pp
hidePPP = \tweak #'stencil ##f \ppp

tempoLargo = \tempo 4 = 65
tempoMod = \tempo 4 = 88
tempoModPr = \tempo 4 = 97
tempoModPrstis =  \tempo 4 = 110
tempoPresto = \tempo 4 = 120
tempoAgitato = \tempo 4 = 140
tempoAgitPresto = \tempo 4 = 160
tempoAgitPrestis = \tempo 4 = 180
tempoPrestissimo = \tempo 4= 210
hideTempo = \set Score.tempoHideNote = ##t

%-----------"Hairpins with added text"
%----------- author = "Janek Warchoł and unknown author"
hairpinWithText =
#(define-music-function (parser location text horiz-align vert-align)
   (markup? number-or-string? number?)
   #{
     \once \override Hairpin.height = #(if (> 1 (abs vert-align)) 1.1 0.6666)
     \once \override Voice.Hairpin.after-line-breaking =
     #(lambda (grob)
        (let* ((stencil (ly:hairpin::print grob))
               (mrkup (grob-interpret-markup grob text))
               (par-y (ly:grob-parent grob Y))
               (grow-dir (ly:grob-property grob 'grow-direction))
               (horiz-side (if (string? horiz-align)
                               (cond
                                ((string=? "opening" horiz-align)
                                 (if (eq? grow-dir 1) RIGHT LEFT))
                                ((string=? "closing" horiz-align)
                                 (if (eq? grow-dir 1) LEFT RIGHT)))
                               horiz-align))
               (hairpin-dir (ly:grob-property par-y 'direction))
               (new-stencil (ly:stencil-aligned-to
                             ;; stencil-combine-at-edge doesn't work with fractional alignments,
                             ;; so we have to use stencil-add when we want to put text in hairpin.
                             (if (> 1 (abs vert-align))
                                 (ly:stencil-add
                                  (ly:stencil-aligned-to stencil X horiz-side)
                                  (ly:stencil-aligned-to
                                   (ly:stencil-aligned-to mrkup X horiz-side)
                                   Y (* -1 vert-align)))
                                 (ly:stencil-combine-at-edge
                                  (ly:stencil-aligned-to stencil X horiz-side)
                                  Y
                                  (* -1 hairpin-dir vert-align)
                                  (ly:stencil-aligned-to mrkup X horiz-side)
                                  0.1))
                             X LEFT))
               (staff-space (ly:output-def-lookup (ly:grob-layout grob) 'staff-space))
               (staff-line-thickness
                (ly:output-def-lookup (ly:grob-layout grob) 'line-thickness))
               (grob-name (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name)))
               (par-x (ly:grob-parent grob X))
               (dyn-text (eq? (grob-name par-x) 'DynamicText ))
               (dyn-text-stencil-x-length
                (if dyn-text
                    (interval-length
                     (ly:stencil-extent (ly:grob-property par-x 'stencil) X))
                    0))
               (x-shift
                (if dyn-text
                    (-
                     (+ staff-space dyn-text-stencil-x-length)
                     (* 0.5 staff-line-thickness)) 0)))

          (ly:grob-set-property! grob 'Y-offset 0)
          (ly:grob-set-property! grob 'stencil
            (ly:stencil-translate-axis
             new-stencil
             x-shift X))))
   #})

lentoLegend = \markup \huge \right-align \bold \raise #1.5 "Lento."
moderatoLegend = \markup \center-align \huge \bold "         Moderato."
menoMossoLegend = \markup { \override #'(baseline-skip . 2.0) 
  \left-column { \huge \bold "Meno mosso."
  \italic \large "              sotto voce" }
}
prestoConFuoco = \markup \huge \bold \center-align "Presto con fuoco."
fPesante = \markup \concat { \dynamic "f" \italic \larger "  pesante" }
pDolce = \markup \concat { \dynamic "p" \italic \larger " dolce" }
ffz = \markup { \center-align \dynamic "ffz" }
forteTxt = \markup \dynamic "f"
fzText = \markup \dynamic "fz"
fzWhiteTxt = \markup \whiteout \dynamic "fz"
pianoTxt = \markup \dynamic "p"
fffTxt = \markup \dynamic "fff"
dimTxt = \markup \italic \larger "dim."
dimTxtSm = \markup \italic "dim."
espressTxt = \markup \italic \larger "espress."
tenutoTxt = \markup \italic \larger "tenuto"
pocoCresc = \markup \italic \larger "poco cresc."
aTempo = \markup \italic \larger "a tempo"
agitato = \markup \italic \larger \raise #2.5 "agitato"
leggiero = \markup \italic \larger "leggiero"
conForza = \markup \italic \larger \whiteout "   con forza"
pPesante = \markup { \whiteout { \dynamic "p" \italic \smaller "(pesante)" } }
fzSforzato = \markup { \whiteout { \dynamic "fz" \raise #0.4 \musicglyph #"scripts.sforzato" } }
fzSforzatoHi = \markup { \whiteout { \dynamic "fz" \raise #0.9 \musicglyph #"scripts.sforzato" } }
sfSforzato = \markup { \whiteout \dynamic "sf" \raise #0.4 \musicglyph #"scripts.sforzato"  }
crescTxt = \markup \italic \larger "cresc."
crescTiny = \markup \italic \small \rotate #5.0  "cresc."
crescTinyB = \markup \italic \small \rotate #4.0  "cresc."
crescTinyC = \markup \italic \tiny "cresc."
crescTinyD = \markup \italic \small "cresc."
riten = \markup \italic \larger "riten."
ritenSm = \markup \italic "riten."
accel = \markup \italic "accel."
accelerando = \markup \italic \larger \whiteout \raise #0.2 "  accelerando"
smorzTxt = \markup \italic "smorz."
sPiuMosso = \markup \italic \larger "sempre più mosso"
appassPiuForte = \markup \override #'(baseline-skip . 1.7) \column { \italic \larger { "   appassionato" "il più forte possibile" } }
piuF = \markup \concat { \italic " più " \dynamic "f"}
menoMosso = \markup \override #'(baseline-skip . 1.7) \column { \larger \bold "Meno mosso." \italic "sotto voce"  }
semprePP = \markup { \italic "sempre" \dynamic "pp" }
semprePiuF = \markup { \italic "sempre più " \dynamic "f" }
sempreF = \markup { \italic "sempre" \dynamic "f" }
sempreFF = \markup { \raise #0.5 \italic "sempre"  \dynamic "ff" }
sempreCresc = \markup { \italic "sempre cresc." }
aTempoMenoMosso = \markup { \center-align \italic  "a tempo (meno mosso)   " }
sottoVoce = \markup \italic \larger "sotto voce"
moltoCresc = \markup \italic \larger "molto cresc."
animatoLegend = \markup \italic \larger "   animato"
poco = \markup \italic \larger "poco"
aTxt = \markup \italic \larger " a"
crescTwo = \markup \center-align \italic \larger "cresc.  "
pocoRiten = \markup \italic \larger "poco riten."
piuAnimato = \markup \italic \larger "più animato"
tenTxt = \markup { \center-align  \italic "  ten." }
sharpPrall = \markup \override #'(baseline-skip . 1.7) \center-column { \teeny \musicglyph #"accidentals.sharp" \musicglyph #"scripts.prall" }
sharpTxt = \markup \fontsize #-1.0 \musicglyph #"accidentals.sharp"
flatTxt = \markup \fontsize #-1.0 \musicglyph #"accidentals.flat"
naturalTxt = \markup \fontsize #-1.0 \musicglyph #"accidentals.natural"
bassClefTxt = \markup \musicglyph #"clefs.F_change"

ritenSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "ritenuto    " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.thickness = 2.1
  \override TextSpanner.avoid-slur = #'inside
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.staff-padding = 3.0
  \override TextSpanner #'bound-details #'right #'padding = #4.0
  \override TextSpanner #'bound-details #'right-broken #'padding = #0.5
}
menoFSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "poco    a    poco    meno  " \dynamic "f" "    " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.staff-padding = 5.5
}
nullSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { " " }
  \override TextSpanner.staff-padding = 3.9
}
piuPianoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "  sempre    più " \dynamic "p" "   " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
calandoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup \center-align { \italic "     calando  " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.staff-padding = 3.1
}
piuDimSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \whiteout \italic "  più  dimin.   e riten.  " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.staff-padding = 0.0
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \override TextSpanner.thickness = 2.1
}
semprePiuPSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre più " \dynamic "p" "  " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.thickness = 2.1
  \override TextSpanner.staff-padding = 0.0
  \once \override TextSpanner #'direction = #DOWN
  \once \override TextSpanner.extra-offset = #'( 0.4 . -1 )
}
eRallSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "e  rall. " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \once \override TextSpanner #'direction = #DOWN
  \once \override TextSpanner.extra-offset = #'( 0 . -1 )
}
sempreCrescSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre cresc." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.staff-padding = 0.0
  \once \override TextSpanner.extra-offset = #'(0 . -2.8)
}
semprePiuCrescSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre più cresc.   " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \once \override TextSpanner.outside-staff-priority = ##f
  \once \override TextSpanner.padding = 0.0
  \once \alterBroken extra-offset #'((0 . -3.4) (0 . -2.7)) TextSpanner
}
dimPiuRallentSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic \larger "dim. e più rallent.    " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \once \override TextSpanner.staff-padding = 0
  \once \override TextSpanner.extra-offset = #'( 0.3 . -1.4 )
}
sforzatoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \concat { \dynamic "sf" \raise #0.4 \musicglyph #"scripts.sforzato" "  " } }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \once \override TextSpanner.extra-offset = #'( -1.9 . 0.7 )
}
pocoRitenSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic \larger \whiteout "poco riten.  " }
  \override TextSpanner #'(bound-details right text) = \accelerando
  \override TextSpanner #'(bound-details right stencil-align-dir-y) = #CENTER
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.staff-padding = 2.9
}
ppSpanner = {
  \override TextSpanner.staff-padding = 0.2
  \override TextSpanner #'(bound-details left text) = ##f
  \override TextSpanner #'(bound-details right text) = \markup { " " \dynamic "pp" }
  \override TextSpanner.avoid-slur = #'inside
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner #'(bound-details right stencil-align-dir-y) = #UP
  \once \override TextSpanner.extra-offset = #'(-1 . 0.4 )
}
setDynTxtSpanStyle = {
  \override DynamicTextSpanner.dash-period = #14.0
  \override DynamicTextSpanner.dash-fraction = #0.04
  \override DynamicTextSpanner.dash-period = #8.0
  \override DynamicTextSpanner.thickness = 2.1
}

setRestDirDown = \override Rest #'direction = #down
setRestDirUp = \override Rest #'direction = #up
doubleSlursOn = \set doubleSlurs = ##t
doubleSlursOff = \set doubleSlurs = ##f
connectArpeggio = \set Staff.connectArpeggios = ##t
allowTextScriptInStaff = \once \override TextScript.staff-padding = #'()

cadenzaSizeOn = {
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
  \override AccidentalCautionary.font-size = #-4
  \override Beam.beam-thickness = #0.28
  \once \override Beam.length-fraction = #0.65
}
cadenzaSizeOff = {
  \revert NoteHead.font-size
  \revert Accidental.font-size
  \revert AccidentalCautionary.font-size
  \revert Beam.beam-thickness
}

subdivideBeamOne = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/4)
}
subdivideBeamTwo = {
  \set subdivideBeams = ##t
}

hideTupletNumber = \override TupletNumber.transparent = ##t
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
onceHideTuplet = {
            \once \hideTupletBracket
            \once \hideTupletNumber
}


subdivideLenghtHalf = \set baseMoment = #(ly:make-moment 1/2)
subdivideLenghtFourth = \set baseMoment = #(ly:make-moment 1/4)
subdivideLenghtEigth = \set baseMoment = #(ly:make-moment 1/8)
subdivideLenghtThreeSixt = \set baseMoment = #(ly:make-moment 3/16)

subdivideBeamOff = \set subdivideBeams = ##f
restDownOne = \once \override MultiMeasureRest.staff-position = #2
restDownTwo = \once \override MultiMeasureRest.staff-position = #-4

alignBeamOne = \once \override Beam.positions = #'(-1.2 . -1.2)
alignBeamTwo = \once \override Beam.positions = #'(-4.4 . -5.0)
alignBeamTre = \once \override Beam.positions = #'(-3.4 . -2.7)
alignBeamQtr = \once \override Beam.positions = #'(-2.5 . -1.4)
alignBeamCin = \once \override Beam.positions = #'(-1.2 . 0.2)
alignBeamSix = \once \override Beam.positions = #'(-2.5 . -2.5)
alignBeamSep = \once \override Beam.positions = #'( 1.8 . -0.6)
alignBeamOct = \once \override Beam.positions = #'( 4.2 . 2.2)

moveNoteOne = \once \override NoteColumn #'force-hshift = #0.8
moveNoteTwo = \once \override NoteColumn #'force-hshift = #1.5
moveNoteTre = \once \override NoteColumn #'force-hshift = #-0.7
moveNoteQtr = \once \override NoteColumn #'force-hshift = #2.0
moveNoteCin = \once \override NoteColumn #'force-hshift = #-0.1
moveNoteSix = \once \override NoteColumn #'force-hshift = #0.3
moveNoteSep = \once \override NoteColumn #'force-hshift = #1.3
moveNoteOct = \once \override NoteColumn #'force-hshift = #-3
moveNoteNov = \once \override NoteColumn #'force-hshift = #0.4


shortStemOne = \once \override Stem.length-fraction = #(magstep -4)
shortStemTwo = \once \override Stem.length-fraction = #(magstep -3)
shortStemTre = \override Stem.length-fraction = #(magstep -3)
shortStemQtr = \override Stem.length-fraction = #(magstep -2)
shortStemCin = \once \override Stem.length-fraction = #(magstep -2)
shortStemSix = \once \override Stem.length-fraction = #(magstep -1)
shortStemRev = \revert Stem.length-fraction

slashFlag = \once \override Flag.stroke-style = #"grace"
hideAccidental = \once \override Voice.Accidental.stencil = ##f

halfNotehead = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph #"noteheads.s2"
}
smallNotehead = \once \override NoteHead.font-size = #-3

dynLeft = { \once \override DynamicText.self-alignment-X = 2.5 }

shpSlurA = \shape #'((-0.3 . -0.4) (0 . 0) (0 . 0) (0 . 0)) Slur
shpSlurB = { \shape #'((-0.7 . 2.9) (3 . -0.5) (-1 . 0) (0.5 . 0.5)) PhrasingSlur
             \shape #'((-0.4 . 0.2) (1.0 . 1.0) (-0.8 . 1.1) (0 . 0)) Slur }
shpSlurC = \shape #'((-0.6 . -0.9) (3 . 2.0) (0 . -0.5) (-0.7 . -1.6)) PhrasingSlur
shpSlurD = \shape #'(( 0.3 . 1.0) (0.5 . 1.7) (-0.5 . 0.5) (0.1 . 0.9)) Slur
shpSlurE = \shape #'( ((-0.3 . 0.4) (1 . -0.4) (0 . 1) (0 . 1.6)) 
                      ((-0.9 . 1.4) (0 . 1.2) (1 . 1.0) (0.5 . -1.6)) )PhrasingSlur
shpSlurF = \shape #'(( 0.3 . 0.8) (0.5 . 1.3) (-0.5 . 1.3) (0 . 0.8)) Tie
shpSlurG = \shape #'((0 . -1.0) (0 . 0) (-2.0 . 2.0) (0 . 0.5)) PhrasingSlur
shpSlurH = {  \shape #'((-1.2 . 0) (-0.5 . -0.4) (0.6 . -0.2) (0.7 . 0)) Tie
              \shape #'( ((0 . 3) (0 . 3.5) (-1.0 . 5.5) (0.7 . 5.8)) 
                         ((0 . 3) (0 . 3) (0.5 . 2.6) (0.5 . 2.4)) ) PhrasingSlur }
shpSlurI = \shape #'(( 0 . 0.3) (0 . 0.3) (0 . 0.3) (0 . 0.3)) Slur
shpSlurJ = \shape #'(( 0 . -0.6) (0 . -0.8) (0 . -0.8) (-0.2 . -0.6)) Slur
shpSlurK = \shape #'(( 0 . -2.3) (0 . -2.3) (0 . -2.3) (0 . -2.3)) Slur
shpSlurL = \shape #'(( 0 . -1.9) (0 . -1.9) (0 . -1.9) (0 . -1.9)) Slur
shpSlurM = \shape #'((-1.2 . 0) (-0.5 . -0.4) (0.6 . -0.2) (0.7 . 0)) Tie
shpSlurN = { \shpSlurM \shape #'((-0.3 . 3.2) (0 . 3.2) (-1.0 . 3.5) (0.7 . 2.6)) Slur }
shpSlurO = \shape #'(( 0 . 1.2) (0 . 2.0) (-2.0 . 2.0) (0 . -1.6)) Slur
shpSlurP = \shape #'( ((0 . -0.4) (0 . -0.4) (0 . -0.4) (0 . 0)) 
                      ((0 . 2.3) (0 . 2.6) (0.5 . 2.6) (0.5 . 2.4)) )PhrasingSlur
shpSlurQ = \shape #'((0 . -0.4) (0 . -0.6) (0 . -0.6) (0 . -0.3)) Slur
shpSlurR = {  \shpSlurM
              \shape #'( ((0 . 3) (0 . 3.5) (-1.0 . 5.5) (0.7 . 5.8)) 
                         ((-2.3 . 0.3) (1 . 1.8) (-1.5 . -1.3) (-0.6 . -3.2)) ) PhrasingSlur }
shpSlurS = \shape #'((0 . -0.4) (0 . 0.6) (-1 . 0.6) (-0.4 . -1.2)) PhrasingSlur
shpSlurT = \shape #'((0.5 . 0.8) (0.5 . 0.8) (1 . 1) (0.6 . 2)) Slur
shpSlurU = \shape #'( ((0 . -2) (3 . 1.0) (1 . 1.0) (0 . -0.2)) 
                      ((-2.0 . 4.0) (-1 . 3.7) (0.5 . 2.8) (0.0 . 2.6)) )PhrasingSlur
shpSlurV = \shape #'((-0.3 . 1.4) (0 . 1.3) (0 . 0.6) (0 . 0)) PhrasingSlur
shpSlurW = \shape #'((0.2 . 0.6) (0 . 0.8) (0 . 0.5) (0 . 0.3)) Slur
shpSlurX = \shape #'((-0.2 . -1.6) (1.5 . -0.9) (-2 . 0) (0 . -1)) PhrasingSlur
shpSlurY = \shape #'((0 . 0.6) (5 . -1.0) (-5 . -0.7) (0.6 . 0.9)) PhrasingSlur
shpSlurZ = \shape #'( ((-0.5 . 0.5) (3 . -0.5) (-5 . -0.2) (0.0 . 1.3))
                      ((0 . 0.5) (1 . -0.5) (-1 . -0.5) (0.4 . 0.4)) ) PhrasingSlur
shpSlurAA = \shape #'( ((-0.9 . 0.7) (0 . 1.3) (-1 . 0.3) (0.0 . -1.5))
                       ((-3.2 . 0.2) (0 . 3.5) (-1.0 . 1) (0.4 . -1.0))
                       ((0.3 . 0.8) (0.3 . 0.4) (0.4 . 0.2) (0 . 0)) ) PhrasingSlur
shpSlurAB = { \shape #'((-0.4 . -0.4) (0 . 1) (0 . 1.4) (0 . 0.6)) PhrasingSlur
              \shape #'((0.3 . 0) (0.3 . 0.4) (-0.3 . 0.4) (-0.2 . 0)) Tie }
shpSlurAC = \shape #'((-0.3 . 0.6) (0 . 0.8) (0 . 0.9) (0.6 . 0.6)) Slur
shpSlurAD = \shape #'((-1.2 . 0.2) (-0.3 . 0.7) (0.3 . 0.7) (1.1 . 0.3)) Tie
shpSlurAE = \shape #'((-1.2 . 0.4) (-0.6 . 1.2) (0.6 . 1.2) (1.1 . 0.6)) Tie
shpSlurAF = \shape #'((-0.3 . 0) (0 . 0.1) (0 . 0.5) (0.6 . 0)) Slur
shpSlurAG = \shape #'((-1.4 . 0.8) (-1.3 . 1.3) (-0.2 . 1.3) (0 . 0.9)) Tie
shpSlurAH = \shape #'((0 . 0.6) (0 . 0.8) (0 . 0.8) (0 . 0.5)) Tie
shpSlurAI = \shape #'((-0.2 . -0.8) (0 . -0.7) (-0.3 . -0.7) (-0.3 . -0.7)) Tie
shpSlurAJ = \shape #'((-1.3 . 0.4) (0 . 0.5) (0 . 0) (0 . -0.7)) Slur
shpSlurAK = \shape #'((0.7 . -0.3) (0.6 . 0.4) (0.6 . 0.5) (0.6 . 0.2)) Slur
shpSlurAL = \shape #'((0.8 . 0.3) (0.6 . 0.4) (0.6 . 0.5) (0.6 . 0.2)) Slur
shpSlurAM = \shape #'((-0.5 . 0.3) (0 . 0.6) (0.3 . 0.2) (0.6 . 0.0)) Slur
shpSlurAN = \shape #'((-0.5 . -0.1) (-0.3 . 0.2) (0.3 . 0.2) (0.5 . -0.1)) Tie
shpSlurAO = \shape #'((0 . 0.7) (0 . -0.9) (0.0 . -1.2) (0.0 . 0.5)) Slur
shpSlurAP = \shape #'((-0.3 . 0.5) (0 . 1.0) (0.0 . 0.5) (0.4 . 0.3)) Slur
shpSlurAQ = \shape #'((0 . 0) (0 . -0.2) (-0.5 . -1.0) (-0.8 . -0.9)) Slur
shpSlurAR = \shape #'((0.7 . 1.0) (0 . 1.0) (0 . 0.5) (0.3 . 0.4)) Slur
shpSlurAS = \shape #'((-0.7 . -1.8) (0 . -1.3) (0 . -1.3) (-0.3 . -1.3)) Slur
shpSlurAT = \shape #'( ((0 . 0.0) (3 . 0.5) (-0.5 . 0.6) (0.5 . 1.0))
                      ((0 . 1.7) (0 . 1.0) (0 . 0.6) (0 . 0)) ) PhrasingSlur
shpSlurAU = \shape #'((0.9 . 1.7) (1.2 . -0.9) (0.0 . -1.0) (0.6 . 0.5)) Slur
shpSlurAV = \shape #'((1.0 . 2.1) (0.6 . 0.9) (0.6 . 0.5) (0.6 . 0.2)) Slur
shpSlurAW = {
         \shape #'((0 . -0.3) (0 . -0.3) (0 . -0.3) (0 . -0.3)) Slur
         \once \override Slur.padding = 0.0 }
shpSlurAX = \shape #'((-0.6 . -0.5) (0 . 0) (-4 . 0.2) (-0.3 . -0.9)) PhrasingSlur
shpSlurAY = \shape #'((-0.4 . 0.5) (2 . 0.9) (0 . 2) (0.4 . -1.6)) Slur
shpSlurAZ = \shape #'((-0.8 . 1) (0 . 0.6) (0 . 0.6) (0.4 . 1)) Slur
shpSlurBA = \shape #'((-0.6 . -0.7) (0 . 1) (0 . 1) (0.7 . -1)) Slur
shpSlurBB = \shape #'( ((0 . 0.6) (0 . 0) (0 . -0.6) (-0.5 . -2.0))
                      ((0 . 6) (1 . 5.5) (1.3 . 5.2) (1 . 3)) ) Slur
shpSlurBC = \shape #'((0.6 . 2) (1 . 1) (0 . 0) (0 . 0)) Slur
shpSlurBD = \shape #'((0.6 . 2) (0 . 0) (0 . -1) (-0.4 . -1.5)) Slur
shpSlurBE = \shape #'((0 . 0.2) (0 . 0.8) (0 . 0.6) (0 . 0.4)) Slur
shpSlurBF = \shape #'((-0.7 . 0.0) (2 . 2.0) (-2 . 2.0) (0 . 0)) PhrasingSlur
shpSlurBG = \shape #'((0 . 0.0) (0 . 1.0) (-2 . 1.0) (0 . -1.0)) PhrasingSlur
shpSlurBH = \shape #'((0.2 . 0.5) (0 . 0.9) (0 . 0.9) (0 . 0.9)) Slur
shpSlurBI = \shape #'((0.2 . 0.0) (1 . 0.9) (-1 . 0.9) (-0.2 . 0)) Slur
shpSlurBJ = \shape #'((0.2 . 0.0) (1 . 5) (-12 . 6) (-0.2 . 0)) Slur
shpSlurBK = \shape #'((0.2 . 0.5) (0.8 . -0.3) (-0.8 . -0.3) (-0.6 . 0.5)) Tie
shpSlurBL = \shape #'((-0.8 . 0) (0 . -0.7) (0 . -0.7) (0 . 0)) Tie
shpSlurBM = \shape #'((0.6 . 0.6) (0.5 . 0.5) (-0.6 . 0.3) (-1.0 . 0)) Slur
shpSlurBN = \shape #'((0 . 0.4) (0 . 0.4) (0 . 0.4) (0 . 0.4)) Slur
shpSlurBO = \shape #'((-0.9 . -0.6) (0 . 0) (-3.5 . 1) (0 . -0.1)) Slur
shpSlurBP = \shape #'((-0.2 . -0.3) (2 . 0.1) (-2 . 0.1) (0.2 . -0.3)) Slur
shpSlurBQ = \shape #'( ((-0.4 . 0.4) (1 . 1) (-1 . 2.5) (0 . 5))
                      ((-2 . -2) (1 . -0.9) (-1.6 . -1.5) (0 . -0.7)) ) PhrasingSlur
shpSlurBR = \shape #'( ((0 . 0) (0 . 0) (0 . 0.3) (0 . 0.4))
                       ((0 . -1.6) (0 . -1.9) (0 . -1.5) (0 . -1.1)) ) Slur
shpSlurBS = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((-1 . 0.7) (0 . 1.3) (0 . 0.7) (0 . 0)) ) PhrasingSlur
shpSlurBT = \shape #'((0 . 0) (1.5 . -2) (-1.5 . -3.4) (0 . 0)) PhrasingSlur
shpSlurBU = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((-2 . -0.4) (1 . 0.5) (0 . 0) (-0.2 . -3.2)) ) PhrasingSlur
shpSlurBV = \shape #'((0 . 0) (0 . 1.5) (-1 . 1.7) (0 . 0.5)) Slur
shpSlurBW = \shape #'((0 . 0) (0 . 0.7) (-1 . 0.7) (0 . 0)) Slur
shpSlurBX = \shape #'((-0.5 . 1) (0 . -1.3) (-0.8 . -1.5) (0 . 0.5)) Slur
shpSlurBY = \shape #'((-0.5 . 0.4) (0 . 0.9) (0 . 0.7) (0 . 0.7)) Slur
shpSlurBZ = {  \shpSlurM
              \shape #'( ((0 . 3) (0 . 3.5) (-1.0 . 5.5) (0.7 . 5.8)) 
                         ((0 . 2) (0 . 2) (0 . 2) (0 . 2))  ) PhrasingSlur }
shpSlurCA = \shape #'((0.3 . -2.5) (0 . -2.3) (0 . -2.3) (-0.3 . -2.3)) Slur
shpSlurCB = \shape #'(( 0 . 0.6) (0 . 0.6) (0 . 0.6) (0 . 0.6)) Slur
shpSlurCC = \shape #'(( 0.3 . -0.8) (0 . -0.4) (0 . 0.2) (0 . 0)) Slur
shpSlurCD = \shape #'(( 0 . -0.3) (0 . -0.5) (0 . -0.7) (-0.3 . -0.8)) Slur
shpSlurCE = \shape #'(( 0 . 0) (1 . 0) (-1 . 0.3) (0.4 . -0.2)) PhrasingSlur
shpSlurCF = \shape #'(( 0 . -1) (0 . -1) (0 . -0.8) (0 . -0.8)) Slur
shpSlurCG = \shape #'( (( 0.5 . -2.6) (0.3 . -2) (0 . -1.6) (0.4 . -1.3))
                       (( 0.3 . 2.6) (0.3 . 2.4) (0.3 . 2.4) (0.2 . 2)) ) Slur
shpSlurCH = \shape #'( (( -0.7 . 0.2) (0 . 0) (0 . -1) (0 . -1.1))
                       (( -0.5 . 0.7) (0.4 . 0) (0.2 . -0.4) (0.3 . -1)) ) PhrasingSlur
shpSlurCI = \shape #'(( -0.7 . -0.9) (0 . 0) (0 . 0) (0.5 . -0.7)) PhrasingSlur
shpSlurCJ = \shape #'(( 0 . 0.3) (1 . 0.4) (-2 . 0.1) (0.4 . 0)) PhrasingSlur
shpSlurCK = \shape #'(( 0 . -0.3) (0 . -0.3) (-0.4 . -0.6) (-0.6 . -0.6)) Slur
shpSlurCL = \shape #'( ((-0.6 . 0.6) (0 . 1.4) (0 . 0.8) (3.8 . 0.3))
                       ((0 . 1) (0 . -2) (-1 . -4) (0 . 0.0))
                       ((-2.6 . 1.4) (0 . 1.8) (-8 . 3.6) (0.5 . 0.0)) ) PhrasingSlur
shpSlurCM = \shape #'(( -0.7 . -1.1) (0 . -1.6) (0 . 0.2) (0 . 0)) PhrasingSlur
shpSlurCN = \shape #'(( -0.7 . -1.3) (1.5 . 1.6) (-1.5 . 1.6) (0.6 . -1.6)) Slur
shpSlurCO = \shape #'(( -0.5 . 2.2) (1 . -3) (-1 . -3) (0.3 . 0.3)) PhrasingSlur
shpSlurCP = \shape #'(( -0.9 . -1.8) (-1.2 . 3.3) (0 . 0) (0 . -1.3)) PhrasingSlur
shpSlurCQ = \shape #'(( -0.7 . 0.4) (1 . 0.9) (-1 . 0.9) (0.6 . 0)) Slur
shpSlurCR = \shape #'(( -0.7 . 0) (1 . 1.2) (-1 . 0.5) (0.5 . 0)) Slur
shpSlurCS = \shape #'(( -0.5 . -0.8) (4 . 2.6) (-0.5 . 3) (0.5 . 0.5)) PhrasingSlur
shpSlurCT = \shape #'(( 0.5 . -2) (0.3 . -2) (0 . -2) (-0.2 . -2)) Slur
shpSlurCU = \shape #'(( 0.2 . -0.3) (0.2 . 0.2) (0 . 1.8) (0.4 . 1.9)) Slur
shpSlurCV = \shape #'( ((-1.3 . -0.6) (2 . 0.8) (-2 . 0.8) (0.8 . -0.9))
                       ((-1.5 . -0.6) (3 . 0.8) (-3 . 0.8) (0 . 0)) ) PhrasingSlur
shpSlurCW = \shape #'(( 0 . 0.4) (0.3 . -0.5) (-0.3 . -0.5) (-0.7 . 0)) Slur
shpSlurCX = \shape #'(( 0.7 . 0) (0.4 . 0) (0 . 0) (-0.2 . -0.2)) Tie
shpSlurCY = \shape #'((-0.3 . -0.3) (0 . -0.5) (-0.3 . -1.7) (-0.4 . -3.2)) Slur
shpSlurCZ = \shape #'( (( 0.4 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5))
                       (( 0 . 0) (0 . 0.2) (0 . 0.3) (0 . 0.4)) ) Slur
shpSlurDA = \shape #'(( -0.3 . -0.2) (0.4 . -0.3) (-0.4 . -0.3) (0.3 . 0.2)) Slur
shpSlurDB = \shape #'(( 0 . 0.2) (0.3 . -0.8) (-0.3 . -0.2) (-0.1 . 0)) Slur
shpSlurDC = \shape #'(( -0.6 . -1.8) (0.3 . -1.6) (0 . -1.5) (1.1 . -1.1)) Slur
shpSlurDD = \shape #'(( -0.6 . 1.2) (5 . -1) (-5 . 2.5) (0.3 . 2)) PhrasingSlur
shpSlurDE = \shape #'(( -1.2 . -2) (5 . 1.6) (-5 . 1.6) (0.3 . -2)) PhrasingSlur
shpSlurDF = \shape #'(( -0.6 . 0.7) (1 . 1.8) (-1 . 1.8) (0.4 . 1.2)) Slur
shpSlurDG = \shape #'( (( 1 . -0.3) (1.5 . 1.8) (-1 . 1.8) (0 . 1.4))
                       (( 0 . 0) (0 . 0) (0 . 0) (0 . 0)) ) Slur
shpSlurDH = \shape #'(( 0 . -0.4) (0 . -0.6) (0 . -0.6) (-0.3 . -0.4)) Slur
shpSlurDI = \shape #'(( 0 . 0) (1 . 0.6) (-1 . 0.6) (0.3 . 0.1)) Slur
shpSlurDJ = \shape #'(( 0.2 . -0.1) (0 . -0.2) (-0.1 . -0.4) (-0.3 . -0.6)) Slur
shpSlurDK = \shape #'(( -0.3 . -0.4) (10 . 2.7) (-4 . 3.2) (0 . 1)) PhrasingSlur
shpSlurDL = \shape #'(( -5 . 0) (2 . -0.1) (-2 . 1.4) (0.4 . -1)) PhrasingSlur
shpSlurDM = \shape #'(( 0 . 0.3) (0 . 0.4) (0.1 . 0.4) (0.3 . 0.3)) PhrasingSlur
shpSlurDN = \shape #'(( -1.8 . -2) (1 . 0.9) (-1 . 1.3) (0.3 . -1.3)) Slur
shpSlurDO = \shape #'( (( 0.4 . -1.4) (0 . 0) (0 . 0) (0 . -0.9))
                       (( -1.6 . 2.5) (-1 . 2.7) (0.5 . 2.5) (0.8 . 2)) ) PhrasingSlur
shpSlurDP = \shape #'(( -0.6 . -1.6) (1 . 1.5) (-1 . 1.7) (0.3 . -1.3)) Slur
shpSlurDQ = \shape #'(( -0.3 . -0.6) (0 . 0) (0 . 0.6) (0.3 . -1.3)) Slur
shpSlurDR = \shape #'(( -0.6 . 1.9) (1 . -0.3) (0 . 0) (0.7 . 1.3)) Slur
shpSlurDS = \shape #'(( -0.7 . -1) (0.5 . 0.3) (-0.5 . 0.5) (0.6 . 0.1)) Slur
shpSlurDT = \shape #'(( 0.5 . -0.6) (0.1 . -0.4) (0 . -0.3) (0 . -0.3)) Slur
shpSlurDU = \shape #'((-0.6 . 1.1) (1 . -0.3) (0 . 0) (0.7 . 1.3)) Slur
shpSlurDV = \shape #'((-0.6 . -2.1) (1 . 0.5) (0 . 0.5) (0.7 . -0.7)) Slur
shpSlurDW = \shape #'((-0.8 . 0) (0 . 0.9) (0.5 . 0.5) (0.7 . 0.3)) Slur
shpSlurDX = \shape #'((-1.2 . -2.7) (0 . -0.6) (-0.5 . -0.4) (-0.2 . -2.1)) PhrasingSlur
shpSlurDY = \shape #'((0.6 . -1.0) (0 . -1) (-0.3 . -1) (-0.5 . -1.1)) Slur
shpSlurDZ = \shape #'((-0.3 . -1.9) (0 . -1.6) (-0.3 . -0.9) (0.1 . -0.4)) Slur
shpSlurEA = \shape #'((0.6 . -0.8) (1.4 . 0.3) (-1 . 0.5) (0 . -0.9)) PhrasingSlur
shpSlurEB = \shape #'((-0.1 . 0.9) (0 . 0.9) (0.3 . 0.9) (0.9 . 0.9)) Slur
shpSlurEC = \shape #'((0.6 . -0.8) (1.4 . 0) (0.5 . 1.5) (0.3 . -2.0)) PhrasingSlur
shpSlurED = \shape #'((-0.4 . -2.3) (0 . -0.7) (0 . 0.3) (0 . 0.3)) Slur
shpSlurEF = \shape #'((-0.9 . -2.0) (1 . 0) (-1 . 0.6) (0.4 . -0.3)) Slur
shpSlurEG = \shape #'((-0.5 . 3.5) (0 . 1.5) (-0.8 . 1.2) (0.4 . 1)) Slur
shpSlurEH = \shape #'( ((-0.3 . 0.8) (1 . 0.4) (-1 . 1.0) (0 . 2.7))
                       (( 0 . 1) (1 . 1.3) (-1 . 1.2) (0.8 . -1.2)) ) PhrasingSlur
shpSlurEI = \shape #'((0 . 0.2) (0 . 0.2) (0 . 0) (0.7 . -1.6)) Slur
shpSlurEJ = \shape #'((0 . 2.4) (1 . -3.4) (-1 . -5) (0.4 . 1.0)) PhrasingSlur
shpSlurEK = \shape #'((0 . 0) (1 . -0.5) (0 . -1.3) (0.4 . 0.3)) Slur
shpSlurEL = \shape #'((-0.6 . 3.1) (1 . 1) (0 . 0) (0.7 . 1.3)) Slur
shpSlurEM = \shape #'( ((-0.3 . -1.1) (1 . 1) (-1 . 1) (0 . -0.7))
                       (( 0 . 2) (1 . 1.4) (-1 . 1.5) (0.8 . -1.2)) ) PhrasingSlur
shpSlurEN = \shape #'((0.3 . 0.3) (0.5 . -0.4) (-0.5 . -0.4) (0.3 . 0.2)) Tie
shpSlurEO = \shape #'( ((0 . 0) (0 . 0.3) (-0.5 . 0.5) (0.4 . 1))
                       ((0 . 1.3) (0.3 . 0.8) (-0.1 . 0.7) (-0.2 . 0)) ) Slur
shpSlurEP = { \shape #'((0.4 . -0.4) (0.5 . 0.1) (-0.5 . 0.1) (-0.3 . -0.3)) Tie
              \shape #'((0.1 . -0.8) (1 . 1) (-1 . 1.5) (0.2 . -0.7)) PhrasingSlur }
shpSlurEQ = { \shape #'((0.7 . -0.3) (1 . 0.4) (-1 . 0.4) (-0.3 . -0.3)) Tie
              \shape #'((0.5 . -1.6) (1 . 0.3) (-2 . 1.5) (-0.1 . -0.7)) PhrasingSlur }
shpSlurER = { \shape #'((0.7 . -0.3) (1 . 0.4) (-1 . 0.4) (-0.3 . -0.3)) Tie
              \shape #'( ((0 . -1.3) (2.5 . 2.5) (-2 . 1.5) (0 . -1.4))
                         ((0 . 7.6) (0.3 . 6.9) (0.7 . 6.3) (0.7 . 4.6)) ) PhrasingSlur }
shpSlurES = \shape #'((-0.5 . 3) (1 . -1.6) (-1 . 0.4) (0.4 . 2.2)) Slur
shpSlurET = \shape #'((-0.5 . 3) (1 . 1) (-1 . -1.4) (0.4 . 0)) Slur
shpSlurEU = { \shpSlurM \shape #'((-0.5 . 2.9) (0 . 2.9) (-1.0 . 3.1) (0.7 . 2.6)) Slur }
shpSlurEV = \shape #'((0 . 0.6) (0 . 0.7) (0.3 . 0.7) (0.4 . 0.6)) Slur
shpSlurEW = \shape #'((0 . -0.5) (0 . -0.5) (0.3 . -0.5) (-0.3 . -0.5)) Slur
shpSlurEX = \shape #'((0.3 . -2) (0.5 . -0.5) (-0.5 . -0.5) (0 . -2)) Slur
shpSlurEY = \shape #'((0.3 . -2.4) (0.5 . -2.2) (-0.5 . -2.0) (-0.6 . -2.4)) Slur
shpSlurEZ = \shape #'(( 0 . -1.3) (0 . -1.3) (0 . -1.3) (0 . -1.3)) Slur
shpSlurFA = \shape #'(( -1 . -0.5) (10 . 0) (-3 . 4) (0 . 0)) PhrasingSlur
shpSlurFB = \shape #'(( 0 . -0.6) (0 . -0.4) (0 . -0.4) (0 . -1)) Slur
shpSlurFC = \shape #'(( 0.4 . -0.6) (0 . -0.4) (0.4 . -0.9) (0.3 . -2)) Slur
shpSlurFD = \shape #'(( 0.4 . -0.6) (0 . -0.4) (0.7 . -0.9) (0.4 . -1.7)) Slur
shpSlurFE = \shape #'(( -0.4 . -0.2) (4 . 2) (-2 . 2.5) (0.8 . 0.7)) PhrasingSlur
shpSlurFF = \shape #'(( 0.4 . -0.6) (0 . -0.4) (0.7 . -0.7) (0.4 . -1.2)) Slur
shpSlurFG = \shape #'(( -0.4 . -0.2) (2 . 0.5) (-1 . 2.3) (0.5 . 0.4)) PhrasingSlur
shpSlurFH = \shape #'(( -0.4 . 0.1) (1 . 0) (-1 . 1.5) (0.5 . -1.0)) PhrasingSlur
shpSlurFI = \shape #'(( 0 . -0.6) (1 . 0) (-0.2 . 0.8) (-0.2 . 0.9)) Slur
shpSlurFJ = \shape #'(( 0.7 . 0.8) (0.5 . 1.2) (0 . 1) (0 . 0.9)) Slur
shpSlurFK = \shape #'(( -0.6 . 4) (0 . -4) (2 . -6) (0.8 . 1.0)) PhrasingSlur
shpSlurFL = \shape #'(( -0.6 . 4.3) (1 . -2) (-2 . -3) (0.8 . 2.0)) PhrasingSlur
shpSlurFM = \shape #'(( -0.6 . -2) (1 . 1.5) (-1 . 1.5) (0.6 . 0.2)) PhrasingSlur
shpSlurFN = \shape #'(( 0 . 0.5) (1 . 0.3) (-1 . 0.7) (0 . 0.4)) PhrasingSlur
shpSlurFO = \shape #'((-0.4 . 0) (1 . -0.6) (-1 . -1) (0 . 0.4)) Slur
shpSlurFP = \shape #'((0.4 . 2.3) (1 . 2) (-1 . 2) (-0.2 . 3.0)) Slur
shpSlurFQ = \shape #'((-0.6 . 1.8) (0 . -4.0) (-1 . -3) (0.8 . 0.7)) PhrasingSlur
shpSlurFR = \shape #'(( 0.3 . 1.8) (1 . 1.6) (-1 . 1.6) (1.1 . 0.8)) PhrasingSlur
shpSlurFS = \shape #'(( -0.6 . 3.7) (1 . -3) (3 . -6.5) (0.8 . 0.5)) PhrasingSlur
shpSlurFT = \shape #'(( -0.6 . 3.7) (1 . -3) (0 . -7) (0.6 . 0)) PhrasingSlur
shpSlurFU = \shape #'(( -0.6 . 2.7) (1 . -3.7) (-1 . -5) (0.2 . -0.3)) PhrasingSlur
shpSlurFV = \shape #'(( -0.4 . -0.8) (1 . -0.2) (-1 . 0.2) (0.3 . -0.1)) PhrasingSlur
shpSlurFW = \shape #'( (( -0.6 . -0.2) (1 . -0.2) (-1 . 0) (0.3 . 0))
                       (( -0.6 . 3.1) (0 . 2.5) (0 . 1.1) (0.3 . 0.1)) ) PhrasingSlur
shpSlurFX = { \shape #'(( -0.4 . 0) (1 . -1.0) (-1 . -1.1) (0.3 . -0.4)) PhrasingSlur
              \shape #'((0 . 0) (0 . -0.3) (0 . -0.3) (0 . -0.3)) Slur }
shpSlurFY = \shape #'((0 . 0) (1 . 0.2) (0 . -0.6) (0 . -1.2)) Slur
shpSlurFZ = \shape #'((-0.4 . 0.3) (1 . -0.2) (-1 . -0.2) (0.6 . 1)) PhrasingSlur
shpSlurGA = \shape #'((0 . 0) (8 . -0.3) (-2 . 3) (0.3 . -1)) PhrasingSlur
shpSlurGB = \shape #'( ((-0.5 . 0) (0.5 . 0.5) (-0.1 . 1.2) (0.3 . 1.3))
                       ((0 . -0.8) (3 . 1) (-3 . 1.3) (0.6 . -2.4)) ) PhrasingSlur
shpSlurGC = \shape #'( ((0 . 0) (0.5 . 0.5) (-0.1 . 1.2) (0 . 2))
                       ((-1 . -0.5) (3 . -2) (-6 . 6) (-0.3 . 6))
                       ((-1 . 7.5) (0 . 6.5) (0 . 5.5) (0 . 4.5)) ) PhrasingSlur
shpSlurGD = \shape #'((0 . 0) (0 . -1) (0 . 0.3) (0 . -1)) Slur
shpSlurGE = \shape #'((-0.4 . 0.6) (0 . -0.3) (-2 . 3) (0.5 . 6.4)) PhrasingSlur
shpSlurGF = \shape #'( ((-0.7 . 2.7) (-0.4 . 2.5) (0 . 2.5) (0 . 2.7))
                       ((-0.2 . 0.7) (0 . 1) (0 . 1) (-0.3 . -0.8)) ) PhrasingSlur
shpSlurGG = \shape #'((0.4 . 1) (0 . 1.3) (0 . 1.3) (-1 . 1)) Slur
shpSlurGH = \shape #'((-0.4 . 1) (0 . 1.9) (0 . 1.2) (0 . 1.3)) Slur
shpSlurGI = \shape #'((-0.4 . 0.8) (0 . 1.4) (0 . 0.6) (0 . 0.3)) Slur
shpSlurGJ = { \shape #'((-0.4 . 0.2) (-0.2 . 0.2) (0 . 0.2) (0 . 0.2)) Tie
              \shape #'( ((0 . 0.2) (0 . 0.2) (0 . 0.2) (0 . 0.2))
                         ((-1 . 0) (3 . -0.5) (-3 . -1) (-0.9 . 3)) ) PhrasingSlur }
shpSlurGK = \shape #'((-0.3 . -1) (0 . 0) (0 . 0) (0 . 0)) Slur
shpSlurGL = \shape #'((0.7 . -0.6) (0 . -0.6) (0 . -0.6) (0 . -0.3)) Slur
shpSlurGM = \shape #'((0.3 . 0.5) (0.3 . 0.5) (0.3 . 0.5) (0.3 . 0.5)) Slur
shpSlurGN = \shape #'((-0.4 . -0.2) (0 . -0.5) (0 . -0.5) (0.4 . -0.2)) Slur
shpSlurGO = \shape #'((-0.4 . -0.4) (0 . -0.3) (0 . -0.5) (0.4 . -0.5)) Slur
shpSlurGP = \shape #'((0 . -0.9) (0 . -0.6) (0 . -0.1) (-0.3 . -0.4)) PhrasingSlur
shpSlurGQ = \shape #'((0.5 . -1.6) (1 . -0.2) (-1 . 0.4) (-0.5 . -0.6)) PhrasingSlur
shpSlurGR = \shape #'((2 . -0.5) (1 . -0.2) (-0.5 . 0.3) (0.5 . 0)) Slur
shpSlurGS = \shape #'((-1 . 2.5) (1 . 2.3) (-1 . 0.7) (0 . 0)) Slur
shpSlurGT = \shape #'((0.3 . 0.7) (1 . 0.7) (-1 . 0.7) (0 . 1.2)) Slur
shpSlurGU = \shape #'( ((0 . 0) (2 . 1) (-2 . 1) (0 . 0.4)) 
                       ((-0.6 . 3.8) (-0.4 . 3.2) (0 . 2.3) (0.2 . 1.5)) ) PhrasingSlur
shpSlurGV = \shape #'((0.3 . -1.7) (0.5 . -1.0) (-0.5 . -0.4) (0 . -0.5)) Slur
shpSlurGW = \shape #'((-1 . 2.5) (1 . 2.3) (-1 . -0.5) (-0.5 . -0.5)) Slur
shpSlurGY = \shape #'((0.5 . -0.6) (1 . 0.2) (-1 . 1.2) (0.3 . -0.3)) PhrasingSlur
shpSlurGZ = \shape #'((0 . -1) (0 . -0.7) (-0.5 . -0.2) (0 . -0.1)) Slur
shpSlurHA = \shape #'((0.3 . 0.8) (0.3 . 0.8) (0.3 . 0.8) (0.3 . 0.8)) Slur
shpSlurHB = \shape #'((-0.4 . -0.30) (0 . -0.5) (0 . -0.7) (-0.3 . -1.3)) Slur
shpSlurHC = \shape #'((-0.4 . -1.8) (0 . -1.8) (0 . -1.8) (0 . -1.8)) Slur
shpSlurHD = \shape #'((0.8 . -0.8) (0.8 . -1.1) (-0.8 . -1.1) (-1.6 . -1.4)) Slur
shpSlurHE = \shape #'((0 . -2.5) (0 . -2.5) (0 . -2.8) (0 . -3.2)) Slur
shpSlurHF = \shape #'((0 . -1) (0 . 0.3) (-0.5 . -0.3) (-0.4 . -1)) Slur
shpSlurHG = \shape #'((0 . 0) (0.5 . 0.4) (-0.5 . 0.4) (0 . 0)) Tie
shpSlurHH = \shape #'((0 . -0.6) (0 . -0.4) (0 . -0.4) (0 . -0.7)) Slur
shpSlurHI = \shape #'((0 . 1.8) (0 . 1.8) (0 . 1.9) (0 . 2.0)) Slur
shpSlurHJ = \shape #'( ((0 . 3.8) (0 . 4.0) (-1.0 . 5.5) (0.7 . 5.8)) 
                       ((0 . 2) (0 . 2) (0 . 2) (0 . 2))  ) PhrasingSlur
shpSlurHK = \shape #'((0.3 . 0.8) (0.4 . 0) (0.3 . -0.4) (0 . 0)) Slur
shpSlurHL = \shape #'((0 . 0) (0.3 . -0.1) (-1.2 . -0.1) (-1.2 . -0.9)) Slur

posHairpinToBlnF = \once \override Hairpin.to-barline = ##f 
posHairpinA = {
            \once \override Hairpin.rotation = #'( 1.6 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . 9.3 )
            \once \override Hairpin.padding = 0.0
}
posHairpinB = \once \override Hairpin.extra-offset = #'( -3.0 . 0 )
posHairpinC = \once \override Hairpin.extra-offset = #'( 0 . -1 )
posHairpinD = {
            \once \override Hairpin.rotation = #'( -1.6 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . 8.9 )
            \once \override Hairpin.padding = 0.0
            \once \override Hairpin.height = 0.45
}
posHairpinE = {
            \once \override Hairpin.extra-offset = #'( 1 . -1 )
            \once \override Hairpin.padding = 2.0
}
posHairpinF = {
            \once \override Hairpin.rotation = #'( 1.0 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -0.6 )
            \once \override Hairpin.padding = 0.0
}
posHairpinG = {
            \once \override Hairpin.height = 0.49
            \once \override Hairpin.padding = 0.0
}
posHairpinH = {
            \override Beam.positions = #'( -2.6 . -1.7 )
            \override Hairpin.rotation = #'( 4.0 -1 0 )
            \override Hairpin.height = 0.42
            \override Hairpin.padding = 0
}
posHairpinHrvt = {
            \revert Beam.positions
            \revert Hairpin.rotation
            \revert Hairpin.height
            \revert Hairpin.padding
}
posHairpinI = \once \override Hairpin.extra-offset = #'( 0 . 0.3 )
posHairpinJ = {
            \once \override Hairpin.rotation = #'( 3.0 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0.2 . -0.7 )
}
posHairpinK = {
            \once \override Hairpin.rotation = #'( 13.0 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -3 )
            \once \override Hairpin.height = 0.5
}
posHairpinL = \once \override Hairpin.extra-offset = #'( 0.8 . 0 )
posHairpinM = {
            \once \override Hairpin.rotation = #'( 3.5 -1 0 )
            \once \override Hairpin.extra-offset = #'( -1 . 0 )
            \once \override Hairpin.bound-padding = 0
}
posHairpinN = {
            \once \override Hairpin.rotation = #'( -10 1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -2.4 )
            \once \override Hairpin.bound-padding = 0
}
posHairpinO = {
            \once \override Hairpin.rotation = #'( -4 0 0 )
            \once \override Hairpin.height = 0.40
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.minimum-length = 3.5
            \once \override Hairpin.extra-offset = #'( -0.3 . 0 )
}
posHairpinP = {
            \override Hairpin.height = 0.40
            \override Hairpin.bound-padding = 0.0
            \override Hairpin.minimum-length = 2.6
}
posHairpinPrev = {
            \revert Hairpin.height
            \revert Hairpin.bound-padding
            \revert Hairpin.minimum-length
}
posHairpinQ = \once \override Hairpin.extra-offset = #'( -0.7 . 0 )
posHairpinR = {
            \once \override Hairpin.rotation = #'( 5 0 0 )
            \once \override Hairpin.height = 0.88
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.extra-offset = #'( 23.3 . 1.2 )
}
posHairpinS = {
            \once \override Hairpin.rotation = #'( 3 0 0 )
            \once \override Hairpin.height = 0.86
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.extra-offset = #'(-27 . -1.8)
}
posHairpinT ={
            \once \override Hairpin.height = 0.4
            \once \override Hairpin.extra-offset = #'( 0 . -0.35 )
}
posHairpinU = {
            \once \override Hairpin.outside-staff-priority = ##f
            \once \override Hairpin.height = 0.5
            \once \override Hairpin.extra-offset = #'( -0.6 . 0 )
}
posHairpinV = {
            \once \override Hairpin.rotation = #'( 2 -1 0 )
            \revert Hairpin.height
}
posHairpinW = \once \override Hairpin.height = 0.48
posHairpinY = {
            \once \override Hairpin.rotation = #'( 0.9 -1 0 )
            \once \override Hairpin.height = 0.86
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.extra-offset = #'( -0.5 . 0.1 )
}
posHairpinZ = {
            \once \override Hairpin.rotation = #'( -0.9 1 0 )
            \once \override Hairpin.height = 0.86
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.extra-offset = #'( -0.5 . 0.1 )
}
posHairpinAA = {
            \once \override Hairpin.avoid-slur = #'inside
            \once \override Hairpin.outside-staff-priority = ##f
            \once \override Hairpin.rotation = #'( 5.6 -1 0 )
            \once \override Hairpin.height = 0.5
            \once \override Hairpin.extra-offset = #'( 1.7 . 16.0 )
            \once \override Hairpin.thickness = 1.6
}
posHairpinAB = \once \override Hairpin.rotation = #'( 3 -1 0 )
posHairpinAC = {
            \alterBroken rotation #'((0.9 -1 0 ) (2 -1 0 )) Hairpin
            \alterBroken extra-offset #'(( 0 . 11.6 ) ( 1 . 12.6 )) Hairpin
            \alterBroken height #'( 1.2 0.2 ) Hairpin
}
posHairpinAD = \alterBroken extra-offset #'(( 0 . 0 ) ( 0 . 0.8 )) Hairpin
posHairpinAE = {
            \once \override Hairpin.avoid-slur = #'inside
            \once \override Hairpin.outside-staff-priority = ##f
            \once \override Hairpin.rotation = #'( -2 -1 0 )
            \once \override Hairpin.extra-offset = #'( 18 . -0.7 )
}
posHairpinAF = \once \override Hairpin.height = 0.46
posHairpinAG = {
            \override Hairpin.extra-offset = #'(0 . 0)
            \revert Hairpin.rotation
            \once \alterBroken rotation #'((5 0 0 ) (0 -1 0 )) Hairpin
            \once \alterBroken height #'( 1.0 0.2 ) Hairpin
}
posHairpinAH = \once \override Hairpin.rotation = #'( 1.3 -1 0 )
posHairpinAI = {
    \revert Hairpin.extra-offset
    \revert Hairpin.height
    \revert Hairpin.rotation
    \once \override Hairpin.extra-offset = #'(-7.6 . 14.1)
    \once \override Hairpin.rotation = #'( 3.3 -1 0 )
    \once \override Hairpin.height = 1.1
}
posHairpinAJ = {
    \once \override Hairpin.extra-offset = #'(23.6 . -1.6)
    \once \override Hairpin.rotation = #'( 6 -1 0 )
    \once \override Hairpin.height = 0.9
}
posHairpinAK = {
    \once \override Hairpin.rotation = #'( -6 -0.5 0 )
    \once \override Hairpin.height = 0.6
}
posHairpinAL = {
    \once \override Hairpin.rotation = #'( 4 1 0 )
    \once \override Hairpin.height = 0.5
}
posHairpinAM = {
    \once \override Hairpin.rotation = #'( -4 -1 0 )
    \once \override Hairpin.height = 0.5
}
posHairpinAN = {
    \once \override Hairpin.extra-offset = #'(0 . -2.1)
    \once \override Hairpin.rotation = #'( 28 1 0 )
    \once \override Hairpin.height = 0.4
}
posHairpinAO = {
    \once \override Hairpin.extra-offset = #'(10.2 . -6)
    \once \override Hairpin.rotation = #'( 13.5 1 0 )
    \once \override Hairpin.height = 0.56
}
posHairpinAP = {
            \once \override Hairpin.rotation = #'( 3 0 0 )
            \once \override Hairpin.extra-offset = #'( -40 . -1.6 )
            \once \override Hairpin.height = 0.8
}
posHairpinAQ = \once \override Hairpin.extra-offset = #'( 2.7 . 0 )
posHairpinAR = \once \override Hairpin.extra-offset = #'( 0 . 9.4 )
posHairpinAS = \once \override Hairpin.extra-offset = #'( 2 . 1 )
posHairpinAT = {
            \once \override Hairpin.extra-offset = #'( 0 . -1 )
            \once \override Hairpin.height = 0.48
}
posHairpinAU = \once \override Hairpin.height = 0.48
posHairpinAV = \once \override Hairpin.extra-offset = #'( -29.7 . 1.4 )

posBeamA = \once \override Beam.positions = #'(2.3 . 3.7)
posBeamB = \once \override Beam.positions = #'(2.3 . 2.7)
posBeamC = \once \override Beam.positions = #'(6 . 5.3)
posBeamD = \once \override Beam.damping = #+inf.0
posBeamE = \once \override Beam.positions = #'(0.5 . 1.7)
posBeamF = \once \override Beam.positions = #'(-2.7 . -2.7)
posBeamG = \once \override Beam.positions = #'(-0.8 . -2.5)
posBeamH = \once \override Beam.positions = #'(-4.6 . -4.6)
posBeamI = \once \override Beam.positions = #'(-7.7 . 0.5)
posBeamJ = \once \override Beam.positions = #'(-6.5 . -2)
posBeamK = \once \override Beam.positions = #'(2.8 . 6.4)
posBeamL = \once \override Beam.positions = #'(-1 . -6.8)
posBeamM = \once \override Beam.positions = #'(-0.2 . -2)

cntBeamRtOne = \set stemRightBeamCount = #1
cntBeamLfOne = \set stemLeftBeamCount = #1

posScriptA = \once \override TextScript.extra-offset = #'( 0 . -0.5 )
posScriptB = \once \override Script.extra-offset = #'( 0.2 . -0.7 ) 
posScriptC = \once \override TextScript.extra-offset = #'( 0.5 . 0.6 )
posScriptD = \once \override Script.extra-offset = #'( 0.3 . -0.4 )
posScriptE = \once \override TextScript.extra-offset = #'( -0.3 . -1.3 )
posScriptF = \once \override TextScript.extra-offset = #'( 0 . -0.3 )
posScriptG = \once \override Script.extra-offset = #'( 0 . -0.4 )
posScriptH = \once \override Script.extra-offset = #'( 0 . 0.1 )
posScriptI = \once \override TextScript.extra-offset = #'( -4.3 . 0.2 )
posScriptJ = \once \override Script.extra-offset = #'( -0.3 . -1.4 )
posScriptK = \once \override Script.extra-offset = #'( -0.4 . -0.4 )
posScriptL = \once \override TextScript.extra-offset = #'( -0.7 . -0.5 )
posScriptM = \once \override DynamicText.extra-offset = #'( 0 . -0.9 )
posScriptN = {
           \once \override DynamicText.extra-offset = #'( -3.3 . -1.3 )
           \once \override DynamicText.padding = 0.0 }
posScriptO = {
           \once \override Script.extra-offset = #'( 0.3 . 0.5 )
           \once \override DynamicText.extra-offset = #'( 0.4 . 0.7 ) }
posScriptP = \once \override TextScript.extra-offset = #'( -1.4 . -1.3 )
posScriptQ = \once \override Script.extra-offset = #'( 0.3 . -1 )
posScriptR = \once \override Script.extra-offset = #'( 0 . 0.3 )
posScriptS = \once \override DynamicText.extra-offset = #'( 0.6 . 1 )
posScriptT = {
          \once \override TextScript.staff-padding = 0.0
          \once \override TextScript.padding = 0.0
          \once \override TextScript.extra-offset = #'(1.1 . -0.4 )
}
posScriptU = \once \override DynamicText.extra-offset = #'(0 . -0.7)
posScriptV = {
          \once \override TextScript.staff-padding = 0.0
          \once \override TextScript.padding = 0.0
          \once \override TextScript.extra-offset = #'(1.6 . -0.5)
}
posScriptW = {
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'(-1.8 . -1.8 )
}
posScriptY = \override Script.extra-offset = #'( 0.3 . 0.7 )
posScriptYrev = \revert Script.extra-offset
posScriptZ = {
          \once \override TextScript.extra-offset = #'( -41 . 0.5 )
          \once \override TextScript.padding = 0.0
}
posScriptAA = \override DynamicText.extra-offset = #'( -0.2 . -0.4 )
posScriptAB = {
          \once \override TextScript.outside-staff-priority = ##f 
          \once \override TextScript.extra-offset = #'( -0.3 . 0 )
}
posScriptAC = \once \override Script.extra-offset = #'( 0 . 0.8 )
posScriptAD = {
          \once \override TextScript.avoid-slur = #'inside
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'(1.8 . -7.0)
}
posScriptAE = \once \override DynamicText.extra-offset = #'(1.6 . -0.8 )
posScriptAF = {
          \once \override TextScript.avoid-slur = #'inside
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'(3.0 . -6.35)
}
posScriptAG = \once \override Script.padding = 1.0
posScriptAH = \once \override TextScript.padding = 2.0
posScriptAI = \once \override TextScript.extra-offset = #'( -0.7 . -0.9 )
posScriptAJ = {
         \once \override Arpeggio.right-padding = -0.2
         \once \override Arpeggio.left-padding = -0.2
         \once \override Staff.AccidentalPlacement.left-padding = #-0.1
}
posScriptAK = \once \override DynamicText.extra-offset = #'( -7.2 . 0 )
posScriptAL = \once \override DynamicText.extra-offset = #'( 0.3 . -0.5 )
posScriptAM = \once \override DynamicText.extra-offset = #'( 1.3 . 0 )
posScriptAN = \once \override Script.extra-offset = #'(0.4 . -0.6)
posScriptAO = \once \override Script.avoid-slur = #'inside
posScriptAP = {
        \override Script.padding = 0.0
        \override Script.extra-offset = #'( 0.3 . 0.3 )
}
posScriptAPrev = {
        \revert Script.padding
        \revert Script.extra-offset
}
posScriptAQ = \once \override TupletNumber.extra-offset = #'( 0 . 0.9)
posScriptAR = \once \override TextScript.extra-offset = #'(0.8 . 10.6)
posScriptAS = \once \override TextScript.extra-offset = #'( 0 . -1.2 )
posScriptAT = \once \override DynamicText.extra-offset = #'( -3 . -0.1 )
posScriptAU = {
           \once \override TextScript.padding = 0.0
           \once \override TextScript.staff-padding = 0.0
           \once \override TextScript.extra-offset = #'( 1.7 . 0.4 ) }
posScriptAV = \once \override TextScript.extra-offset = #'( 8.3 . 5.0 )
posScriptAW = \once \override TextScript.extra-offset = #'( 16.2 . 5.5 )
posScriptAX = \once \override DynamicText.extra-offset = #'( 0 . -2.4 )
posScriptAY = \once \override TextScript.extra-offset = #'( 2.1 . -10 )
posScriptAZ = \once \override TextScript.extra-offset = #'( -1.9 . -1.9 )
posScriptBA = \once \override TextScript.extra-offset = #'( -4 . -0.8 )
posScriptBB = {
          \once \override TextScript.avoid-slur = #'inside
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'( 0 . 1.3 ) }
posScriptBC = \once \override TextScript.extra-offset = #'( -0.2 . -11.6 )
posScriptBD = \once \override TextScript.extra-offset = #'( 1.3 . 0 )
posScriptBE = \once \override TextScript.extra-offset = #'( 0 . -11.2 )
posScriptBF = \once \override Script.extra-offset = #'( 0.1 . -6.4 )
posScriptBG = \once \override Script.extra-offset = #'( 0 . -3.7 )
posScriptBH = \once \override Script.extra-offset = #'( 0 . 0.5 )
posScriptBI = \once \override TextScript.extra-offset = #'( 0 . -5.2 )
posScriptBJ = \once \override TupletNumber.extra-offset = #'( 0 . -5.9 )
posScriptBK = \once \override TextScript.extra-offset = #'( 0.4 . -0.4 )
posScriptBL = \once \override TextScript.extra-offset = #'( 0.2 . 0.2 )
posScriptBM = \once \override Script.extra-offset = #'( 0 . -4.1 )
posScriptBN = \once \override TupletNumber.extra-offset = #'( 0 . 0.7 )
posScriptBO = \once \override TextScript.extra-offset = #'( -2.2 . -10.1 )
posScriptBP = \once \override TextScript.extra-offset = #'( 3.4 . -12.9 )
posScriptBQ = \once \override TextScript.extra-offset = #'( 0 . 10.3 )
posScriptBR = \once \override TupletNumber.extra-offset = #'( 0 . -8.2 )
posScriptBS = \once \override TupletNumber.extra-offset = #'( 0 . 7.2 )
posScriptBT = \once \override TextScript.extra-offset = #'( 0 . -0.5 )
posScriptBU = \once \override Script.extra-offset = #'(-0.3 . -0.7 )
posScriptBV = \once \override TupletNumber.extra-offset = #'(0 . 7 )
posScriptBW = \once \override DynamicText.extra-offset = #'(3.4 . -1.1 )
posScriptBX = \once \override TupletNumber.extra-offset = #'(1.7 . -11.3)
posScriptBY = \once \override TupletNumber.extra-offset = #'(1.7 . 9.6 )
posScriptBZ = {
          \once \override TextScript.avoid-slur = #'inside
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'( 0 . -1.4 ) }
posScriptCA = \once \override TextScript.extra-offset = #'(-4 . 0.2)
posScriptCB = \once \override TextScript.extra-offset = #'(22.2 . -9.4)
posScriptCC = \once \override DynamicText.extra-offset = #'(0.5 . -0.7)
posScriptCD = \once \override Script.extra-offset = #'(0 . 7.6 )
posScriptCE = \once \override TextScript.extra-offset = #'(25.2 . 1.7)
posScriptCF = \once \override Script.extra-offset = #'(0 . 3 )
posScriptCG = \once \override TupletNumber.extra-offset = #'( 0 . -10.3)
posScriptCH = {
        \once \override TextScript.outside-staff-priority = ##f
        \once \override TextScript.extra-offset = #'( 0 . -10.1)
}
posScriptCI = \once \override TextScript.extra-offset = #'( 0 . -1.4)
posScriptCJ = \once \override TextScript.extra-offset = #'( -4.0 . 7.2)
posScriptCK = \once \override TextScript.extra-offset = #'( -1.05 . -7.5)
posScriptCL = \once \override TextScript.extra-offset = #'( -2.4 . 5.25)
posScriptCM = \once \override TextScript.extra-offset = #'( -2.3 . 5.1)
posScriptCN = \once \override TextScript.extra-offset = #'( -1.5 . 4.8)
posScriptCO = \once \override TextScript.extra-offset = #'( -1.0 . 3.3)
posScriptCP = \once \override Script.padding = 1.2
posScriptCQ = \once \override TextScript.extra-offset = #'( -1.0 . -3.3)
posScriptCR = \once \override TextScript.extra-offset = #'( 1.5 . -6.9)
posScriptCS = \once \override TextScript.extra-offset = #'( -10.6 . 3.6)
posScriptCT = {
          \once \override TextScript.avoid-slur = #'inside
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'(2.0 . -6.95)
}
%posScriptBR = \once \override TupletNumber.extra-offset = #'( 0 . -6.2 )
posScriptCU = \temporary \override Script.extra-offset = #'( 0 . -0.3 )
posScriptCV = \once \override TextScript.extra-offset = #'( -1 . 5.4 )
posScrpRevExOff =  \revert Script.extra-offset
posScrpRevPad = \revert Script.padding

posPedalA = \once \override SustainPedal.extra-offset = #'(-2.3 . 0 )
posPedalB = \override SustainPedal.extra-offset = #'(0 . 0.5 )
posPedalC = \override SustainPedal.extra-offset = #'(0 . 0.3 )
posPedalD = \override SustainPedal.extra-offset = #'(1.2 . 0.9 )
posPedalE = \override SustainPedal.extra-offset = #'(1.2 . 1.3 )
posPedalF = \override SustainPedal.extra-offset = #'(0.5 . 0.6 )
posPedalG = \override SustainPedal.extra-offset = #'(1.4 . 0.4 )
posPedalH = \once \override SustainPedal.extra-offset = #'(0.7 . 0)
posPedalI = \once \override Staff.SustainPedal.extra-offset = #'( 0 . -1.5)
posPedalJ = \once \override Staff.SustainPedal.extra-offset = #'( 0.8 . 0.4)
posPedalK = \once \override SustainPedal.extra-offset = #'( 0.3 . 3.2 )
posPedalL = \once \override SustainPedal.extra-offset = #'( -2.6 . -1 )
posPedalM = \once \override Staff.SustainPedal.extra-offset = #'( -0.9 . 0)
posPedalN = \once \override SustainPedal.extra-offset = #'( -1.3 . 0)
posPedalRev = \revert SustainPedal.extra-offset
hideNextPedal = \once \omit Voice.SustainPedal

posDottedA = \once \override Staff.NoteCollision.prefer-dotted-right = ##f

noPadTxtScrp = \once \override TextScript.padding = 0.0
noPadScript = \once \override Script.padding = 0.0
noPadSpanner = \once \override TextSpanner.padding = 0.0
noPadPedal = \once \override Staff.SustainPedal.padding = 0.0
noPadHairp = \once \override Hairpin.padding = 0.0
noPadDynTxt = {
            \once \override DynamicText.padding = 0.0
            \once \override DynamicText.staff-padding = 0.0
}

setOttavaStyle = \set Staff.ottavation = #"8"
posOttavaA = {
       \setOttavaStyle
       \override Staff.OttavaBracket.avoid-slur = #'inside
       \override Staff.OttavaBracket.outside-staff-priority = ##f
}
posOttavaB = {
  \setOttavaStyle
  %Pierre Perol-Schneider's angled ottava contribution
  \once \override Staff.OttavaBracket.stencil = #ly:line-spanner::print
  \once \override Staff.OttavaBracket.bound-details =
    #`((left . ((Y . 0)
                (attach-dir . ,LEFT)
                (padding . 0)
                (stencil-align-dir-y . ,CENTER)))
       (right . ((Y . 3)
                 (padding . 0)
                 (attach-dir . ,RIGHT)
                 (text . ,(make-draw-dashed-line-markup (cons 0 -1.2))))))
  \once \override Staff.OttavaBracket.left-bound-info =
     #ly:line-spanner::calc-left-bound-info-and-text
  \once \override Staff.OttavaBracket.right-bound-info =
     #ly:line-spanner::calc-right-bound-info
}
posOttavaC = { \alterBroken staff-padding #'( 4.5 5.7 ) Staff.OttavaBracket }
posOttavaD = { 
         \setOttavaStyle
         \once \override Staff.OttavaBracket.staff-padding = 5.7
}
posOttavaE = {\alterBroken staff-padding #'( 4.5 3.8 ) Staff.OttavaBracket }

ignoreClashOnce = \once \override NoteColumn.ignore-collision = ##t
ignoreClash = \override NoteColumn.ignore-collision = ##t
ignoreClashRev = \revert NoteColumn.ignore-collision

hideClef = \once \omit Staff.Clef


%---------Pavel's snippet from LSR to change clef at beginning of staff
% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}

%-----Janek's squeeze functions
squeezeNotation = {
  \override Staff.AccidentalPlacement #'right-padding = #-0.05
  \override Staff.Accidental #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:accidental-interface::print grob) 0.92 1))
  \override Staff.NoteHead #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:note-head::print grob) 0.96 1.02))
}
squeezeNotationTwo = {
  \override Staff.AccidentalPlacement #'right-padding = #-0.05
}
squeezeNotationTre = {
  \override Staff.AccidentalPlacement #'right-padding = #-0.15
  \override Staff.AccidentalPlacement #'left-padding = #-0.15
  \override Staff.Accidental #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:accidental-interface::print grob) 0.92 1))
  \override Staff.NoteHead #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:note-head::print grob) 0.96 1.02))
}
unSqueezeNotation = {
  \revert Staff.AccidentalPlacement.right-padding
  \revert Staff.Accidental.stencil
  \revert Staff.NoteHead.stencil
}
shortLedgers = {
  \temporary \override Staff.LedgerLineSpanner.length-fraction = #0.25
  \temporary \override Staff.LedgerLineSpanner.minimum-length-fraction = #0.14
}
setShortLedgers = {
                % When using mid-bar, need to uncomment line below
                %\once\hide Staff.BarLine \bar "|"
                \stopStaff
                \startStaff
                \shortLedgers
                %\bar "|"
}
revShortLedgers = { 
                  % When using mid-bar, need to uncomment line below
                %\once\hide Staff.BarLine \bar "|"
                \stopStaff
                \startStaff
                \undo \shortLedgers
                %\bar "|"
}
  

chordMarkupA = \markup {
  \score {
     \new Staff \with {
         \remove "Staff_symbol_engraver"
         \remove "Clef_engraver"
         \remove "Key_engraver"
         \remove "Time_signature_engraver"
     }
     {
        \override Staff.AccidentalPlacement #'right-padding = #-0.05
        \override Staff.Accidental #'stencil =
            #(lambda (grob)
            (ly:stencil-scale (ly:accidental-interface::print grob) 0.92 1))
        \override Staff.NoteHead #'stencil =
            #(lambda (grob)
            (ly:stencil-scale (ly:note-head::print grob) 0.96 1.02))
        \key g \minor <dis''b'!a'>4
     }
     \layout { }
  }
}