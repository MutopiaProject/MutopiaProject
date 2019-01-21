global = {
	\key c \major
	\time 2/4
}

flute= \include "flute.ily"
violin= \include "violin.ily"
guitarLower= \include "guitarLower.ily"
guitarUpper= \include "guitarUpper.ily"
guitar = \simultaneous {
	\context Voice="guitarUpper" \guitarUpper
	\context Voice="guitarLower" \guitarLower
}
