\version "2.24.3"

instrument = \markup "1."
\include "../../duet4UrtextDefinitions.ily"
\include "../../duet4/allegroModeratoUrtext/player1.ily"
playerOne=\part
\include "../../duet4/allegroModeratoUrtext/player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup "Allegro Moderato"
\include "../../midiScore.ily"
\midiScore

