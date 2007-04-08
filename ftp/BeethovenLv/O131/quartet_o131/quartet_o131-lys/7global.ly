\version "2.6.0"

mVIIspacing =  {
	s1*8		\break		% START @ 1
	s1*7		\break		% 9
	s1*7		\break		% 16
	s1*7		\break		% 23
	s1*9		\break		% 30
	s1*7		\break		% 39
	s1*7		\break		% 46
	s1*8		\break		% 53
	s1*9		\break		% 61
	s1*10		\break		% 70
	s1*6		\break		% 80
	s1*7		\break		% 86
	s1*7		\break		% 93
	s1*7		\break		% 100
	s1*7		\break		% 107
	s1*7		\break		% 114
	s1*7		\break		% 121
	s1*5		\break		% 128
	s1*6		\break		% 122
	s1*6		\break		% 139
	s1*6		\break		% 145
	s1*6		\break		% 151
	s1*6		\break		% 157
	s1*6		\break		% 163
	s1*7		\break		% 169
	s1*7		\break		% 176
	s1*9		\break		% 183
	s1*10		\break		% 192
	s1*6		\break		% 202
	s1*5		\break		% 208
	s1*7		\break		% 213
	s1*8		\break		% 220
	s1*11		\break		% 228
	s1*7		\break		% 239
	s1*7		\break		% 246
	s1*10		\break		% 253
	s1*6		\break		% 263
	s1*6		\break		% 269
	s1*7		\break		% 275
	s1*8		\break		% 282
	s1*7		\break		% 290
	s1*7		\break		% 297
	s1*6		\break		% 304
	s1*7		\break		% 310
	s1*7		\break		% 317
	s1*7		\break		% 324
	s1*7		\break		% 331
	s1*6		\break		% 338
	s1*7		\break		% 344
	s1*8		\break		% 351
	s1*9		\break		% 359
	s1*7		\break		% 368
	s1*7		\break		% 375
	s1*7
}

mVIIbarlines =  {
	\override Voice.TextScript  	#'padding = #6

	\mark \markup { \bigger\bigger\column {
		\line { \bold {No. 7} }
		\line {Allegro.}
	}}
	
	s1*57 s2 s2^\markup { \bigger\bigger {poco rit.}}
	\tempo 2 = 95
	
	s1
	
	s1^\markup { \bigger\bigger {in tempo}}
	\tempo 2 = 122
	
	s1*2
	
	s2^\markup { \bigger\bigger {poco rit.}} s2
	\tempo 2 = 95
	
	s1^\markup { \bigger\bigger {in tempo}}
	\tempo 2 = 122
	
	s1
	
	s2 s2^\markup { \bigger\bigger {poco riten.}}
	\tempo 2 = 95
	
	s1
	
	\tempo 2 = 122
	s2^\markup { \bigger\bigger {in tempo}} s2
	\tempo 2 = 95
	s2^\markup { \bigger\bigger {riten.}} s2

	s1*2
	
	\tempo 2 = 122
	s2^\markup { \bigger\bigger {in tempo}} s2

	s1*75
	
	s2^\markup { \bigger\bigger {Ritmo di tre battute}} s2
	s1*69 s2
	
	\tempo 2 = 95
	s2^\markup { \bigger\bigger {poco rit.}}
	\tempo 2 = 122
	s1 s2^\markup { \bigger\bigger {in tempo}} s2
	s1
	\tempo 2 = 95
	s2^\markup { \bigger\bigger {poco rit.}} s2 s1
	\tempo 2 = 122
	s2^\markup { \bigger\bigger {in tempo}} s2
	s1 s2
	\tempo 2 = 95
	s2^\markup { \bigger\bigger {poco rit.}}
	s1
	\tempo 2 = 122
	s2^\markup { \bigger\column {
		\line {in}
		\line {tempo}}}
	\tempo 2 = 95
	s2^\markup { \bigger {riten.}}
	
	s1*3
	
	\tempo 2 = 122
	s2^\markup { \bigger\bigger {in tempo}} s2
	
	s1*11
	
	\tempo 2 = 95
	s2^\markup { \bigger\bigger {poco rit.}} s2
	s1
	\tempo 2 = 122
	s2^\markup { \bigger\bigger {in tempo}} s2

	s1
	\tempo 2 = 95
	s2 s2^\markup { \bigger\bigger {poco rit.}}
	s1
	\tempo 2 = 122
	s2^\markup { \bigger\column {
		\line {in}
		\line {tempo}}}
	\tempo 2 = 95
	s2^\markup { \bigger {riten.}}

	s1*3
	
	\tempo 2 = 122
	s2^\markup { \bigger\bigger {in tempo}} s2
	
	s1*74
	
	\mark \markup { \bigger {non ligato}}
	
	s1*20
	
	\mark \markup { \bigger {Ritmo di due battute}}
	
	s1*28
	
	\mark \markup { \bigger\bigger {Poco Adagio.}}
	\tempo 2 = 65
	
	s1*6
	
	\mark \markup { \bigger\bigger {Tempo I.}}
	\tempo 2 = 105
	
	s1*6
	
	\bar "|."
}

mVIIkeychange = {
	\key csharp \minor
	\time 2/2
	
	s1*98
	
	\bar "||"
	\key b \minor
	
	s1*41
	
	\bar "||"
	\key csharp \minor
	
	s1*71
	
	\bar "||"
	\key b \minor
	
	s1*37
	
	\bar "||"
	\key csharp \minor
}