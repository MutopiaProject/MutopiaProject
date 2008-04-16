% homemade functions for the Max Reger
% violin sonatas:

% Function Definitions:

% To make a 'homemade' grace note:
cbSmaller = {
  \set fontSize = #-3
  \override Stem #'length-fraction = #0.7
  \override Stem #'stroke-style = #"grace"
  \override Beam #'thickness = #0.25
  \override Beam #'length-fraction = #0.6
}

% To return to normal notes:
cbNormal = {
  \set fontSize = #1
  \revert Stem #'length-fraction
  \revert Stem #'stroke-style
  \revert Beam #'thickness
  \revert Beam #'length-fraction
}

beamEight = {
  \set Score.beatLength = #(ly:make-moment 1 8)
}

beamFour = {
  \set Score.beatLength = #(ly:make-moment 1 4)
}

cbDivide = {
  \set subdivideBeams = ##t
}
 
cbNoDivide = {
  \set subdivideBeams = ##f
}

% Make a unique dynamic mark, the ffz:
ffz = #(make-dynamic-script "ffz")

% Add markup above the note and move it from the default placement:
cbMarkUp = 
#(define-music-function (parser location music text vert horiz) (ly:music? string? number? number?)
#{
  \once \override TextScript #'extra-offset = #($vert . $horiz)
  $music \markup { $text }
#})
