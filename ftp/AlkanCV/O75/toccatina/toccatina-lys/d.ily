d_a = {
	\once\override TextScript.extra-offset = #'(-2.5 . 0)
	s16-\markup \pad-around #0.5 {\column{\line {\concat{Toujours \dynamic " p" \italic ", sans"}}
						\line{"nuances aucunes"}}}
	s2*5

	s2*3 \bar "||"
	s2*3

	s2*5

	s2*2 \bar "|."
	s2*3

	s2*5 \bar "||"
}

d_b = {
	s2*6

	s2*6 \bar "||"

	s2*4 \bar "||"
	s2*2

	s2*2 \bar "|."
	s2*4

	s2*4 \bar "||"
	s2*2
}

d_c = {
	s2*5

	s2 \break \bar ".|:-.."
	s2*4

	s2*4 \bar ":|.-.|"

	s2*7
}

d_d = {
	s2*4 \bar "||"
	s2

	s2*5

	s2*5

	s2*5 \bar ".."
}

d_e = {
	s2*5

	s2*2
	s4. s16 \bar "|." s16-\markup \column{\concat{\dynamic f \italic ", subito,"} {"e sempre"}}
	s2*2

	s2*5

	s2*4
	s2
}

d_f = {
	s2*5

	s2*3
	s4 s_\sf
	s_\sf s8.
	s16-\tweak self-alignment-X #0.5
	#(make-dynamic-script #{\markup \pad-around #0.5 {\concat{\normal-text\italic "Sempre " \dynamic pp}}#})
	\bar "||"

	s2
	s
	s-\tweak self-alignment-X #CENTER
	#(make-dynamic-script #{\markup {\normal-text\italic Sempre \dynamic pp}#})
	s

	s2*2
	s4. s16 s-\markup {\dynamic ff \italic subito}
	s2*2 \bar ".."
}
