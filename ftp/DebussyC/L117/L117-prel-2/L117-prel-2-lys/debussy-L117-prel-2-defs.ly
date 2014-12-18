\version "2.18.2"

%--------Definitions for Debussy Prelude 2
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

subGroupEighth = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2)
}
subGroupThirtySecond = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/32)
  \set beatStructure = #'(8 8)
}
subGroupOff = {
  \set subdivideBeams = ##f
  %\set baseMoment = #(ly:make-moment 1/4)
  %\set beatStructure = #'(1 1)
}

graceOn = {
  \teeny
  \override Stem.no-stem-extend = ##t
  \override Stem.length-fraction = #0.7
}
graceOff = {
  \normalsize
  \revert Stem.no-stem-extend
  \revert Stem.length-fraction
}

tupletBracketOff = \override TupletBracket.bracket-visibility = ##f

%---Dynamics definitions
tresDoux = \markup { \italic "très doux" }
pTresDouxMarkup = \markup { \dynamic p \normal-text { \tresDoux } }
pTresDoux = #(make-dynamic-script #{ \pTresDouxMarkup #} )
piuPMarkup = \markup { \dynamic \normal-text { \italic "più " } p }
piuP = #(make-dynamic-script #{ \piuPMarkup #} )
piuPPMarkup = \markup { \dynamic \normal-text { \italic "più " } pp }
piuPP = #(make-dynamic-script #{ \piuPPMarkup #} )
cres = \markup { \italic "cresc." }
molto = \markup { \italic "molto" }
rapide = \markup { \italic "(rapide)" }

#(define (myDynamics dynamic)
   (cond
     ;; each (<test> <expression> …) sequence must be wrapped
     ;; into brackets
     ((equal? dynamic pTresDouxMarkup)
      0.55)
     ((equal? dynamic piuPMarkup)
      0.52)
     ;; and so forth: insert as many as you like
     (else
      (default-dynamic-absolute-volume dynamic))))

hidePP = \tweak #'stencil ##f \pp
touPP = \markup { \dynamic { \normal-text { \italic "toujours " } pp } }
ppExpr = \markup { \dynamic pp \normal-text { \italic expressif } }
ppTresSouple = \markup { \dynamic pp \normal-text { \italic "très souple" } }
%-- End Dynamics

%-- Custom Spanners
#(define (text-spanner-start-stop mus)
    (let ((elts (ly:music-property mus 'elements)))
    (make-music 'SequentialMusic 'elements 
       (append  
          (list (make-music 'TextSpanEvent 'span-direction -1))
          (reverse (cdr (reverse elts)))
          (list (make-music 'TextSpanEvent 'span-direction 1))
          (list (last elts))))))

stringSpanner =
#(define-music-function (parser location left music)(string? ly:music?)
  #{
     \override TextSpanner.bound-details.left.text = $left
     \override TextSpanner.bound-details.right.text = 
         \markup { \musicglyph #"scripts.caesura.straight" }
     $(text-spanner-start-stop music)
  #})
%-- End Spanners

caesura = {
  \mark
  \markup { \musicglyph #"scripts.caesura.straight" }
}

shapeSlurOne = \shape #'((2 . 0) (2 . 1) (3 . 0.5) (4 . 6)) Slur
shapeSlurTwo = \shape #'((-12 . 2) (-10 . -3) (0 . 2) (0 . 0)) Slur
shapeSlurThree = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -5)) Slur

flagHide = \once \override Voice.Flag.transparent = ##t

cueBassClefLow = { 
  \once \override Staff.CueClef.Y-offset = #-4 
  \cueClef bass 
}

cueClefUnbrokenVisibility = {
  %% Truth vector = end-of-line unbroken begin-of-line
  \override Staff.CueClef.break-visibility = ##( #f #f #f )
}

ottavaEight = { \ottava #1 \set Staff.ottavation = #"8" }

legendOne = \markup { \center-align \smaller "doux et soutenu" }
legendTwo = \markup { \center-align \italic \smaller "doux mais en dehors" }
legendThree = \markup { \italic "doucement en dehors" }
dansUnRythme = "(Dans un rythme sans rigueur et caressant)" 
tresApaise = \markup { \bold "Très apaisé et très atténué jusqu’à la fin" }

configLVTiesOne = \override 
  LaissezVibrerTieColumn.tie-configuration
     = #`((-6 . ,DOWN)
          (-4 . ,DOWN)
          (-2 . ,UP)
          (0 . ,UP)) 
     
configLVTiesTwo = \override 
  LaissezVibrerTieColumn.tie-configuration
     = #`((1 . ,DOWN)
          (5 . ,UP)
          (7 . ,UP))  
     
configLVTiesThree = \override 
  LaissezVibrerTieColumn.tie-configuration
     = #`((6 . ,DOWN)
          (8 . ,UP)
          (13 . ,UP))      

breathFermata = \override BreathingSign.text = \markup {
  \override #'(direction . 1)
  \override #'(baseline-skip . 1.8)
  \dir-column {
    \translate #'(0.155 . 0)
    \center-align \musicglyph #"scripts.rcomma"
    \center-align \musicglyph #"scripts.ufermata"
  }
}

global = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}
