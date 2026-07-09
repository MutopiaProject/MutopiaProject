\version "2.24.3"

instrument = \markup "1."
\include "../../duet3UrtextDefinitions.ily"
\include "../../duet3/allegroUrtext/player1.ily"
playerOne=\part
\include "../../duet3/allegroUrtext/player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup "Allegro"
\include "../../midiScore.ily"
\midiScore

