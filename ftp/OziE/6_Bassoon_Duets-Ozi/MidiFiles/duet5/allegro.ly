\version "2.24.3"

instrument = \markup "1."
\include "../../duet5UrtextDefinitions.ily"
\include "../../duet5/allegroUrtext/player1.ily"
playerOne=\part
\include "../../duet5/allegroUrtext/player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup {}
\include "../../midiScore.ily"
\midiScore

