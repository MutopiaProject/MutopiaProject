\version "2.6.0"

parameters = {
	\override Score.MetronomeMark   #'transparent = ##t
	\override Score.TupletBracket   #'bracket-visibility = ##f
	\override Score.Hairpin  		#'padding = #5
	\override Score.DynamicText  	#'padding = #5
	\override Score.RehearsalMark  	#'padding = #3.5
	\override Score.RehearsalMark	#'self-alignment-X = #LEFT
	\override Score.TextScript  	#'padding = #2
	\override Score.TrillSpanner  	#'padding = #2.5
	\override Score.BarNumber		#'padding = #2.5
	\override Score.BarNumber		#'font-size = #0.8
}

mIspacing =  {
	s4 s1*7 \break
	s1*9 \break
	s1*8 \break
	s1*9 \break
	s1*8 \break
	s1*7 \break
	s1*6 \break
	s1*5 \break
	s1*6 \break
	s1*9 \break
	s1*8 \break
	s1*8 \break % 83
	s1*6 \break % 91
	s1*6 \break % 97
	s1*6 \break % 103
	s1*6 \break % 109
	s1*7 \break % 115
}

mIbarlines =  {
	\mark \markup { \bigger\bigger \column {
		\line {\bold {No. 1}}
		\line {Adagio, ma non troppo e molto espressivo.}
	}}
	
	s4 s1*44
	
	\bar "||" % g flat major
	
	s1*9
	
	\bar "||" % b major
	
	s1*6
	
	\bar "||" % a major
	
	s1*23
	
	\bar "||" % c sharp minor
	\key csharp \minor
	
	s1*39
	
	\bar "||" % NO. 2, d major
	\key d \major
	\time 6/8

}