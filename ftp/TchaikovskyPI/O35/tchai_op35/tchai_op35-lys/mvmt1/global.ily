\version "2.18.2"

spacing =  {
	s1*7 \break				% begins @ M1
	s1*6 \break				% begins @ M8
	s1*5 \break
	s1*4 \break
	s1*4 \break s1
	s1*3 \break
	s1*4 \break
	s1*3 \break
	s1*2 \break
	s1*2 \break				% 40
	s1*3 \break				% 42
	s1*3 \break				% 45
	s1*3 \break				% 48
	s1*2 \break				% 51
	s1*2 \break				% 53
	s1*2 \break				% 55
	s1*2 \break				% 57
	s1*2 \break				% 59
	s1*2 \break             % 61
	s1*2 \break				% 63
	s1 \break				% 65
	s1*2 \break				% 66
	s1*4 \break				% 68
	s1*3 \break				% 72
	s1*3 \break				% 75
	s1*3 \break				% 78
	s1*3 \break				% 81
	s1*3 \break				% 84
	s1*2 \break				% 87
	s1*2 \break				% 89
	s1*2 \break				% 91
	s1*3 \break				% 93
	s1*2 \break				% 96
	s1*2 \break				% 98
	s1*2 \break				% 100
	s1*2 \break				% 102
	s1*2 \break				% 104
	s1*2 \break				% 106
	s1*2 \break				% 108
	s1*2 \break				% 110
	s1*2 \break				% 112
	s1*2 \break				% 114
	s1*2 \break				% 116
	s1*3 \break				% 118
	s1*3 \break				% 121
	s1*2 \break				% 124
	s1*3 \break				% 126
	s1*3 \break				% 129
	s1*3 \break				% 132
	s1*3 \break				% 135
	s1*3 \break				% 138
	s1*3 \break				% 141
	s1*3 \break				% 144
	s1*3 \break				% 147
	s1*3 \break				% 150
	s1*3 \break				% 153
	s1*3 \break				% 156
	s1*3 \break				% 159
	s1*3 \break				% 162
	s1*3 \break				% 165
	s1*2 \break				% 168
	s1*3 \break				% 170
	s1*3 \break				% 173
	s1*3 \break				% 176
	s1*2 \break				% 179
	s1*2 \break				% 181
	s1*2 \break				% 183
	s1*2 \break				% 185
	s1*3 \break				% 187
	s1*3 \break				% 190
	s1*3 \break				% 193
	s1*4 \break				% 196
	s1*3 \break				% 200
	s1*3 \break				% 203
	s1*3 \break				% 206
	s1*3 \break				% 209
	
	s1*46					% CADENZA
	
	s1*4 \break				% 212
	s1*3 \break				% 216
	s1*2 \break				% 219
	s1 \break				% 221
	s1 \break				% 222
	s1*4 \break				% 223
	s1*3 \break				% 227
	s1*3 \break				% 230
	s1*2 \break				% 233
	s1*2 \break				% 235
	s1*2 \break				% 237
	s1*2 \break				% 239
	s1*2 \break				% 241
	s1*2 \break				% 243
	s1*2 \break				% 245
	s1 s2 \bar "" \break
		s2 s1 \break		% 247
	s1*3 \break				% 250
	s1*3 \break				% 253
	s1*3 \break				% 256
	s1*3 \break				% 259
	s1*3 \break				% 262
	s1*2 \break				% 265
	s1*2 \break				% 267
	s1*2 \break				% 269
	s1*2 \break				% 271
	s1*2 \break				% 273
	s1 s2 \bar "" \break
		s2 s1 \break		% 275
	s1*3 \break				% 278
	s1*2 \break				% 281
	s1*2 \break				% 283
	s1*2 \break				% 285
	s1*2 \break				% 287
	s1*2 \break				% 289
	s1*2 \break				% 291
	s1*2 \break				% 293
	s1*4 \break				% 295
	s1*2 \break				% 299
	s1*2 \break				% 301
	s1*3 \break				% 303
	s1*3 \break				% 306
	s1*3 \break				% 309
	s1*2 \break				% 312
	s1*2 \break				% 314
	s1*2 \break				% 316
	s1*2 \break				% 318
	s1*3 \break				% 320
	s1*3 \break				% 323
	s1*3 \break				% 326
	s1*3 \break				% 329
	s1*3 \break				% 332
	s1*4 \break				% 335
}

barlines =  {
	\set Score.skipBars = ##t
	\override Score.TupletBracket.bracket-visibility = ##f
	
	\time 4/4
	
	\tempo "Allegro moderato."
	s1*23
	\set Score.tempoHideNote = ##t
	\tempo 4 = 85
	s1*4
	\bar "||"
	s1*79
	\bar "||"
	s1*12
	\bar "||"
	\set Score.tempoHideNote = ##f
	\tempo "Piu mosso."
	s1*8
	\bar "||"
	\tempo "Moderato assai."
	s1*61
	\set Score.tempoHideNote = ##t
	\tempo 4 = 95
	s1*70
	\bar "||"
	\tempo 4 = 80
	s1*91
	\bar "||"
	\tempo 4 = 115
	s16
	\set Score.tempoHideNote = ##f
	\tempo "Allegro gusto."
	s16 s8 s4 s2
	s1*6
	\set Score.tempoHideNote = ##t
	\tempo 4 = 125
	s1*6
	\set Score.tempoHideNote = ##f
	\tempo "Stringendo."
	s1*8
	\tempo "Piu mosso."
	s1*13
	\set Score.tempoHideNote = ##t
	\tempo 4 = 105
	s1*2
	\bar "|."
}
