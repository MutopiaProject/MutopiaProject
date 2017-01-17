\include "header.ily"
\include "makros.ily"
\include "paper.ily"
\include "layout.ily"
\include "pianostaff.ily"

global = {
	\piano_global
	\tempo "Quasi Prestissimo"
	\partial 16
	\time 2/4
	\key c \minor
}

\score {
	\new PianoStaff <<
		\new Staff = "up" <<\global \rh>>
		\new Dynamics \dynamic
		\new Staff = "down" <<\global \lh>>
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.shortest-duration-space = #2.2
			\override SpacingSpanner.spacing-increment = #1.1
		}
	}
	\midi { \tempo 4 = 180 }
}
