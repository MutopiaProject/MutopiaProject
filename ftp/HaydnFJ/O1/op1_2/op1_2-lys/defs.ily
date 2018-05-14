\version "2.18.2"

global_a = {
  \key es \major
  \time 3/8
  \tempo "Allegro molto"
  \override Beam.auto-knee-gap = #4.5
}

global_b = {
  \key es \major
  \time 3/4
}

global_c = {
  \key b \major
  \time 4/4
  \tempo "Adagio"
}

global_d = {
  \key es \major
  \time 3/4
}

global_e = {
  \key es \major
  \time 2/4
  \tempo "Presto"
  \set Timing.baseMoment = #(ly:make-moment 1/2)
  \set Timing.beamExceptions =
  #'(                        ;start of alist
      (end .                 ;entry for end of beams
        (                    ;start of alist of end points
          ((1 . 16) . (4))   ;rule for 1/32 beams -- end each 1/16
          )))
  \partial 8
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
