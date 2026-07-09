\include "urtext-definitions.ily"

fullScore=##t
instrument = \markup ""
\include "first-movement/player1/urtext.ily"
firstMovementPlayerOne=\part

fullScore=##f
\include "first-movement/player2/urtext.ily"
firstMovementPlayerTwo=\part

fullScore=##t
\include "second-movement/player1/urtext.ily"
secondMovementPlayerOne=\part

fullScore=##f
\include "second-movement/player2/urtext.ily"
secondMovementPlayerTwo=\part

duetFive =
\include "../score-bookpart-definition.ily"