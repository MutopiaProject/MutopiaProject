\version "2.18.2"

global_a = {
  \key d \major
  \time 3/4
  \tempo "Adagio"
  \compressFullBarRests
  \override Beam.auto-knee-gap = #4.5
  \override DynamicTextSpanner.style = #'none
}

global_b = {
  \key d \major
  \time 3/4
  \compressFullBarRests
  \override DynamicTextSpanner.style = #'none
}

global_c = {
  \key d \major
  \time 2/4
  \partial 8
  \tempo "Presto"
  \compressFullBarRests
  \set Timing.baseMoment = #(ly:make-moment 1/2)
  \set Timing.beamExceptions =
  #'(                        ;start of alist
      (end .                 ;entry for end of beams
        (                    ;start of alist of end points
          ((1 . 16) . (4))   ;rule for 1/32 beams -- end each 1/16
          )))
  \override DynamicTextSpanner.style = #'none
}

global_d = {
  \key d \major
  \time 3/4
  \override DynamicTextSpanner.style = #'none
}

global_e = {
  \key d \major
  \time 3/8
  \tempo "Presto"
  \override Beam.auto-knee-gap = #4.5
  \override DynamicTextSpanner.style = #'none
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

dcaf = {
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'extra-offset = #'( 0 . -1 )
  \mark \markup { \italic "Da capo al fine" }
}

tempoTrio = \tempo \markup { \abs-fontsize #14 \bold "Trio" }

tr = ^\markup { \hspace #0.6 \tiny \musicglyph #"scripts.trill" }

pocoF = _\markup { \italic poco \dynamic f }
pf = _\markup { \dynamic p \hspace #-0.5 \dynamic f }

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
