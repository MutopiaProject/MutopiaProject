\version "2.24.3"

instrument = \markup "1."
\include "../../duet4UrtextDefinitions.ily"
\include "../../duet4/menuetUrtext/player1.ily"
playerOne=\part
\include "../../duet4/menuetUrtext/player2.ily"
playerTwo=\part
subTitleMarkup= \markup \center-column { \line { \vspace #1 I } \line { DUO } }
movementPiece= \markup "Menuet"
\include "../../midiScore.ily"
\midiScore

