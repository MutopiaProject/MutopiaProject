\version "2.12.0"

%#(set-default-paper-size "letter")
#(set-global-staff-size 18)
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "prall" 'avoid-slur 'outside)

global = {
   \key c \minor
   \time 3/4
   \set tupletSpannerDuration = #(ly:make-moment 1 8)
   \override TupletBracket  #'bracket-visibility = #'if-no-beam
}

adjustSlash = { \once \override TextScript #'extra-offset = #'( -2 . 5 ) }
halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
hideBrackets = { \override TupletBracket #'bracket-visibility = ##f }
% hideTripletNumber = { \set tupletNumberFormatFunction = #'() }
mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }
mmrestuppp = { \once \override MultiMeasureRest #'staff-position = #8 }
mmrestupppp = { \once \override MultiMeasureRest #'staff-position = #10 }
noflag = { \once \override Stem #'flag-style = #'no-flag }
restdownnn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
restright = { \once \override Rest #'extra-offset = #'( 4.0 . 0.0 ) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script #'extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script #'extra-offset = #'(0 . -3.3) }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
% showTripletNumber = { \set tupletNumberFormatFunction = #denominator-tuplet-formatter }

triolen = {
   #(override-auto-beam-setting '(end * * * *) 1 8)
   #(override-auto-beam-setting '(end * * * *) 2 8)
   #(override-auto-beam-setting '(end * * * *) 3 8)
   #(override-auto-beam-setting '(end * * * *) 4 8)
   #(override-auto-beam-setting '(end * * * *) 5 8)
   #(override-auto-beam-setting '(end * * * *) 6 8)
   #(override-auto-beam-setting '(end * * * *) 7 8)
   #(override-auto-beam-setting '(end * * * *) 8 8)
}

duolen = {
   #(revert-auto-beam-setting '(end * * * *) 1 8)
   #(revert-auto-beam-setting '(end * * * *) 2 8)
   #(revert-auto-beam-setting '(end * * * *) 3 8)
   #(revert-auto-beam-setting '(end * * * *) 4 8)
   #(revert-auto-beam-setting '(end * * * *) 5 8)
   #(revert-auto-beam-setting '(end * * * *) 6 8)
   #(revert-auto-beam-setting '(end * * * *) 7 8)
   #(revert-auto-beam-setting '(end * * * *) 8 8)
}

% The following function (copied straight from the Lilypond
% documentation) will draw a pair of eyglasses!
% Use by attaching the lilypond function at the end
% to notes, like this: c^\eyeglasses

eyeglassesps = #"
  0.15 setlinewidth
  -0.9 0 translate
  1.1 1.1 scale
  1.2 0.7 moveto
  0.7 0.7 0.5 0 361 arc
  stroke
  2.20 0.70 0.50 0 361 arc
  stroke
  1.45 0.85 0.30 0 180 arc
  stroke
  0.20 0.70 moveto
  0.80 2.00 lineto
  0.92 2.26 1.30 2.40 1.15 1.70 curveto
  stroke
  2.70 0.70 moveto
  3.30 2.00 lineto
  3.42 2.26 3.80 2.40 3.65 1.70 curveto
  stroke"

eyeglasses = \markup {
  \with-dimensions #'(0 . 4.4) #'(0 . 2.5)
  \postscript #eyeglassesps
}

