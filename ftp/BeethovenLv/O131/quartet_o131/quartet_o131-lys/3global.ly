\version "2.6.0"

mIIIspacing =  {
	s1*4	\break
	s1*4	\break
	s1*3	\break
}

mIIIbarlines =  {
	\key a \major
	\time 4/4
	
	\mark \markup { \bigger\bigger\column {
		\line {\bold {No. 3}}
		\line {Allegro moderato.}
	}}
	
	s1*5
	s2 s8
	
	\mark \markup { \bigger\bigger {Adagio.}}
	\tempo 4 = 35
	s4.
	s1*5
	
	\bar "||"
	\time 2/4
}