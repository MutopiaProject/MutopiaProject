\version "2.11.48"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Sonata II BWV 1003"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "2. Fuga"
        mutopiatitle = "BWV 1003 Fuga"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1003"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/15-1455"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative f' {
	r8 e'16  [ dis16 ] e8 [ e, ] | % 1
	a8 [ c ] b [ d ] | % 2
	c8 r8 r4 | % 3
	r8 e8 [ e dis ] | % 4
	e8 [ b16 a ] b8 [ cis ] | % 5
	d8 [ a16 gis ] a8 [ b ] | % 6
	s8 a'16 [ gis ] a8 [ a,] | % 7
	e'8 [ g ] fis [ a ] | % 8
	g8 [ e16 dis ] s8 g8 | % 9
	g8 [a16 g ] a8 [ e ] | % 10
	f4 s8 f8 | % 11
	f8 [ g16 f ] g8 [d ] | % 12
	e16 [ f e d ] c [ b a g ] | % 13
	fis8 [ d'16 c ] d8 [ fis,] | % 14
	gis16 [( a b c ) ] d8 [ f, ]  | % 15
	e8 [ d'16 c ] d [ f e d ]  | % 16
	c16 [ d c d ] d8. \prall [ c32 d ] | % 17
	e8 r8 g4 | % 18
	fis4 f | % 19
	e4 a | % 20
	gis4 g | % 21
	fis4 b | % 22
	ais4 a | % 23
	gis8 [ g16 fis] g8 [ a ]| % 24
	b8 [ fis16 e] fis8 [ gis ] | % 25
	a8 [ a16 gis]  a8 [ b ] | % 26
	c8 [ g16 fis] g8 [ a ] | % 27
	b8 [ b16 a] b8 [ c ] | % 28
	d8 [ a16 gis] a8 [ b ] | % 29
	c8 s4. | % 30
	d,,8 [ c''16 ( a ] g [ fis e d )] | % 31
	b'8 s4. | % 32
	c,,8 [ bes''16 (g ] f [ e d c )]| % 33
	a'8 [ a16 ( f ] e [ d cis b )] | % 34
	g'8 [g16 ( e ] d [ cis b a )] | % 35
	f'16 [ g f e ] d [ c bes a ] | % 36
	f'8 [ bes16 ( f ] e16 [ d c b )] | % 37
	gis'8 [a16 gis] a8 [ a ] | % 38
	a8 r8 r8 gis8 | % 39
	g8 r8 f8 r8 | % 40
	e8 r8 r8  e8 | % 41
	e8 [ d16 cis16 ] d8 [ bes8 ] | % 42
	gis8 [ f' ] e [ d ] | % 43
	cis8. [ d16 ] b8. \prall [ a16 ]  | % 44
	a16 [ e' c a ] s16 a16 [ s16 a ] | % 45
	e16 [ (a) f (a) ] e [ ( a) d, ( a')] | % 46
	a16 [ e' c a ] s16 a16 [ s16 a16 ]  | % 47
	e16 [ (a) f (a) ] e [ (a) d, (a') ] | % 48
	e16 [ a (gis a ] b [ a gis a )] | % 49
	d,16 [ a' ( gis a ] b [ a gis a ) ] | % 50
	e16 [ e' c a ] s16 a16 [ s16 a16 ] | % 51
	dis,16 [ fis' c a ] gis [ (a)  dis, (a') ] | % 52
	e16 [ b'' g e ] s16 e16 [ s16 e16 ] | % 53
	b16 [ (e) c (e) ] b [ (e) a, (e') ] | % 54
	e16 [ bes' g e ] s16 e16 [ s16 e ] | % 55
	b16  [ (e) c (e) ] b [ (e) a, (e') ] | % 56
	b16 [ e ( dis e]  fis [ e dis e)] ] | % 57
	a,16 [ e' ( dis e ] fis [ e dis e )] ] | % 58
	b16 [ b' g e ] s16 e16 [ s16 e ] | % 59
	c16 [ (e) b (e) ] a, [ (a') c, ( a') ] | % 60
	b,8 [ b'16 a ] b8 [ b, ] | % 61
	e8 [ g ] fis [ a ] | % 62
	g8 r8 r8 g8 | % 63
	fis4 f4 | % 64
	e8 [ a16 (gis) ] a [ (fis) g (e) ] | % 65
	dis8 r8 r8 fis8 | % 66
	b,8 [ e16 (dis) ] e [ (c) d (b) ] | % 67
	c8 [ b ] a r8 | % 68
	a8 [ fis'16 e ] fis8 [ fis, ] | % 69
	b8 [ d ] cis [ e ] | % 70
	dis8 [ fis ] b [ a ] | % 71
	g8. [ a16 ] fis8.^\trill [ e16 ] | % 72
	e8 r8 e4 | % 73
	dis4 d4 | % 74
	cis8 [ c16 b ] c8 [ d ] | % 75
	e8 [ b16 a ] b8 [ cis ] | % 76
	d4 d | % 77
	cis4 c | % 78
	b8 [ b16 a ] b8 [ c ] | % 79
	d8 [ a16 g ] a8 [ b ] | % 80
	r8 g'16 [ f ] g8 [ g,] | % 81
	c8 [ e8 ] d8 [ f8 ] | % 82
	e8 [ g8 ] f8 [ a8 ] | % 83
	g8 [ c,16 (b ] c [ d e f32 g) ] | % 84
	a8 s4. | % 85
	a8 [ d,16 ( e ] fis [ g a b32 c) ] | % 86
	b8 s4. | % 87
	r8 c8 [c  b ] | % 88
	c8 [ c16 b ] c [ g e c ] | % 89
	g'8 [ b ] a [ c ] | % 90
	b8 r8 r8 b8 | % 91
	c8 r8 b8 r8 | % 92
	bes8 r8 a8 r8 | % 93
	b,16 [ c d e ] f [ g a f ] | % 94
	g16 [ a g f ] e [ d c e ] | % 95
	a,16 [ b c d ] e [ f g e ]  | % 96
	f16 [ g f e ] d [ c b d ] | % 97
	g,16 [ a b c ] d [ e f d ] | % 98
	e8 r8 r8 e8 | % 99	
	e8 [ a16 g ] f [ e d f ] | % 100
	b,16 [ d c b ] a [ g f d'] | % 101
	e,16 [c' d, c ] g [ d' c' b] | % 102
	c8 [ e16 d ] e8 [e,] | % 103
	a16 [ b c a ] b [ c d b ] | % 104
	c16 [ d e c ] d [ e f d ] | % 105
	e8 [ a16 (gis) ] a16 [ (fis) g (e) ] | % 106
	fis8  r8 r4 | % 107
	gis8 s4. | % 108
	a8 r8 r4 | % 109
	d,16 [ e f e ] d [ c b a ]  | % 110
	gis16 [ b e gis ] b [ cis d b ] | % 111
	c16 [ a f e ] f [ c a c ] | % 112
	b'16 [ f d c ] d [ b gis b ] | % 113
	c16 [ e a gis ] a [ e c e ] | % 114
	g16 [ e cis b ] cis [ a e g ] | % 115
	f16 [ d' a g ] a [ f d f ] | % 116
	b,16 [ d gis fis ] gis [ b d c ] | % 117
	d16 [ f b a ] b [ f e d ] | % 118
	c [ b a gis ] a [ c f c ] | % 119
	b16 [ a g fis ] g [ b e b ] | % 120
	a16 [ g f e ] f [ a d a ] | % 121
	gis16 [ a b c ] d [ e f e ] | % 122
	f16 [ e d cis ] d [ gis a b ] | % 123
	c,16 [ b a c ] f, [ e' a d, ] | % 124
	gis8 r8 r8 g8 | % 125
	c,4 cis4 | % 126
	d8 r8 r8 f8 | % 127
	b,4 d4 ~ | % 128
	d8 [ c16 d ] c8 [ c' ] | % 129
	f,4 e | % 130
	d8 [ c16 b ] c8 [ a' ] | % 131
	e8 [ d16 c ] d8 [ b ] | % 132
	c8 [ e ] a [ c, ] | % 133
	b8 [ a'16 g ] a8 [ dis, ] | % 134
	e8 [ c' ] b [ a ] | % 135
	g8. [ a16 ] fis8. [ e16 ] | % 136
	e8 [ b'16 a ] b8 [ b, ] | % 137
	e8 [ g ] fis [ a ] | % 138
	g8 r8 r4 | % 139
	r8 e8 [ e es ] | % 140
	e8 [ b16 c ] b8 [ b' ] | % 141
	e,8 [ (c) ] d [ (b) ] | % 142
	c8 [ e16 es ] e8 [ e, ] | % 143
	r8 a'8 [ a gis ] | % 144
	a8 [ c,16 b] c8 [ c ] | % 145
	c8 [ d16 c ] d8 [ a ] | % 146
	b8 r8 r8 bes8 | % 147
	bes8 [ c16 bes ] c8 [ g ] | % 148
	a8 [ f'16 g ] f8 [ e ] | % 149
	d8 [ g16 a ] g8 [ f ] | % 150
	e8 r8 g8 r8 | % 151
	a8 r8  a8 r8 | % 152
	r8 g16 [ a ] g8 [ f ] | % 153
	e8 [ a16 bes] a8 [ g ] | % 154
	f8 r8  fis8 r8 | % 155
	g8 r8 gis8 r8 | % 156
	a8 [ b ] c r8 | % 157
	r8 c8 [ b a ] | % 158
	gis8 [ a ] b8 r8 | % 159
	r8 b8 [a  g ] | % 160
	fis8 [ g ] a8 r8 | % 161
	r8 g16 [ fis ] g8 [ b, ] | % 162
	c8 [ e ] d [ f ] | % 163
	e8 [ fis ] g8 r8 | % 164
	g8. [ a16 ] fis8. \trill [ g16 ] | % 165
	g8 [ b16 a ] b8 [ b, ] | % 166
	cis16 [ e fis g ] a [ b, a g ] | % 167
	fis8 [ a'16 g ] a8 [ cis, ] | % 168
	dis16 [ (e) dis (e) ] fis [ (g) a, (b) ] | % 169
	c16 [ (d) fis, (g) ] a [ (b) dis, (e) ] | % 170
	fis16 [ g a b ] cis [ dis e fis ] | % 171
	g16 [ a g a ] b8 [ b, ] | % 172
	e8 s4. | % 173
	dis8 [ b16 c ] b8 [ b' ] | % 174
	e,8 [ (c) ] d [ (b) ] | % 175
	c4 b4 | % 176
	a8 [ (b) ] c4 ~ | % 177
	c8 [ fis16 (c) ] b [ (a) g (fis) ] | % 178
	g16 [ (dis e g) ] c [ e, d b' ] | % 179
	a16 [ (e c) e ] a [ c, b g' ] | % 180
	f16 [ (c a) c ] f [ a, g e' ] | % 181
	es16 [ fis a c ] fis [ b, a fis' ] | % 182
	g,16 [ (fis g) b ] e [ a, gis d' ] | % 183
	c16 [ (b c) e ] f [ a, g e' ] | % 184
	dis16 [ (e fis g ] a) [ fis, e c' ] | % 185
	dis,16 [ (e fis g ] a) [ b, dis fis ] | % 186
	g16 [ c (b) dis ] (e) [ g (fis) ais ] | % 187
	b8 [ e,8 ] g16 [ (fis) e (dis) ] | % 188
	e8 [ g,16 a ] g8 [ g' ] | % 189
	g8 r8  cis,4 | % 190
	d8 s4. | % 191
	e8 r8 b4 | % 192
	c8 s4. | % 193
	b8 s4. | % 194
	c,16 [ (d c) a ] e' [ (f e) c ] | % 195
	a'16 [ (b a) e ] c' [ (d c) a ] | % 196
	bes8 [ g'16 f ] g8 [ g, ] | % 197
	a16 [ c (bes a) ] bes [ d (c bes) ] | % 198
	c16 [ es (d c) ] d [ f (e d) ] | % 199
	e8 r8 r8 e8 | % 200
	f8 r8 r8 f8 | % 201
	g8 r8 r8 g8 | % 202
	a8 [ g ] bes [ a ] | % 203
	g8 [ f16 e ] f [ a g f ] | % 204
	e16 [ g (f e) ] d [ c bes a ] | % 205
	bes16 [ (a bes) d, ] f [ bes d f ] | % 206
	bes16 [ (a bes) f ] d [ bes f d ] | % 207
	c'16 [ (bes c) e, ] g [ c e g ] | % 208
	bes16 [ a (bes g) ] e [ c g e ] | % 209
	c'16 [( bes c) f, ] a [ c f g ] | % 210
	a16 [ (g a) f ] c [ a f a ] | % 211
	c16 [ (bes c) fis, ] a [ c es fis ] | % 212
	a16 [ (g a) es ] c [ a fis a ] | % 213
	bes16 [ (a bes) g ] bes [ d fis a ] | % 214
	g16 [ (fis g) d ] bes [ g es d ] | % 215
	cis16 [ (b cis) e ] a [ cis e f ] | % 216
	g16 [ (f g) e ] cis [ a e cis ] | % 217
	d16 [ (cis d) f ] a [ d f c, ] | % 218
	bes16 [ (a bes) f' ] bes [ d f a,, ] | % 219
	g16 [ d' g a ] bes [ d es g ] | % 220
	cis,8 [ a'16 g ] a8 [ a, ] | % 221
	d8 [ f ] e [ g ] | % 222
	f8 r8 r8 f8 | % 223
	e8 r8 es8 r8 | % 224
	es8 [ d16 cis ] d8 [ d' ] | % 225
	g,16 [ (f e g) ] f [ (e d f) ] | % 226
	es16 [ (d cis d) ] bes'8 [ a ] | % 227
	es16 [ (cis) d8 ] bes'8 [ (a) ] | % 228
	d,8 [ cis ] g' [ bes, ] | % 229
	a8 [ g' ] f [ e ] | % 230
	a,8 [ d ] e, [ cis' ] | % 231
	d8 [ f,16 e ] f8 [ g ] | % 232
	a8 [ e16 d ] e8 [ fis ] | % 233
	g4 g | % 234
	fis4 f | % 235
	e8 [ e16 d ] e8 [ f ] | % 236
	g8 [ d16 c ] d8 [ e ] | % 237
	f4 f | % 238
	e4 es | % 239
	d8 [ bes'16 c ] bes8 [ a ] | % 240
	g8 [ c16 d ] c8 [ bes ] | % 241
	a4 a | % 242
	bes4 b | % 243
	c8 [ c16 d ] c8 [ bes ] | % 244
	a8 [ d16 e ] d8 [ c ] | % 245
	bes4 b | % 246
	c4 cis | % 247
	d8 [ a16 bes ] a8 [ a' ] | % 248
	d,8 [ (bes) ] c8 [ (a) ] | % 249
	bes16 [ (a g a ] bes8 ) [ g' ] | % 250
	c,8 [ (a) ] bes [ (g) ] | % 251
	a8 [ c16 bes ] c8 r8 | % 252
	r8 f8 r8 es8 | % 253
	r8 d16 [ c ] d8 r8 | % 254
	r8 g8 r8 f8 | % 255
	r8 e16 [ f ] g8 [ a ] | % 256
	bes8 [ (a) ] a [ (g) ] | % 257
	g8 [ (f) ] f [ (e) ] | % 258
	d16 [ e d e ] f8 [ a,, ] | % 259
	gis8. [ f''16 ] e [ d c b ] | % 260
	c16 [ (a f) e' ] d [ c b a ] | % 261
	gis8 [ b'16 a ] b8 [ d, ] | % 262
	c16 [ b' (a gis) ] a8 [ c, ] | % 263
	b8 [ (a') ] g [ bes, ] | % 264
	a16 [ g' (f e) ] f8 [ a, ] | % 265
	g8 [ f' ] e [ g, ] | % 266
	f16 [ e' (d c) ] d8 [ f, ] | % 267
	e8 [ (d') ] c [ e, ] | % 268
	f8 [ bes16 a ] bes8 [ d ] | % 269
	d8 [ (f) ] f [ bes ] | % 270
	gis8 [ f16 e ] a8 r8 | % 271
	a8 r8 r8 gis8 | % 272
	a8 r8 e8 r8 | % 273
	a8 r8  g8 r8 | % 274
	f8 [ (e) ] e [ (d) ] | % 275
	d8 r8 r8 c8 | % 276
	bes16 [ (c d e) ] f8 [ a, ] | % 277
	gis8 [ f' ] e [ d ] | % 278
	c8. [ d16 ] b8. [ a16 ] | % 279
	a8 s4. | % 280
	a'8 r8 gis8 r8| % 281
	a8 [ a,16 b] a8 [ a'] | % 282
	e8 [ c ] d [ b ]| % 283
	c8 r8 cis r8 | % 284
	a'8 [ f ] g [ e ] | % 285
	f32 [ g a g f e d cis ] d [ e f e d c b a ] | % 286
	b32 [ c d c b a gis fis ] gis [ a b a gis fis e d ] | % 287
	r8 a''8 a [ gis ] | % 288
	a2 \bar "|." % 289

}

melodyTwo =  \relative f' {
	s2 | % 1
	s2 | % 2
	r8 a16  [ gis ] a8 [ a,8 ] | % 3
	e'8 [ g ] fis [ a ] | % 4
	gis4 g | % 5
	fis4 f | % 6
	e4 r8 fis8 | % 7
	g4 dis4 | % 8
	e4 r8 e8 | % 9
	a4 r8 a8 | % 10
	d,4 r8 d8 | % 11
	g4 r8 g8 | % 12
	c,8 s4. | % 13
	c8 r8 r8 c8 | % 14
	b8 r8 r8 a8 | % 15
	gis8 s4. | % 16
	a16 s8. f'4 | % 17
	e8 [ b'16 a ] b8 [ cis ] | % 18
	d8 [ a16 g ] a8 [ b ] | % 19
	c8 [ c16 b ] c8 [ d ] | % 20
	e8 [ b16 a ] b8 [ cis ] | % 21
	d8 [ d16 cis ] d8 [ e ] | % 22
	fis8 [ cis16 b ] cis8 [ dis8 ] | % 23
	e4 e | % 24
	dis4 d | % 25
	c4 f | % 26
	e4 es | % 27
	d4 g | % 28
	fis4 f | % 29
	e8 [ a16 gis ] a8 [ a, ] | % 30
	s2 | % 31
	g8 [ g'16 fis ] g8 [ g, ] | % 32
	s2 | % 33
	f8 s4. | % 34
	e8 s4. | % 35
	d16 s8. s4 | % 36
	d8 s4.| % 37
	d8 r8 r8 dis8 | % 38
	e8 [ e'16 dis ] e8 [ e, ] | % 39
	a,8 [ cis ] b [ d ] | % 40
	cis8 r8 r8 cis8 | % 41
	d8 r8 r8 d8 | % 42
	d8 [ b ] c [ d ] | % 43
	e8 [d] e4 | % 44
	a,16 s8. gis'16 [ s16 a16 ] s16 | % 45
	r8 d,8 [ c b ] | % 46
	a16 s16_\markup { piano } s8 gis'16 [ s16 a16 ] s16 | % 47
	r8  d,8 [ c b ] | % 48
	a16 s16_\markup { forte } s8 s4 | % 49
    	b16 s16_\markup { piano } s8 s4  | % 50
    	c16 s16_\markup { forte } s8 gis'16 [ s16 a16 ] s16   | % 51
    	s8_\markup { piano } s8 s4  ] | % 52
    	s8_\markup { forte } s8 dis16 [ s16 e ] s16 | % 53
   	r8 a,8 [ g fis ] | % 54
    	e16 s16_\markup { piano } s8 dis'16 [ s16 e16 ] s16  | % 55
    	r8 a,8 [ g fis ] | % 56
    	e16 s16_\markup { forte } s8 s4 | % 57
	fis16 s16_\markup { piano } s8 s4 | % 58
    	g16 s16_\markup { forte } s8 dis'16 [ s16 e16 ] s16  | % 59
	a,8 [ g ] fis [ e ] | % 60
 	dis8 r8 r8 a'8 | % 61
	g r8 b8 r8 | % 62
	e,8 [ e'16 dis ] e8 [ e,] | % 63
	a8 [ c ] b [ d ] | % 64
	c8 r8 r8 a8 | % 65
	a8 [ b16 (a) ] b16 [ (g) a (fis) ] | % 66
	g8 r8 r8 gis8 | % 67
	a16 [ e g e ] fis [ e dis e ] | % 68
	dis8 r8 r8 dis8 | % 69
	e8 r8 a,8 r8 | % 70
	a8 r8 g8 [ a ] | % 71
	b8 r8 dis8 r8  | % 72
	e8 [ g16 fis ] g8 [ a ] | % 73
	b8 [ fis16 e ] fis8 [ gis ] | % 74
	a4 a | % 75
	gis4 g | % 76
	fis8 [ f16 e ] f8 [ g ] | % 77
	a8 [ e16 d ] e8 [ fis ] | % 78
	g4 g | % 79
	fis4 f | % 80
	e8 r8 r8 c8 | % 81	
	a8 r8 b8 r8 | % 82
	c8 r8  d8 r8 | % 83
	e8 s4. | % 84
	f8 s4. | % 85
	fis8 s4. | % 86
	d'8 [ g16 fis ] g8 [ g,]   | % 87
	c8  [ e d f ] | % 88
	e8 r8 r4 | % 89
	r8 g8 [ g fis ] | % 90
	g8 g,16 [ fis ] g8 [g,] | % 91
	c8 [ e ] d [ f ]  | % 92
	e8 [ g ] f [ a ] | % 93
	g8 s4.  | % 94
    	e8 s4. | % 95
	f8 s4.  | % 96
	d8 s4. | % 97
	b8 s4. | % 98
	c8 [ bes16 a ] bes8 [ g ] | % 99
	a8  s4. | % 100
	g16 s8. s4 | % 101
	s2  | % 102
	c8 r8 r8 c8 | % 103
	c8 r8 b8 r8 | % 104
	a8 r8 b8 r8 | % 105
	c8 s4. | % 106
	c8 [ d16 (c) ] d [ (b) c (a) ] | % 107
	<b e>8 s4. | % 108
	a8 s4. | % 109
	a8 s4. | % 110
	s2 | % 111
	s2 | % 112
	s2 | % 113
	s2 | % 114
	s2 | % 115
	s2 | % 116
	s2 | % 117
	s2 | % 118
	s2 | % 119
	s2 | % 120
	s2 | % 121
	s2 | % 122
	s2 | % 123
	s2 | % 124
	e''8 [ e,16 f ] e8 [ e'] | % 125
	a,8 [ (f) ] g [ (e) ] | % 126
	f8 [ d16 e ] d8 [ d' ] | % 127
	g,8 [ (e) ] f [ (d) ] | % 128
	e4 r8 e'8  | % 129
	e8 [ d ] (d8) [ c8 ] | % 130
	f,8 [ g ] a [ f ] | % 131
	g8 r8 g,8 r8 | % 132
	c8 r8 r4  | % 133
	dis8 r8 r8 a'8 | % 134
	g8 [ fis ] g [ a ] | % 135
	b8 [ a ] b4 | % 136
	e,8 r8 r4 | % 137
	r8 e'8 [ e dis ] | % 138
	e8 [ e,16 fis ] e8 [ e' ] | % 139
	b8 [ g ] a8 [ fis ] | % 140
	g8 r8 r4  | % 141
	gis8 r8 e8 r8 | % 142
	a8 r8 r8 d,8 | % 143
	<c e>8 r8  e8 r8 | % 144
	a,8 r8 r8 a8 | % 145
	d8 r8 r8 d8 | % 146
	g,8 r8 r8 g8 | % 147
	c8 r8 r8 c8 | % 148
	f8 r8 a8 r8 | % 149
	bes8 r8 b8 r8 | % 150
	r4 e,8 r8 | % 151
	f8 r8 fis8 r8 | % 152
	g8 r8 e8 r8 | % 153
	a8 r8 a,8 r8 | % 154
	d8 r8 <b d>8 r8  | % 155
	e8 r8 e8 r8 | % 156
	f8 r8 s4 | % 157
	d8 [ e' d c ] | % 158
	e,8 s4. | % 159
	a,8 [ d' c b ] | % 160
	d,8 s4.  | % 161
	g,8 [ b'16 a ] b8 [ f ] | % 162
	e8 r8 b8 r8 | % 163
	c8 s4. | % 164
	d8 r8 r4 | % 165
	g,8 r8 r8 g8 | % 166
	a8 r8 r4 | % 167
	a8 r8 r4 | % 168
	b8 s4. | % 169
	s2 | % 170
	s2 | % 171
	e8 r8 r8 d8 | % 172
	<c e>8 s4. | % 173
	b8 r8 r8 a8 | % 174
	g8 r8  gis8 r8 | % 175
	a8 s4. | % 176
	fis'4. e8 | % 177
	dis8 s4. | % 178
	s2 | % 179
	s2 | % 180
	s2 | % 181
	s2 | % 182
	s2 | % 183
	s2 | % 184
	s2 | % 185
	s2 | % 186
	s2 | % 187
	r8 g8 [ a  b ] | % 188
	e,8 r8 r8 e8 | % 189
	a,8 r8 bes'8 [ (g)] | % 190
	f16 [ e d e ] f [ a d f ]  | % 191
	g,,8 r8 aes'8 [(f)] | % 192
	e16 [ d c d ] e [ fis gis a ] | % 193
	gis,8 s4. | % 194
	s2 | % 195
	s2 | % 196
	e'8 r8 r8 c8 | % 197
	f8 r8 d8 r8 | % 198
	a8 r8 bes8 r8 | % 199
	g'8 [ bes,16 a] bes8 [g'] | % 200
	a8 [ a,16 g] a8 [a'] | % 201
	e8 r8 r8 e8 | % 202
	f8 [ e'] d [c] | % 203
	bes8 r8 b8 r8 | % 204
	c8 r8 s4 | % 205	
	s2 | % 206
	s2 | % 207
	s2 | % 208
	s2 | % 209	
	s2 | % 210
	s2 | % 211
	s2 | % 212
	s2 | % 213
	s2 | % 214
	s2 | % 215
	s2 | % 216
	s2 | % 217
	s2 | % 218
	s2 | % 219
	s2 | % 220
	g,8 r8 r8 g'8 | % 221
	f8 r8 a8 r8 | % 222
	d,8 [ d'16 cis ] d8 [d,] | % 223
	g8 [ bes ] a [c ] | % 224
	bes,8 s4.  | % 225
	bes'8 r8 a8 r8 | % 226
	g8 s4. | % 227
	f8 s4. | % 228
	e8 r8 r8 d8 | % 229
	cis8 r8 d8 [ g,] | % 230
	a8 r8 a8 r8 | % 231
	d8 r8 d4 | % 232
	cis4 c | % 233
	b8 [ b16 a ] b8 [ cis] | % 234
	d8 [ a16 g ] a8 [ b ] | % 235
	c4 c | % 236
	b4 bes | % 237
	a8 [ a16 g ] a8 [ b ] | % 238
	c8 [ g16 a ] g8 [ a ]| % 239
	bes8 r8 d4 | % 240
	es4 e | % 241
	f8 [ f16 g ] f8 [ es ] | % 242
	d8 [ g16 a ] g8 [ f ] | % 243
	e4 e | % 244
	f4 fis | % 245
	g8 [ g16 a ] g8 [ f ] | % 246
	e8 [ a16 bes ] a8 [ g ] | % 247
	f8 s4. | % 248
	fis8 r8 d8 r8 | % 249
	g8 s4. | % 250
	e8 r8 c8 r8 | % 251
	f8 [ a16 g ] f8 [ es ] | % 252
	d8 [ bes'] c, [ a'] | % 253
	bes,8 [ bes'16 a ] g8 [ f ] | % 254
	e8 [ c'] d, [ b'] | % 255
	c,8 [ c'16 d ] e8 [ d ] | % 256
	a,8 r8 a'8 r8 | % 257
	d,8 r8 c8 r8  | % 258
	b8 r8 s4 | % 259
	s2 | % 260
	s2 | % 261
	e8 s4. | % 262
	e8 s4. | % 263
	e4 r8 d8 | % 264
	cis16 s8. d'8 [ c,] | % 265
	b8 [ d'] c [b,] | % 266
	a16 s8. r8 a8 | % 267
	gis8 r8 a'8 [ a,] | % 268
	d8 r8 r8 f8 | % 269
	f8 [(bes)] bes [ (d) ] | % 270
	e,8 s4. | % 271
	r8 e16 [f] d8 [d] | % 272
	a'8 [f] g [ e ] | % 273
	f8 [d] e [a,] | % 274
	d8 s4. | % 275
	f8 [ a16 g ] f8 [ e ] | % 276
	d4 r8 d8 | % 277
	d8 [ b] c [ d ]  | % 278
	e8 [d] e4 | % 279
	a8 a,16 b ] a8 [ a'] | % 280
	e8 [ c] d [ b ] | % 281
	c8 s4. | % 282
	c8 r8 b8 r8 | % 283
	a8 s4. | % 284
	a8 s4. | % 285
	d16 s8. s4 | % 286
	s2 | % 287
	c8 [ a ] s4 | % 288
	a2 \bar "|." % 289
 
}

melodyThree =  \relative c'' {
	s2 | % 1
	s2 | % 2
	s2 | % 3
	s2 | % 4
	s2 | % 5
	s2 | % 6
	c4 s4 | % 7
	b4 b | % 8
	b4 e8 [ b ] | % 9
	cis4 s8 cis8 | % 10
	a8 [ d16 cis ] d8 [ a ] | % 11
	b4 s4 | % 12
    	<g c>16 s16 s4. | % 13
    	s2 | % 14
    	s2 | % 15
    	s2 | % 16
	e16 s8. s4 | % 17
    	s2 | % 18
    	s2 | % 19
    	s2 | % 20
    	s2 | % 21
    	s2 | % 22
    	s2 | % 23
    	s2 | % 24
    	s2 | % 25
    	s2 | % 26
    	s2 | % 27
    	s2 | % 28
    	s2 | % 29
    	s2 | % 30
    	s2 | % 31
	d'8 s4. | % 32
	s2 | % 33
	c8 s4. | % 34
	cis8 s4. | % 35
	d16 s8. s4 | % 36
	bes8 s4. | % 37
	b8 [ c16 b ] c8 [ c ] | % 38
	b8 s8 s8 d8 | % 39
	<e, cis'>8 r8 <a d>8 r8  | % 40
	<< { a8 s4 a8 } \\
	{ g8 [ g16 f ] g8 [a ] } >> | % 41
	<f a>8 s4 f8 | % 42
	s8 <gis d'>8 <a c>8 s8 | % 43
	s2 | % 44
	s2 | % 45
	s2  | % 46
	e16 s8. s4 | % 47
	s2 | % 48
	s2 | % 49
	s2 | % 50
	s2 | % 51
	s2 | % 52
	s2 | % 53
	s2  | % 54
	b'16 s8. s4 | % 55
	s2 | % 56
	s2 | % 57
	s2 | % 58
	s2 | % 59
	s2 | % 60
	s2 | % 61
	s2 | % 62
	b8 s4 b8 | % 63
	s2 | % 64
	s2 | % 65
	s2 | % 66
	s2 | % 67
	s2 | % 68
	s2 | % 69
	g8 s8 g8 s8 | % 70
	fis8 s8 <e b'>8 [ <e c'>8 ] | % 71
	<e b'>8 s8 a8 s8 | % 72
	s2 | % 73
	s2 | % 74
	s2 | % 75
	s2 | % 76
	s2 | % 77
	s2 | % 78
	s2 | % 79
	s2 | % 80
	c8 s4. | % 81
	g8 s8 g8 s8 | % 82
	<g c>8 s8 b8 s8 | % 83
	c8 s4. | % 84
	c8 [ f16 e ] f8 [ c ] | % 85
	d8 s4. | % 86
	g,8 s4.  | % 87
	s2 | % 88
	s2 | % 89
	s2 | % 90
	s4. <g d'>8  | % 91
	<g e'>8 s8 f'8 s8  | % 92
	c8 s8 c8 s8 | % 93
	s2 | % 94
	c8 s4. | % 95
	s2 | % 96
	a8 s4. | % 97
	s2 | % 98
	<g c>8 s4 <g c >8 | % 99
	<f c'>8 s4. | % 100
	f16 s8. s4 | % 101
	s2 | % 102
	e8  s4.  | % 103
	fis8 s8 gis8 s8 | % 104
	a8 s8 a8 s8 | % 105
	<e a>8 s4.  | % 106
	<d a'>8 s4. | % 107
	d'8 [ e16 (d)] e [ (c) e (b)] | % 108
	<e, c'>8 [ a16 (g)] a16 [ (f) g ( e)] | % 109
	<f b'>8 s4.  | % 110
	s2 | % 111
	s2 | % 112
	s2 | % 113
	s2 | % 114
	s2 | % 115
	s2 | % 116
	s2 | % 117
	s2 | % 118
	s2 | % 119
	s2 | % 120
	s2 | % 121
	s2 | % 122
	s2 | % 123
	s2 | % 124
	s2 | % 125
	s2 | % 126
	s2 | % 127
	s2 | % 128
	s2 | % 129
	s2 | % 130
	s4. c'8 | % 131
	c8 s8 f,8 [ d ] | % 132
	e8 s4. | % 133
	s2 | % 134
	s8 dis'8 e8 s8 | % 135
	s2 | % 136
	s2 | % 137
	s2 | % 138
	s2 | % 139
	s2 | % 140
	s2 | % 141
	s2 | % 142
	s2 | % 143
	a,8 [ c ] b [ d ] | % 144
	<e, c'>8 [ a16 gis] a8 [ e ] | % 145
	fis8 s4 fis8 | % 146
	d8 [ g16 fis ] g8 [ d ]| % 147
	e8 s4. | % 148
	s2 | % 149
	s2 | % 150
	c'8 [ c16 d ] c8 [ b] | % 151
	a8 [ d16 e16 ] d8 [ c8 ] | % 152
	b8 s8 b8 s8 | % 153	
	c8 s8 <e, cis'>8 s8 | % 154
	a8 [ d16 e ] d8 [ c ] | % 155
	b8 [ e16 f ] e8 [ d ] | % 156
	c8 [ d ] e [ e, ] | % 157
	s2 | % 158
	b'8 [ c ] d [ e, ] | % 159
	s2 | % 160
	a8 [ b ] c [ d, ] | % 161  
	s2 | % 162
	s4 g8 s8 | % 163
	<g c>8 [ a ] bes [ cis, ] | % 164
	a'8 [ b8 ] c4 | % 165
	<d, b'>8 s4 g8 | % 166
	g8 s4. | % 167
	s2  | % 168
	fis8 s4. | % 169
	s2 | % 170
	s2 | % 171
	b8  s4. | % 172
	b8 [ c16 ( b) ] a [ (g) fis (e) ] | % 173
	fis8 s4 <fis dis'>8 | % 174
	<e b'>8 s8 e8 s8 | % 175
	a8 [ (fis)] g [ ( e)] | % 176
	s2 | % 177
	s2 | % 178
	s2 | % 179
	s2 | % 180
	s2 | % 181
	s2 | % 182
	s2 | % 183
	s2 | % 184
	s2 | % 185
	s2 | % 186
	s2 | % 187
	s2 | % 188
	s4. b'8 | % 189
	<< { cis8 [ a ] s4 } \\
	{ e8 s4.} >> | % 190
	s2 | % 191
	<< { b'8 [ g ] s4 } \\
	{ d8 s4.} >> | % 192
	s2 | % 193   
	e16 [ (f e) c ] d [ (e d) b ] | % 194
	s2 | % 195
    	s2 | % 196
	s2 | % 197
	s4 g'8 s8 | % 198
	f8 s8 f8 s8 | % 199
	c'8 s4 c8 | % 200
	c8 s4 c8 | % 201
	c8 [ bes16 a ] bes8 [ c ] | % 202
	c8 s4. | % 203
	s2 | % 204
	s2 | % 205
	s2 | % 206
	s2 | % 207
	s2 | % 208
	s2 | % 209
	s2 | % 210
	s2 | % 211
	s2 | % 212
	s2 | % 213
	s2 | % 214
	s2 | % 215
	s2 | % 216
	s2 | % 217
	s2 | % 218
	s2 | % 219
	s2 | % 220
	e,8 s4.  | % 221
	s2 | % 222
	a8 s4 a8 | % 223
	bes8 s4. | % 224
	f8 s4. | % 225
	s2 | % 226
	s2 | % 227
	s2 | % 228
	s2 | % 229
	e8 s8 a8 [ <g bes>8 ] | % 230
	f8 s4.] | % 231
	s2 | % 232
	s2 | % 233
	s2 | % 234
	s2 | % 235
	s2 | % 236
	s2 | % 237
	s2 | % 238
	s2 | % 239
	s2 | % 240
	s2 | % 241
	s2 | % 242
	s2 | % 243
	s2 | % 244
	s2 | % 245
	s2 | % 246
	s2 | % 247
	s2 | % 248
	s2 | % 249
	s2 | % 250
	s4 e8 s8 | % 251
	s2 | % 252
	s2 | % 253
	s2 | % 254
	s2 | % 255
	s2 | % 256
	< e cis'>8 s8 cis'8 s8 | % 257
	a8 s8 a8 s8 | % 258
	gis8 s4. | % 259
	s2 | % 260
	s2 | % 261
	s2 | % 262
	s2 | % 263
	s2 | % 264
	s2 | % 265
	s2 | % 266
	s2 | % 267
	s2 | % 268
	s2 | % 269
	s2 | % 270
	d'8 s8 c8 [ b16 ( a )] | % 271
	b8 s4 d8 | % 272
	c8 s8 cis8 s8 | % 273
	d8 s8  cis8 s8 | % 274
	a8 [ (g)] g [(fis)] | % 275
	s2 | % 276
	s2 | % 277
	s8 <gis d'>8 <a c>8 s8 | % 278
	s2 | % 279
	s2 | % 280
	c8 s8 b8 s8 | % 281
	<e, a>8 s4. | % 282
	<e a>8 s8 gis8 s8 | % 283
	a8 [ f] g8 [e]  | % 284
	<f d'>8 s8 <e cis'>8 s8 | % 285
	a16 s8. s4 | % 286
        s2 | % 287
	s8 <e c'>8 <e b'>8 [ <e d'>]  | % 288
	<e cis'>2 \bar "|." % 289
}

melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key a \minor \time 2/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
