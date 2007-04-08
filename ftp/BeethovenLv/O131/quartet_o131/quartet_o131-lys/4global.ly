\version "2.6.0"

mIVspacing =  {
	s2*9		\break	% START @ 1
	s2*9		\break	% 10
	s2*8		\break	% 19
	s2*9		\break	% 27
	s2*7		\break	% 36
	s2*6		\break	% 43
	s2*4		\break	% 49
	s2*4		\break	% 53
	s2*4		\break	% 57
	s2*4		\break	% 61
	s1*5		\break	% 65
	s1*5		\break	% 70
	s1*5		\break	% 75
	s1*5		\break	% 80
	s1*5		\break	% 85
	s1*5		\break	% 90
	s1*5		\break	% 95
	s1*5		\break	% 100
	s1*5		\break	% 105
	s1*5		\break	% 110
	s1*5		\break	% 115
	s1*5		\break	% 120
	s1*5		\break	% 125
	s2.*4		\break	% 130
	s2.*5		\break	% 134
	s2.*4		\break	% 139
	s2.*4		\break	% 143
	s2.*4		\break	% 147
	s2.*4		\break	% 151
	s2.*4		\break	% 155
	s2.*3		\break	% 159
	s2*9		\break	% 162
	s2*9		\break	% 171
	s2*8		\break	% 180
		\set Score.currentBarNumber = #187
	s4*9*4		\break	% 187
	s4*9*4		\break	% 191
	s4*9*4		\break	% 195
	s4*9*4		\break	% 199
	s4*9*3		\break	% 203
	s4*9*4		\break	% 206
	s4*9*3		\break	% 210
	s4*9*3		\break	% 213
	s4*9*3		\break	% 216
	s4*9*3		\break	% 219
	s4*9*3		\break	% 222
	s4*9*3		\break	% 225
	s4*9*3		\break	% 228
	s2*10		\break	% 231
	s2*4		\break	% 241
	s2*3		\break	% 245
	s2*3		\break	% 248
	s2*3		\break	% 251
	s2*8		\break	% 254
	s2*4		\break	% 262
	s2*6		\break	% 266
	s2*6		\break	% 272
}

mIVbarlines =  {
	\key a \major
	\time 2/4
	\mark \markup { \bigger\bigger\column {
		\line { \bold {No. 4} }
		\line {Andante, ma non troppo e molto cantabile.}
	}}
	
	s2*64
	
	\bar "||"
	\time 4/4
	\tempo 4 = 145
	\mark \markup { \bigger\bigger {Più mosso.} }
	
	s1*33
	
	\bar "||"
	\time 4/4
	\tempo 4 = 60
	\mark \markup { \bigger\bigger\column { \line {Andante moderato} \line {e lusinghiero.}}}
	
	s1*32
	
	% 6/8 time change & || moved to individual parts due to grace notes
	
	s2.*32
	
	\bar "||"
	\time 2/4
	\tempo 4 = 90
	\mark \markup { \bigger\bigger {Allegretto.}}
	
	s2*26
	
	\bar "||"
	\time 9/4
	\tempo 4 = 65
	\mark \markup { \bigger\bigger {Adagio, ma non troppo e semplice.}}
	
	s4*9*44
	
	\bar "||"
	\key c \major
	\time 2/4
	\tempo 4 = 90
	\mark \markup { \bigger\bigger {Allegretto.}}
	
	s2*4
	
	\mark \markup { \bigger {sempre più allegro}}
	
	s2*4
	
	\mark \markup { \bigger {dim. e ritard.}}
	
	s2*2
	
	\mark \markup { \bigger {in tempo}}
	
	%%% a major key change & || moved to individual parts due to grace notes
	
	s2*13
	
	\bar "||"
	\key f \major
	\time 2/4
	\tempo 4 = 90
	\mark \markup { \bigger\bigger {Allegretto.}}
	
	s2*4
	
	\mark \markup { \bigger {sempre più allegro}}
	
	s2*5
	
	\mark \markup { \bigger {dim. e rit.}}
	\tempo 4 = 75
	s2
	\bar "||"
	\key a \major
	\tempo 4 = 90
	\mark \markup { \bigger {in tempo}}
	
	s2*14
	
	\bar "||"
	\time 2/2
	\key e \major
	
}