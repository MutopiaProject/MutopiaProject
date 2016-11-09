schleifer =
#(define-music-function (parser location note offset) (ly:music? number?)
 #{ \once \override Voice.Accidental #'stencil =
      #ly:text-interface::print
    \once \override Staff.AccidentalPlacement #'right-padding = #1.4
    \once \override Voice.Accidental #'text =
      \markup {
        \halign #-1
        \translate #(cons 0 offset)
        \musicglyph #"scripts.prall"
        \postscript #"-0.75 -1.2 moveto
                      0 0 0.25 0.35 0.4 0.7 0.55 1.1 rcurveto
                      0 0 0.1 0.35 0.5 0.8 1 0.3 rcurveto
                      0.2 setlinewidth stroke"
      }
    $note #})

incipitNote =
#(define-music-function
     (parser location clefkey note)
     (ly:music? ly:music?)
   #{
     \incipit { \once \override Staff.Clef.font-size = #-2
                #clefkey
                \once \override Staff.TimeSignature #'stencil = ##f
                \override NoteHead.style = #'default
                \once \override Stem.thickness = #2.0
                \once \override Stem.X-offset = #-1
                \once \override NoteHead.X-offset = #-1
                \override Flag.style = #'()
                #note
              }
   #}
)

#(define (brackets->bows grob)
  (let* ((brackets-stil (ly:enclosing-bracket::print grob))
         (edge-height (ly:grob-property grob 'edge-height))
         (y-ext (ly:stencil-extent brackets-stil Y))
         (x-ext (ly:stencil-extent brackets-stil X))
         (up-left (cons (+ (car x-ext) (car edge-height)) (cdr y-ext)))
         (down-left (cons (+ (car x-ext) (car edge-height)) (car y-ext)))
         (up-right (cons (- (cdr x-ext) (cdr edge-height)) (cdr y-ext)))
         (down-right (cons (- (cdr x-ext) (cdr edge-height)) (car y-ext))))
    (ly:stencil-add
      (make-bow-stencil
        down-left
        up-left
        0.1 ;; thick
        0.2   ;; angularity
        0.3 ;; height
        1)
      (make-bow-stencil
        down-right
        up-right
        0.1
        0.2
        0.3
        -1))))

modTie =
#(define-music-function
     (parser location note)
     (ly:music?)
   #{
     \shape #'((0 . 0) (-0.25 . 0) (-0.50 . 0) (-0.75 . 0)) Tie #note
   #}
)

modTieTwo =
#(define-music-function
     (parser location note)
     (ly:music?)
   #{
     \shape #'((-0.6 . -0.3) (-0.4 . -0.5) (-0.2 . -0.5) (0 . -0.3)) Tie #note
   #}
)

modStem =
#(define-music-function
     (parser location ystem)
     (number?)
   #{
     \once \override Stem.Y-offset = #ystem
   #}
)

modStemShift =
#(define-music-function
     (parser location ystem)
     (number?)
   #{
     \once \override Stem.Y-offset = #ystem
     \once \override NoteColumn.force-hshift = #-0.5
   #}
)

modBeam =
#(define-music-function
     (parser location yone ytwo)
     (number? number?)
   #{
     \once \override Beam.positions = #(cons yone ytwo)
     \once \override TupletNumber.Y-offset = #(+ 1.25 (/ (+ yone ytwo) 2))
   #}
)

singleStaff =
#(define-music-function
     (parser location instNameMarkup notes)
     (markup? ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #instNameMarkup
      } {
        \new Voice { #notes }
      }
   #}
)

#(define (ii-bar-number BarNumber)
  "Append II to the bar number."
  (let* (
        ; Set barNumber to the current value
      (barNumber (ly:grob-property BarNumber 'text))
      ; Append "II" to it
      (iiBarNumber (markup barNumber (#:super "II"))))
    ; Store the new value back
    (ly:grob-set-property! BarNumber 'text iiBarNumber))
  ; and print it
  (ly:text-interface::print BarNumber))

pianoDynamicText = \markup { \italic \center-align "piano" }
forteDynamicText = \markup { \italic \center-align "forte" }

