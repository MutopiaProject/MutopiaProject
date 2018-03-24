\version "2.18.2"
\language "deutsch"

global_a = {
  \key g \major
  \time 3/8
  \tempo "Presto"
  \compressFullBarRests
  \override Beam.auto-knee-gap = #4.0
  \override DynamicTextSpanner.style = #'none
}

global_b = {
  \key g \major
  \time 3/4
  \compressFullBarRests
  \override DynamicTextSpanner.style = #'none
}

global_c = {
  \key c \major
  \time 4/4
  \partial 8
  \tempo "Adagio"
  \compressFullBarRests
  \override DynamicTextSpanner.style = #'none
}

global_d = {
  \key g \major
  \time 3/4
}

global_e = {
  \key g \major
  \time 2/4
  \tempo "Presto"
  \set Timing.baseMoment = #(ly:make-moment 1/2)
  \set Timing.beamExceptions =
  #'(                        ;start of alist
      (end .                 ;entry for end of beams
        (                    ;start of alist of end points
          ((1 . 16) . (4))   ;rule for 1/32 beams -- end each 1/16
          )))
}

mdc = {
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'extra-offset = #'( 0 . -1 )
  \mark \markup { \italic "Menuetto da capo" }
}

fine = {
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'extra-offset = #'( 0 . -1 )
  \mark \markup { \italic "Fine" }
}

dc = {
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'extra-offset = #'( 0 . -1 )
  \mark \markup { \italic "Da capo" }
}

dcaf = {
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'extra-offset = #'( 0 . -1 )
  \mark \markup { \italic "Da capo al fine" }
}

pf = _\markup { \dynamic p \hspace #-0.5 \dynamic f }
pocoF = _\markup { \italic poco \dynamic f }
tempoTrio = \tempo \markup { \abs-fontsize #14 \bold "Trio" }
tr = ^\markup { \hspace #0.6 \tiny \musicglyph #"scripts.trill" }

rt = #(define-music-function
       (parser location zahl note)
       (number? ly:music?)
       #{
         \repeat tremolo #zahl { #note }
       #})

acc = #(define-music-function
        (parser location note)
        (ly:music?)
        #{ { \acciaccatura  #note } #})

app = #(define-music-function
        (parser location note)
        (ly:music?)
        #{ { \appoggiatura #note } #})

dto = #(define-music-function
        (parser location offsets)
        (pair?)
        #{
          \once \override DynamicText.extra-offset = #offsets
        #})

so = #(define-music-function
       (parser location offsets)
       (pair?)
       #{
         \once \override Slur.extra-offset = #offsets
       #})

pso = #(define-music-function
        (parser location offsets)
        (pair?)
        #{
          \once \override PhrasingSlur.extra-offset = #offsets
        #})

