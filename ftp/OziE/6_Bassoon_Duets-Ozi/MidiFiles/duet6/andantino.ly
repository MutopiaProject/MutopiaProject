\version "2.24.3"

instrument = \markup "1."
\include "../../duet6UrtextDefinitions.ily"
\include "../../duet6/andantinoUrtext/player1.ily"
playerOne=\part
\include "../../duet6/andantinoUrtext/player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup "Andantino"
\include "../../midiScore.ily"
\midiScore

