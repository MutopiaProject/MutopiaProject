%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.17"

%--------Definitions for Debussy Prelude 4

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

fakeThreeFour = {
  \override Score.TimeSignature #'stencil = #ly:text-interface::print
  \override Score.TimeSignature #'text = \markup {
    \override #'(baseline-skip . 0) \column { \number 3 \number 4 }
  }
}

parenFiveFour = \markup {
  \concat \normal-text { 
    \fontsize #5 \lower #1.25 "("
    \override #'(baseline-skip . 0) \column { \number 5 \number 4 }
    \fontsize #5 \lower #1.25 ")"
  }
}

hideTimeSignature = \once \override Staff.TimeSignature.stencil = ##f
stemRight = \once \override Stem.X-offset = #1.251
tupletBracketOff = \override TupletBracket.bracket-visibility = ##f

md = \markup { \italic "m.d." }
dimin = \markup { \italic "dim." }
animant = \markup { \bold "En animant un peu" }
egal = \markup { \italic "égal et doux" }
enDehors = \markup { \italic "en dehors" }
laBasse = \markup { \italic "la basse un peu appuyée et soutenu" }
leger = \markup { \italic "léger" }
comme = \markup { \tiny "Comme une lointaine sonnerie de Cors" }
encore = \markup { \tiny "Encore plus lointain et plus retenu" }

octaveUp = {
  \ottava #1
  \set Staff.ottavation = #"8"
}
octaveNeutral = \ottava #0

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

%-- Shape function for Laissez Vibrer ties on chords
%-- Usage: \shapeLVTieColumn #'( (shape-offsets) [(shape-offsets) ...] )
%--        shape-offsets = (left-end-point) 
%--                        (first-curve-point)
%--                        (second-curve-point)
%--                        (right-end-point) 
%--        left-end-point = x-offset . y-offset
%--        others...      = the same
shapeLVTieColumn =
#(define-music-function (parser location all-offsets) (list?)
   #{
     \override LaissezVibrerTieColumn.before-line-breaking =
     #(lambda (grob)
        (let ((ties (ly:grob-array->list (ly:grob-object grob 'ties))))
          (for-each
           (lambda (tie offsets)
             (set! (ly:grob-property tie 'control-points)
                   (map
                    (lambda (x y) (coord-translate x y))
                    (ly:tie::calc-control-points tie)
                    offsets))) 
           ties all-offsets)))
   #})

shapeLVTieOne = \shapeLVTieColumn #' (
                       ((1 . 0) (2 . 0) (3 . 0) (4 . 0))
                       ((1 . 0) (2 . 0) (3 . 0) (4 . 0))
                       )

shapeSlurOne = \shape #'((0 . 0) (3 . 0) (5 . 0) (8 . 3.75)) Slur
shapeTieOne = \shape #'((0 . 0) (-0.25 . 0) (-0.75 . 0) (-1 . 0)) Tie
shapeSlurTwo = \shape #'(
                          ((0 . 0) (0 . 0.33) (0 . 0.67) (0 . 1))
                          ((0 . 2) (0 . 1) (0 . 0.5) (0 . 0)) 
                        ) Slur
shapeSlurThree = \shape #'(
                            ((0 . 0) (0.67 . 1.33) (1.33 . 2.67) (2 . 4))
                            ((0.5 . 2) (0.25 . 1) (0 . 0.5) (0 . 0)) 
                          ) Slur

subgroupByEights = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2)
}

global = {
  \key a \major
  \accidentalStyle piano
  \mergeDifferentlyDottedOn
}
