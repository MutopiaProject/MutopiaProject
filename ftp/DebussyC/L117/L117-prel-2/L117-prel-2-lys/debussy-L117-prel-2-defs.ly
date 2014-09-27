\version "2.18.2"

%--------Definitions for Debussy Prelude 2
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

%---Dynamics definitions
tresDoux = \markup { \italic "très doux" }
pTresDouxMarkup = \markup { \dynamic p \normal-text { \tresDoux } }
pTresDoux = #(make-dynamic-script #{ \pTresDouxMarkup #} )
piuPMarkup = \markup { \dynamic \normal-text { \italic "più " } p }
piuP = #(make-dynamic-script #{ \piuPMarkup #} )

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

%hideP = \tweak #'stencil ##f \p
touPP = \markup { \dynamic { \normal-text { \italic "toujours " } pp } }
ppExpr = \markup { \dynamic pp \normal-text { \italic expressif } }
%-- End Dynamics

breatheFermata = {
  \once \override BreathingSign.text = \markup {
  \combine
  \musicglyph #"scripts.rcomma"
  \raise #1
  \musicglyph #"scripts.ufermata"
  }
  \breathe
}

shapeSlurOne = \shape #'((2 . 0) (2 . 1) (3 . 0.5) (4 . 6)) Slur

legendOne = \markup { \center-align \smaller "doux et soutenu" }
legendTwo = \markup { \center-align \italic \smaller "doux mais en dehors" }
dansUnRythme = "(Dans un rythme sans rigueur et caressant)" 

configLVTies = \override 
  LaissezVibrerTieColumn.tie-configuration
     = #`((-6 . ,DOWN)
          (-4 . ,DOWN)
          (-2 . ,UP)
          (0 . ,UP)) 

global = {
  \key c \major
  \time 2/4
  \numericTimeSignature
}
