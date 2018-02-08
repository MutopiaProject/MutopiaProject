\version "2.18.2"

global_a = {
  \key b \major
  \time 6/8
  \partial 8
  \tempo "Presto"
}

global_b = {
  \key b \major
  \time 3/4
}

global_c = {
  \key es \major
  \time 4/4
  \tempo "Adagio"
}

global_d = {
  \key b \major
  \time 3/4
  \partial 4
}

global_e = {
  \key b \major
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
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \override Score.RehearsalMark #'direction = #DOWN
  \override Score.RehearsalMark #'extra-offset = #'( 0 . -0.8 )
  \mark \markup { "M. D. C." }
}

fine = {
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \override Score.RehearsalMark #'direction = #DOWN
  \override Score.RehearsalMark #'extra-offset = #'( 0 . -0.8 )
  \mark \markup { "FINE" }
}

tempoTrio = \tempo \markup { \abs-fontsize #14 \bold "Trio" }

tr = ^\markup { \hspace #0.6 \tiny \musicglyph #"scripts.trill" }

pocoF = _\markup { \italic poco \dynamic f }

rt = #(define-music-function
       (parser location zahl note)
       (number? ly:music?)
       #{
         \repeat tremolo #zahl { #note }
       #})

