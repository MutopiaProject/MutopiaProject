\version "2.16.0"
% Various stuff common to the score and the different solo parts,
% put in one place to ensure consistency.

pieceB = "Allegro"
pieceC = "Adagio"
pieceD = "Allegro Assai"
violinMidiInstrument = "violin"
violaMidiInstrument = "viola"
continuoMidiInstrument = "cello"
accompMidiInstrument = "harpsichord"
timeB = {
  \time 2/2
  \set Timing.beamExceptions = #'(
    (end . (
    ((1 . 16) . (4 4 4 4))
    )))
}
timeC = {
  \time 3/4
  \set Timing.beamExceptions = #'(
    (end . (
    ((1 . 8) . (2 2 2))
    )))
}
timeD = \time 3/8

\layout {
    \context { \Score skipBars = ##t }
}
