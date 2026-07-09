\version "2.24.3"

instrument = \markup "1."
\include "../../duet2UrtextDefinitions.ily"
\include "../../duet2/sicilianoUrtext//player1.ily"
playerOne=\part
\include "../../duet2/sicilianoUrtext//player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup "Sicilicano"
\include "../../midiScore.ily"
\midiScore

