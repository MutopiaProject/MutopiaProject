{
  \accidentalStyle modern
  \key c \minor
  \time 3/4
    \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \repeat volta 2 {
    s2.*8
  }
  \repeat volta 2 {
    s2.*16
  }
}