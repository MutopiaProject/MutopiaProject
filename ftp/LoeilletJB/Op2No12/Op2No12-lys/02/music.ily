global = {
	\key g \major
	\time 4/4
}

flute= \include "flute.ily"
violin= \include "violin.ily"
guitarLower= \include "guitarLower.ily"
guitarUpper= \include "guitarUpper.ily"
guitar = \simultaneous {
	\context Voice="guitarUpper" \guitarUpper
	\context Voice="guitarLower" \guitarLower
}
