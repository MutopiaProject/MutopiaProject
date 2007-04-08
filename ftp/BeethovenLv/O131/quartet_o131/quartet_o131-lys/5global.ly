\version "2.6.0"

mVspacing =  {
	s1*10		\break		% START @ 1
	s1*9		\break		% 11
	s1*10		\break		% 20
	s1*10		\break		% 30
	s1*9		\break		% 40
	s1*10		\break		% 49
	s1*9		\break		% 59
	\set Score.currentBarNumber = #66
		s1*10		\break		% 66
	s1*10		\break		% 76
	s1*10		\break		% 86
	s1*10		\break		% 96
	s1*11		\break		% 106
	s1*10		\break		% 117
	s1*10		\break		% 127
	s1*10		\break		% 137
	s1*10		\break		% 147
	s1*12		\break		% 157
	s1*10		\break		% 169
	s1*10		\break		% 179
	s1*10		\break		% 189
	s1*9		\break		% 199
	s1*9		\break		% 208
	s1*10		\break		% 217
	s1*10		\break		% 227
	s1*10		\break		% 237
	s1*10		\break		% 247
	s1*10		\break		% 257
	s1*10		\break		% 267
	s1*11		\break		% 277
	s1*9		\break		% 288
	s1*10		\break		% 297
	s1*10		\break		% 307
	s1*11		\break		% 317
	s1*10		\break		% 328
	s1*10		\break		% 338
	s1*10		\break		% 348
	s1*11		\break		% 358
	s1*10		\break		% 369
	s1*10		\break		% 379
	s1*10		\break		% 389
	s1*10		\break		% 399
	s1*10		\break		% 409
	s1*9		\break		% 418
	s1*7 \noBreak | s1 \noBreak | s1 \noBreak | s1	\break		% 428
	s1*9		\break		% 437
	s1*10		\break		% 447
	s1*12		\break		% 457
	s1*10		\break		% 469
	s1*10		\break		% 479
	s1*10		\break		% 489
}

mVbarlines =  {
	\key e \major
	\time 2/2
	
	\mark \markup { \bigger\bigger\column {
		\line {\bold {No. 5}}
		\line {Presto.}
	}}
	
	s1*32
	
	\mark \markup { \bigger\bigger\column {
		\line {Molto poco}
		\line {adagio.}}}
	\tempo 2 = 150
	
	s1*4
	
	\mark \markup { \bigger\bigger {Tempo I.}}
	\tempo 2 = 235
	
	s1*7
	
	\tempo 2 = 150
	s2_\markup { \italic {ritard.}}
	\tempo 2 = 120
	s2
	\mark \markup { \musicglyph #"scripts.ufermata" }
	\tempo 2 = 235
	
	\noDynamic s4\f_\markup { \dynamic f \italic {in tempo}} s2.
	
	s1*65
	
	\mark \markup { \bigger\bigger {Ritmo di quattro battute.}}
	
	s1*2
	
	\bar "||"
	\key a \major
	
	s1*6
	
	\mark \markup { \bigger\bigger {Ritmo di quattro battute.}}
	
	s1*52
	
	\bar "||"
	\key e \major
	
	s1*30
	
	\mark \markup { \bigger\bigger\column {
		\line {Molto poco}
		\line {adagio.}}}
	\tempo 2 = 150
	
	s1*4
	
	\mark \markup { \bigger\bigger {Tempo I.}}
	\tempo 2 = 235
	
	s1*7
	
	\tempo 2 = 150
	s2_\markup { \italic {ritard.}}
	\tempo 2 = 120
	s2
	\mark \markup { \musicglyph #"scripts.ufermata" }
	\tempo 2 = 235
	
	\noDynamic s4\f_\markup { \dynamic f \italic {in tempo}} s2.
	
	s1*63
	
	\mark \markup { \bigger\bigger {Ritmo di quattro battute.}}
	
	s1*2
	
	\bar "||"
	\key a \major
	
	s1*6
	
	\mark \markup { \bigger\bigger {Ritmo di quattro battute.}}
	
	s1*52
	
	\bar "||"
	\key e \major
	
	s1*30
	
	\mark \markup { \bigger\bigger\column {
		\line {Molto poco}
		\line {adagio.}}}
	\tempo 2 = 150
	
	s1*4
	
	\mark \markup { \bigger\bigger {Tempo I.}}
	\tempo 2 = 235
	
	s1*7
	
	\tempo 2 = 150
	s2_\markup { \italic {ritard.}}
	\tempo 2 = 120
	s2
	\mark \markup { \musicglyph #"scripts.ufermata" }
	\tempo 2 = 235
	
	\noDynamic s4\f_\markup { \dynamic f \italic {in tempo}} s2.
	
	s1*35
	
	\mark \markup { \bigger\bigger\column {
		\line {Molto poco}
		\line {adagio.}}}
	\tempo 2 = 150
	
	s1*4
	
	\mark \markup { \bigger\bigger {Tempo I.}}
	\tempo 2 = 235
	
	s1*7
	
	\tempo 2 = 150
	s2_\markup { \italic {ritard.}}
	\tempo 2 = 120
	s2
	\mark \markup { \musicglyph #"scripts.ufermata" }
	\tempo 2 = 235
	
	\noDynamic s4\f_\markup { \dynamic f \italic {in tempo}} s2.
	
	s1*29
	
	\bar "||"
	\key a \major
	
	s1*15
	
	\bar "||"
	\key e \major
	
	s1*29
	
	\bar "||"
	\key gsharp \minor
	\time 3/4
}