\version "2.6.2"

mVIspacing =  {
	s2.*11		\break
	s2.*10		\break
	s2.*7		\break
}

mVIbarlines =  {
	\key gsharp \minor
	\time 3/4
	
	\mark \markup { \bigger\bigger\column {
		\line { \bold {No. 6}}
		\line {Adagio quasi un poco andante.}}}
		
	s2.*28
	
	\bar "||"
	\key csharp \minor
	\time 2/2
}