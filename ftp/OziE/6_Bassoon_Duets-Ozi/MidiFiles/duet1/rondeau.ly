\version "2.24.3"

instrument = \markup "1."
\include "../../duet1UrtextDefinitions.ily"
\include "../../duet1/rondeauUrtext/player1.ily"
playerOne=\part
\include "../../duet1/rondeauUrtext/player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup { "Rondeau" }
\include "../../midiScore.ily"
\midiScore

