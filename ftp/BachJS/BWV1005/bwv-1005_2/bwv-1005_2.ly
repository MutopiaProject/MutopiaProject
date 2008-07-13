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
        title = "Sonata III BWV 1005"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "2. Fuga"
        mutopiatitle = "BWV 1005"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1005"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
	    comment = "Dedicated to the memory of Cyrano 13.6.2008"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/13-1466"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative c'' {
    s1*4 | % 4
    r2 c2 | % 5
    e4 d8 [ c ] b4 cis | % 6
    d2 a4 b | % 7
    c4 b c d8 [ c ] | % 8
    b4 c8 [ d ] e2 ~ | % 9
    e2 d ~ | % 10
    d4 b e d | % 11
    a'4 g8 [f ] e4 fis | % 12
    g2 d4 e| % 13
    f4 e f g8 [ f ] | % 14
    e4 d e f | % 15
    g4 f g a8 [ g ] | % 16
    f4 g a2 | % 17
    gis2 g2 | % 18
    fis2 f | % 19
    e2 fis2 | % 20
	r4 g8 [ f ] e4 d | % 21
	cis4 a'8 [ g ] a4 cis, | % 22
	d4 f8 [ e8 ] d4 c4 | % 23
    b4 g'8 [ f ] g4 b, | % 24
    c4 d e2 | % 25
    a,2 d2 | % 26
	r8 g,8 [ a b ] c2 | % 27
    d,2 e | % 28
    f4 e f g8 [ f ] | % 29
    e2 fis | % 30
    g2 d' | % 31
    cis2 c | % 32
    b2 bes | % 33
    a2 b| % 34
    e,4 c'8 [ b ] a4 g | % 35
    fis4 d'8 [ c ] d4 fis, | % 36
    g4 bes8 [ a ] g4 f | % 37
    e4 c'8 [ bes ] c4 e, | % 38
	f4 a8 [ g ] f [ g e f ] | % 39
    d8 [ a' d c ] b [ a g f ] | % 40
    e4 c'8 [ b ] a [ c e  g, ] | % 41
    f8 [ a f' e ] d [ c b a ] | % 42
    g8 [ a16 (b c8)  d ] e [ f g bes, ] | % 43
    a8 [ e' a g ] f [ (g16 a) ] d,8 [ (e16 f) ] | % 44
    b,8 [ d e f ] g2 | % 45
	a,8 [ a' g f ] e4 fis | % 46
	d8 [ g f e ] d4 e | % 47
	e4 f8 [ e ] f4 g8 [ f ] | % 48
    e4 s2. | % 49
    e4 r4  d4 r4 | % 50
    d4 c8 [ b ] c4 d8 [ e ] | % 51
    f4 f8 [ e ] f4 g8 [ f ] | % 52
    e4 r4 r2 | % 53
    e4 r4 r4 e4 | % 54
    f4 r4 r2 | % 55
    fis4 r4 r4 fis4 | % 56
    g4 r4 g2 | % 57
    g2 f2 | % 58
    f2 e2 | % 59
    e4 d8 [ e ] f [ g a c, ] | % 60
    b8 [ d ( c b ] a [ g f ) d' ] | % 61
    g8 [ b, c e, ] d [ (c' f) b, ] | % 62
    c8 [ d es f ] g [ a b c ] | % 63
    fis,8 [ es ( d c ] b [ c ) fis, a, ] | % 64
    g8 [ c e g ] c [ e g e ] | % 65
    c8 [ g e c ] g4 b' | % 66
    c8 [ g'16 (f  e8 ) g ] c, [ e g, c ] | % 67
    e,8 [ g c, e ] g, [ e'' d c ] | % 68
    d16 [ (g fis e ] d8) [ g ] b, [ d g, b ] | % 69
    d,8 [ g b, d ] g, [ d'' c b ] | % 70
    c8 [ a'16 (g fis8 ) a ] c, [ fis a, c ] | % 71
    fis,8 [ a d, fis ] a [ c fis a ] | % 72
    g,,8 [ d' fis c' ] b [ g e g ] | % 73
    cis,8 [ e16 (f g8 ) e8 ] bes' [ g cis e ] | % 74
    f, [ a g' cis, ] d [ a bes d ] | % 75
    gis,8 [ b16 (c d8 ) b ] f' [ d gis b ] | % 76
    e,,8 [ c' e gis ] a8 [ c fis, a ] | % 77
    dis,8 [ fis16( g  a8) fis ] dis [ b c dis, ] | % 78
    e8 [ b' dis a' ] g [ (b16 a  g8) e ] | % 79
    cis8 [ (bes16 a g8) e ] cis [ (d16 e) ] a,8 [ (b16 cis) ] | % 80
    d8 [ a' cis g' ] f [ ( a16 g f8) d ] | % 81
    b8 [ (aes16 g  f8) d ] b [ (c16 d) ] g,8 [ (a16 b) ] | % 82
    c8 [ g' b f' ] e [ (g16 f) e8 c ] | % 83
    f8 [ (d16 c b8) d ] gis, [ (a16 b) ] e,8 [ (fis16 gis )] | % 84
    a,8 [ e' gis d' ] c [ a f a ] | % 85
    b,8 [ d gis e' ] d [ b gis b ] | % 86
    c,8 [ e gis f' ] e [ c a c ] | % 87
    d,8 [ a''16 (g  f8 ) e ] d [ bes'16 (a  bes8) d, ] | % 88
    e,8 [ d'16 (e  f8) d ] gis [ d b' d, ] | % 89
    e,8 [ c'16 (d e8) c ] a' [ e c' e, ] | % 90
    e,8 [ b'16 (c d8 ) b ] gis' e d' e, ] | % 91
    e,8 [ a16 (b c8) dis ] fis [ a c dis ] | % 92
    e8 [ b gis e ] e,4 e' | % 93
    f4 e8 [ d ] c4 d4 | % 94
    e2 b4 c4 | % 95
    d4 c4 d4 e8 [ d ] | % 96
    c2 f2 ~ | % 97
    f4 e8 [ f ] g [ e f g ] | % 98
    cis,4 b8 [ a ] a'2 | % 99
	bes4 a8 [ g ] f4 g | % 100
    a2 e4 f4 | % 101
    g4 f g a8 [ g ] | % 102
    f2 bes2 ~ | % 103
    b4 a8 [ g ] a8 [ bes a g ] | % 104
    fis2 g ~ | % 105
    g4 f8 [ e ] f2 | % 106
    e2 a | % 107
	b,4 c d e | % 108
	f4 e f g8 [ f ] | % 109
    e2 e4 d8 [ c]  | % 110
    b4 c  d2 | % 111
    a2 f | % 112
    e2 fis | % 113
    g2 g | % 114
    a4 g8 [ f ] e4 fis | % 115
    g2 d4 e | % 116
    f4 e f g8 [ f ] | % 117
    e2 e4 fis | % 118
    g4 fis g a8 [ g ] | % 119
    f2 f4 g8 [f] | % 120
    e2 e4 f8 [ e ] | % 121
	d2 d' | % 122
	r2 g2 | % 123
	fis2 f | % 124
	e2 fis | % 125
    g2 g | % 126
    g4 f8 [ e ] f4 g8 [ f] | % 127
    e2 e | % 128
    dis2 d | % 129
    cis2 c | % 130
    b2 cis | % 131
    d4 c8 [ b ] a4 b | % 132
    c4 b c d8 [ c ] | % 133
    b2 bes | % 134
    a2 b | % 135
    c2 <d g> | % 136
    a'4 g8 [ f ] e4 fis | % 137
    g2 d4 e | % 138
	f4 e f g8 [ f ] | % 139
    e2 s2 | % 140
    b2 s2 | % 141
    f2 bes2 ~ | % 142
    bes2 a2 ~ | % 143
    a2 d4 e | % 144
    f4 e f g8 [ f ] | % 145
    e4 cis d2 | % 146
    d2 cis | % 147
    d2 s2 | % 148
    r2 g2 | % 149
    b4 a8 [ g ] fis4 g | % 150
    a2 e4 fis | % 151
    g4 fis g a8 [ g ] | % 152
    fis4 g8 [ a ] b2 | % 153
    e,2 a | % 154
    r8 a8 [ g8 fis8 ] <bes, g'>2 | % 155
    <a f'>2 s2 | % 156
    e'4 dis e fis8 [ e ] | % 157
    dis2 <d b'> | % 158
    a'4 g8 [ a ] g4 a | % 159
    b2 fis4 g | % 160
    a4 g a b8 [ a ] | % 161
    g2 g ~ | % 162
    g4 a8 [ g ] fis4 g8 [ e ] | % 163
    b'4. c8 b4 a | % 164
    g2 fis \trill | % 165
    e4 g8 [ f ] e [ g d g ] | % 166
	cis,8 [ bes' g e ] cis [ e a, cis ] | % 167
    d,8 [ a' cis g' ] f [ e d c ] | % 168
    b8 [ aes f d ] b [ d g, f' ] | % 169
    c8 [ e a, g' ] d [ f b, a' ] | % 170
    e8 [ g c, bes' ] f [ a d, c' ] | % 171
    g8 [ b d g ] d [ b g e ] | % 172
    cis8 [ a' g f ] e [ c fis c ] | % 173
    b8 [ g' f e ] d [ bes e bes ] | % 174
    a8 [ c d e ] f [ a, b f' ] | % 175
    c8 [ e fis gis ] a [ cis, dis a' ] | % 176
    e8 [ g a b ] c [ e, fis c' ] | % 177
    g8 [ b cis dis ] e [ gis, ais e' ] | % 178
    b8 [ d e fis ] g [ b, cis g' ] | % 179
    d8 [ fis a d ] a [ fis d b ] | % 180
    gis8 [ e' d c ] b [ g cis g ] | % 181
    fis8 [ d' c b ] a [ f b f ] | % 182
    e8 [ g a b ] c [ e, fis c' ] | % 183
    g8 [ b e, d' ] a [ c fis, e' ] | % 184
    b8 [ d g, f' ] c [ e a, g' ] | % 185
    d8 [ fis a, d ] fis, [ a d, c' ] | % 186
    s2 g'4 a | % 187
    b4 a8 [ g ] fis4 g | % 188
    a2 e4 fis | % 189
    g4 fis g a8 [ g ] | % 190
    fis4 g a a | % 191
    g4 a b b | % 192
    a4 b c c | % 193
    b4 c d d | % 194
    e4 d8 [ c ] b4 cis | % 195
    d4 d a b | % 196
    c4 b c d8 [ c ] | % 197
    b4 a b b | % 198
    b4 b a a | % 199
    a4 a g g | % 200
    g4 g fis fis | % 201
	g2 d,2^\markup { al riverso } | % 202
	s1*3 | % 205
	r2 g2 | % 206
    fis4 g8 [ a ] b4 a | % 207
    g2 c4 b | % 208
    a4 b8 [ a ] g4 a | % 209
    b2 g' | % 210
	e4 f8 [ g ] a4 g | %211
    f2 bes4 a | % 212
    g4 a8 [ g ]  f4 g | % 213
    a2 s2 | % 214
    r2 g2 | % 215
    aes2 a | % 216
    bes2 r4 b4 | % 217
    c4 bes a g | % 218
    fis4 e8 [ d ] g2 | % 219
    g4 a8 [ bes ] a4 g  | % 220
    f2 f | % 221
    <b, e>2 e | % 222
	fis2 s2 | % 223
	r2 <b, g'>2 | % 224
	g'2 f4 e8 [ d ] | % 225
	gis2 r4 g4 | % 226
	g4 f8 [ e ] f2 | % 227
	f4 e8 [ d ] e4 f8 [ e ] | % 228
	d4 e8 [ f ] g4 f | % 229
    e2 a4 g | % 230
    fis4 g8 [ f ] e4 fis | % 231
    g2 g4 f | % 232
	e4 f8 [ e ] d4 e | % 233
	f4 g8 [ f ] e4 f8 [ e ] | % 234
	d4 e8 [ d ] c2 ~ | % 235
	c4 d8 [ c ] b4 a8 [ b ] | % 236
	c4 d8 [ es ] f4 es | % 237
    d2 g4 f | % 238
    e f8 [ e ] d4 e | % 239
    f2 f4 f | % 240
    f4 r4 e4 r4 | % 241
	es4 d8 [ c ] a'4 g | % 242
    fis4 g8 [ fis ] e [ g fis a ] | % 243
    g4 d e c | % 244
    c4. d8 b4. \trill c8 | % 245
    c4 c,8 [ d ] e [ c f d ] | % 246
    g8 [ e c e ] g [ bes a g ] | % 247
    a8 [ f d e ] fis [ d g e ] | % 248
    a8 [ fis d fis ] a [ c b a ] | % 249
    b8 [ d g, a ] b [ g c a ] | % 250
    d8 [ b g b ] d [ f e d ] | % 251
    e8 [ c g c ] e [ g fis e ] | % 252
    fis8 [ c a c ] fis [ a g fis ] | % 253
    g8 [ d b d ] g [ b a g ] | % 254
    a8 [ fis c fis ] a [ c b a ] | % 255
    b8 [ g d g ] b [ d g, b ] | % 256
    c8 [ a g f ] e [ c' fis, c' ] | % 257
    b8 [ g f e ] d [ bes' e, bes' ] | % 258
    f8 [ bes a g ] a [ f b f ] | % 259
    e8 [ g a b ] c [ a c g ] | % 260
    f8 [ a b c ] d [ b d a ] | % 261
    g8 [ b c d ] e [ c e bes ] | % 262
    a8 [ c d e ] f [ d f c ] | % 263
    b8 [ d e f ] g [ e g d ] | % 264
    c8 [ a f' d ] b [ g e' c ] | % 265
    a8 [ f d' b ] g [ e c' a ] | % 266
    f8 [ d' c b ] a [ f b f ] | % 267
    e8 [ c' b a ] g [ es a es ] | % 268
    d8 [ bes' a g ] fis [ d g d ] | % 269
    c8 [ a' g f ] e [ c fis c ] | % 270
    b8 [ g' fis e ] d [ c b a ] | % 271
    b8 [ g d' fis, ] g [ d b' g ] | % 272
    d'8 [ b g' d ] b [ g d b ] | % 273
    g8 [ a' g f ] c'4 d | % 274
    e4 d8 [ c ] b4 c | % 275
    d2 a4 b  | % 276
    c4 b c d8 [ c ] | % 277
    b4 c d d | % 278
    c4 d e e | % 279
    d4 e f f | % 280
    e4 fis g g | % 281
    a4 g8 [ f ] e4 fis | % 282
    g4 g d e | % 283
    f4 e f g8 [ f ] | % 284
    e4 d e e | % 285
    e4 e d d | % 286
    d4 d c e8 [ d ] | % 287
    r4 g4 g fis | % 288
    g2 g,2 | % 289
    a4 g8 [ f ] e4 f | % 290
    g2 d4 e | % 291
    f4 e f g8 [ f ] | % 292
    e4 d c' d | % 293
    e4 d8 [ c ] b4 c | % 294
    d2 a4 b | % 295
    c4 b c d8 [ c ] | % 296
    b2 e2 ~ | % 297
    e2 d ~ | % 298
    d4 b g'2  | % 299
	a4 g8 [ f ] e4 fis | % 300	
    g2 d4 e | % 301
    f4 e f g8 [ f ] | % 302
	e4 d e f | % 303
    g4 f g a8 [ g ] | % 304
    f4 g a2 | % 305
    gis2 g | % 306
	fis g | % 307
    e2 fis | % 308
	r4 g8 [ f ] e4 d | % 309
    cis4  a'8 [ g ] a4 cis, | % 310
	d4 f8 [ e ] d4 c | % 311
 	b4 g'8 [ f ] g4 b,| % 312	
	c4 d e2 | % 313
    a,2 d | % 314
    r8 g,8 [ a b ] c2 | % 315
    d,2 e | % 316
    f4 e f g8 [ f ] | % 317
    e2 fis | % 318
    g2 d' | % 319
    cis2 c | % 320
	b2 bes | % 321
    a2 b | % 322
    e,4 c'8 [ b8 ] a4 g4 | % 323
    fis4 d'8 [ c8 ] d4 fis,4 | % 324
    g4 bes8 [ a8 ] g4 f | % 325
    e4 c'8 [ bes8 ] c4 e,4 | % 326
    f4 a8 [ g ] f [ g e f ] | % 327
    d8 [ a' d c ] b [ a g f ] | % 328
    e4 c'8 [ b ] a [ c e g, ] | % 329
    f8 [ a f' e ] d8 [ c b a ] | % 330
    g8 [ a16 ( b16 c8 )  d ] e [ f g bes, ] | % 331
    a8 [ e' a g ] f [ ( g16 a)  ] d,8 [ (e16 f) ] | % 332
    b,8 [ d e f ] g2 | % 333
    a,8 [ a' g f ] e4 fis | % 334
    g,8 [ g' f e ] d4 e | % 335
    e4 f8 [ e ] f4 g8 [ f ] | % 336
	e4 g,8 [ f ] g4 a8 [ g ] | % 337
    e'4 f,8 [ e ] d'4 g,8 [ f ] | % 338
	d'4 c8 [ b ] c4 d8 [ e ]  | % 339
    f4 f8 [ e ] f4 g8 [ f ] | % 340
    e4 c,8 [ d ] e [ g f a ]  | % 341
    e'4 r4 r4 e4 | % 342
    f4 r4 r2 | % 343
    fis4 r4 r4 fis4  | % 344
    g4 r4 g2 | % 345
    g2 f2 | % 346
    f2 e2 | % 347
	e4 d8 [ e ] f [ g a c, ] | % 348
    b8 [ d ( c b ] a [ g f) d' ] | % 349
    g8 [ b, c e, ] d8 [ (c' f) b, ] | % 350
    c8 [ d es f ] g8 [ a b c ] | % 351
    fis,8 [ es ( d c ] b [ c)  fis, a, ] | % 352
    g8 [ c e g ] c [ e g e ] | % 353
    c8 [ g e c ] g4 b' | % 354
    g'2^\fermata s2 \bar "|." % 355
     }
	
melodyTwo =  \relative g' {
    r2^\markup {Allabreve } g2 | % 1
    a4 g8 [ f ] e4 f | % 2
    g2 d4 e | % 3
    f4 e f g8 [ f ] | % 4
    e4 f8 [ g ] a2 | % 5
    gis2 g | % 6
    fis2 f | % 7
    e4 d e fis | % 8
    g4 f g e | % 9
    f4 e f d | % 10
    e2 e | % 11
    a,2 a | % 12
    g2 g | % 13
    d'1 | % 14
    a2 a' | % 15
    e2 a, | % 16
    d2 f | % 17
    e2 r2 | % 18
    d2 r2 | % 19
    a'2 d, | % 20
    g2 r2 | % 21
    g4 r4 r4 g4 | % 22
    f4 r4 r2 | % 23
    f4 r4 r4 f4 | % 24
	r2 c2 | % 25
    d4 c8 [ b ] a4 b | % 26
    c2 g4 a | % 27
    bes4 a bes c8 [ bes ] | % 28
    a2 b | % 29
    c4 b c d8 [ c ] | % 30
    b4 a bes2 | % 31
    a2 r2 | % 32
    g2 r2 | % 33
    d'2 g,2 | % 34
    c4 r4 r2 | % 35
    c4 r4 r4 c4 | % 36
    bes4 r4 r2 | % 37
    bes4 r4 r4 bes4 | % 38
	a4 s2. | % 39
    b4 s2. | % 40
    c4 s2. | % 41
    d4 s2. | % 42
    e4 s2. | % 43
    f4 s2. | % 44
    f8 r8 r4 e4 d | % 45
    cis8 r8 r4 c4 r4 | % 46
    b4 r4  bes4 r4 | % 47
    a4 r4 r2 | % 48
    g4 s2. | % 49
    f'4 f8 [ e ] f4 g8 [ f ] | % 50
	e4 r4 a4 r4  | % 51
    d,4 r4 g4 r4 | % 52
   	c4 c,8 [ d ] e8 [ g f a ] | % 53
    g4 bes,8 [ a8 ] bes4 g'4 | % 54
    a,4 d8 [ e ] f [ g f g ] | % 55
    a4 c,8 [ b ] c4 a' | % 56
    b4 b, e d | % 57
    cis4 a d c | % 58
    b4 g c bes | % 59
    a4 s2. | % 60
	g8 s8 s2. | % 61
    s1 | % 62
	aes4 s2. | % 63
    s1 | % 64
    s1 | % 65
    s2. f'4 | % 66
	c8 s4. s2 | % 67
    s1*26 | % 93
    r2 a'2 | % 94
    c4 b8 [ a ] gis4 a | % 95
    b2 fis4 gis | % 96
	a4 g a bes8 [ a ]  | % 97
	g4 s2. | % 98
	g2 f4 e8 [ d ] | % 99
    g4 a d,2 | % 100
	f4 e8 [ d ] cis4 d | % 101
	e2 e | % 102
	d2 g | % 103
	e2 es | % 104
	d2 s2 | % 105
	d2 d | % 106
	e4 d e fis | % 107
	g2 r4 g4 | % 108
	a4 g a b | % 109
    c4 b c, d | % 110
	e4 d8 [ c ] b4 c | % 111
    d2 a4 b | % 112
    c4 b c d8 [ c ] | % 113
    b4 c8 [ d ] e4 d | % 114
    cis2 c | % 115
    b2 bes | % 116
    a2 d2 ~ | % 117
    d4 c8 [ b ] c2 | % 118
    b2 e2 ~ | % 119
    e4 d8 [ c ] d2 ~ | % 120
    d4 c8 [ b ] c2 ~ | % 121
    c4 b8 [ a ] b4 g | % 122
    c4 d4 e2 | % 123
	d2 r2 | % 124
	a'2 d,2 | % 125
	g2 e2 | % 126
    cis2 d | % 127
    d4 c8 [ b ] c4 d8 [ c ] | % 128
    b2 b2 | % 129
    a2 a | % 130
    g2 a | % 131
    d2 d | % 132
    a2 d | % 133
    g,2 g | % 134
    d'2 g, | % 135
    c2 bes | % 136
    a4 r4 a2 | % 137
    g2 r2 | % 138
    r2 a'4 b | % 139
    s2 e,4 f | % 140
    s2 b,4 a4 | % 141
    d4 c d e8 [ d ] | % 142
    c4 bes c d8 [ c ] | % 143
    bes2 bes | % 144
	a2 g | % 145
    g4 a bes2 | % 146
    g2 a | % 147
	d2 d' | % 148
	e4 d8 [ c ] b4 c | % 149
	d2 a4 b | % 150
	c4 b c d8 [ c ] | % 151
	b2 e ~ | % 152
	e2 g,  | % 153
	a4 g8 [ f ] e4 fis | % 154
    g2 g, | % 155
    d'2 <g, b'> | % 156
    c2 c | % 157
    b2 b | % 158
    a2 c | % 159
    g2 b | % 160
    a2 b | % 161
	e2 e4 d | % 162
	c2 s2 | % 163
    g2 r4 a4 | % 164
    b2 dis | % 165
	e4 s2. | % 166
	s1*20 | % 186
    b'8 [ e d c ] b [ d, c' d, ]| % 187
    d'8 [ d, c' b ] a [ d, b' d, ] | % 188
	c'8 [ d, b' d, ] c' [ d, d' c ]| % 189
    b8 [ d, a' d, ] b' [ d, ] cis'4 | % 190
    d8 [ d, d' d, ] c' [ d, d' d, ]| % 191
    e'8 [ d, e' d, ] d' [ d, e' d, ] | % 192
    fis'8 [ d, fis' d, ] e' [ d, fis' d, ] | % 193
    g'8 [ d, g' d, ] fis' [ d, f' d, ] | % 194
    e'8 [ d, ] fis'4  g8 [ d, g' d, ] | % 195
    fis'8 [ d, fis' d, ] f' [ d, f' d, ] | % 196
    e'8 [ d, e' d, ] es' [ d, ] e'4 | % 197
    d8 [ d, c' d, ] d' [ d, e' d ] | % 198
    cis8 [ d, b' d, ] c' [ d, d' c ] | % 199
    b8 [ d, a' d, ] bes' [ d, c' bes ] | % 200
    a8 [ d, b' d, ] c' [ d, d' c ] | % 201
    g,2 s2 | % 202
	s1*4 | % 206
	d'2 dis | % 207
	e2 e | % 208
	f2 r4 fis4 | % 209
    g4 f e d | % 210
    c2 a | % 211
    d2 g, | % 212
	c2 r4 c4 | % 213
    f2 fis | % 214
    g2 <c, g'> | % 215
    f2 d | % 216
    g2 s2 | % 217
    c,2 es  | % 218
    d2 r2 | % 219
    e2 r4 a, | % 220
    d2 d | % 221
    d2 c4 b8 [ a ] | % 222
    dis2 r4  dis4 | % 223
    e4 s2. | % 224
	cis4 b8 [ a ] d2 | % 225
    d4 e8 [ f ] e4 d  | % 226
    cis2 d | % 227
    b2 c | % 228
	f4 e g,2 | % 229
	c2 s2 | % 230
	a'2 d4 c | % 231
	b4 c8 [ b ] a4 b | % 232
	c2 r4 bes4 | % 233
	a4 bes8 [ a  ] g4 a8 [ g ] | % 234
	f4 g8 [ f ] e4 f8 [ e ] | % 235
	d2 g, | % 236
	aes2 a | % 237
    bes2 r4 b4 | % 238
    c2 r4 cis4 | % 239
    <d f>2 d4 c | % 240
    b4 c8 [ d ] c4 bes | % 241
    a2 r2 | % 242
    c2 r2 | % 243
    r4b4 c a | % 244
    g2 g | % 245
    s1*28 | % 273
	s2 e'8 [ g, f' g, ] | % 274
    g'8 [ g, f' e ] d [ g, e' g, ] | % 275
    f'8 [ g, e' g, ] f' [ g, g' g, ] | % 276
    e'8 [ g, d' g, ] e' [ g,] fis'4 | % 277
	g8 [ g, g' g, ] f' [ g, g' g, ] | % 278
    a'8 [ g, g' g, ] g' [ g, a' g, ] | % 279
    b'8 [ g, bes' g, ] a' [ g, b' g, ] | % 280
	c'8 [ g, c' g, ] b' [ g, bes' g, ] | % 281
    a'8 [ g,] b'4 c8 [ g, c' g, ] | % 282
    b'8 [ g, b' g, ] bes' [ g, bes' g, ] | % 283
	a'8 [ g, a' g, ] aes' [ g, ] aes'4 | % 284
    g8 [ g, f' g, ] g' [ g, a' g ] | % 285
    f8 [ g, e' g, ] f' [ g, g' f ] | % 286
    e8 [ g, d' g, ] e' [ g, g' f ] | % 287
	e8 [ g, d' g, ] f' [ g, es' g, ] | % 288
    g2 g' | % 289
	r2 c,2 | % 290
	b2 bes | % 291
	a4 g a b | % 292
    c4 b a2 | % 293
    g2 g4 a | % 294
    b4 c d2 | % 295
    a2 a | % 296
    g2 s2 | % 297
    f'4 e f d | % 298
    e2 e | % 299
    a,2 a | % 300
    g2 g | % 301
    d'1 | % 302
    a2 a' | % 303
    e2 a, | % 304
    d2 f | % 305
    e2 r2  | % 306
    d2 r2 | % 307
    a'2 d, | % 308
    g2 r2 | % 309
    g4 r4 r4 g4 | % 310
    f4 r4 r2| % 311
    f4 r4 r4 f4 | % 312
    r2 c2 | % 313
	d4 c8 [ b ] a4 b | % 314
    c2 g4 a | % 315
    bes4 a bes c8 [ bes ] | % 316
    a2 b | % 317
	c4 b c d8 [ c ] | % 318
    b4 a bes2 | % 319
    a2 s2 | % 320
    g2 s2 | % 321
    d'2 g, | % 322
	c4 r4 r2  | % 323
    c4 r4 r4 c4 | % 324
    bes4 r4 r2 | % 325
	bes4 r4 r4 bes4 | % 326
    a4 s2. | % 327
    b8 s4. s2 | % 328
    c4 s2. | % 329
	d8 s4. s2 | % 330
    e8 s4. s2  | % 331
    f8 s4. s2  | % 332
	f8 r8 r4 e4 d4 | % 333
    cis8 s4. c4 s4 | % 334
    b8 s4. bes4 s4 | % 335
    a4 s2. | % 336
    g4 s2. | % 337
    f'4 s2. | % 338
    e4 s4 a4 s4 | % 339
    d,4 s4 g4 s4 | % 340
    c4 s2. | % 341
    g4 bes,8 [ a ] bes4 g' | % 342
    a,4 d8 [ e ] f [ g f g ] | % 343
    a4 c,8 [ b ] c4 a' | % 344
    s4 b,4 e d | % 345
    cis4 a d c | % 346
    b4 g c bes | % 347
    a4 s2. | % 348
    g8 s4. s2 | % 349
	s1 | % 350
	aes8 s4. s2 | % 351
	s1 | % 352
	s1 | % 353
	s2. f'4 | % 354
    c2 s2 \bar "|." % 0
    }



melodyThree =  \relative g'' {
    s1*10 | % 10
    r2 g2 | % 11
    <e, cis'>2 <a c>2 | % 12
    <d, b'>2 bes'2 | % 13
    a4 g a b | % 14
    <e, c'>2 c' | % 15
    b2 <e, cis'> | % 16
	d'2 c4 d | % 17
    e4 d8 [ c ] b4 cis | % 18
    d2 a4 b | % 19
    c4 b c d8 [ c ] | % 20
    b2 r2 | % 21
    s1*3 | % 24
    e,4 f g2 | % 25
    fis2 f | % 26
    e2 es2 | % 27
    s1*3 | % 30
    s2 g | % 31
    a4 g8 [ f ] e4 fis | % 32
	g2 d4 e | % 33
    f4 e f g8 [ f ] | % 34
    s1*10 | % 44
    s2 c'4 bes | % 45
    e,8 s4. < e a >4 s4 | % 46
    g4 s4 g4 s4 | % 47
    <f c' >4 s2. | % 48
    <g c>4 g8 [ f ] g4 a8 [ g ] | % 49
    a4 s2. | % 50
    s1 | % 51
    c4 s4 b4 s4 | % 52
    s1 | % 53
    c4 s2 c4 | % 54
    <a c>4 s2. | % 55
	d4 s2 c4 | % 56
    s2 b2 | % 57
    <e, a>2 a | % 58
    <g d'>2 <g c>2 | % 59
    <f c'>4 s2. | % 60
    f8 s4. s2 | % 61
	s1 | % 62
    es8 s4. s2 | % 63
    s1*3 | % 66
    e8 s4. s2 | % 67
    s1*31 | % 98
    s2 d'2 | % 99
    d4 s4 bes2 | % 100
    a2 <e a>4 a4 | % 101
    cis4 d8 [ cis ] b4 cis | % 102
    d4 c d es8 [ d ] | % 103
    cis2 c | % 104
    c4 bes8 [ a ] bes [ d c bes ] | % 105
    a2 a4 b4 | % 106
    c4 b c d8 [ c ] | % 107
    s1*2 | % 109
    s2 <e, a >4 s4 | % 110
    gis4 s4 g2 | % 111
	fis2 s2 | % 112
    s1*9 | % 121
    s2 g2 | % 122
    <g e'>4 d'8 [ c ] b4 c | % 123
    d2 a4 b | % 124
    c4 b c d8 [ c ] | % 125
    b4 a b c8 [ b ] | % 126
    <e, a>2 a | % 127
    <gis b>2 <e a>2   | % 128
	fis4 e fis gis  | % 129
	a2 e4 fis | % 130
	g4 fis g a8 [ g ] | % 131
	fis2 f | % 132
	e2 fis | % 133
	g4 f8 [ e ] d4 e | % 134
	f4 e f g8 [ f ]  | % 135
    e2 d4 e | % 136
    <f d'>4 <g d'> <a c >2 | % 137
	<d, b'>2 s2 | % 138
	s1 | % 139
	c'4 b c d8 [ c ] | % 140
	g4 f g a8 [ g ] | % 141
	s1 | % 142
	s1 | % 143
    s2 g2  | % 144
    <a d >2  <d, bes'>2 | % 145
    <g bes>4 g4 f g8 [ f ] | % 146
    e4 f g a8 [ g ] | % 147
    fis2 s2 | % 148
    s1*4 | % 152
    s2 d'2 | % 153
    cis2 c | % 154
    b2 d,4 e | % 155
    f4 e f g8 [ f ] | % 156
    <e b'>2 <e a>2 | % 157
    fis4 e fis gis  | % 158
    <a c>2 <e c'>2 | % 159
    <e b'>2 <fis dis'>2 | % 160
    <fis cis'>2 <fis dis'>2 | % 161
    e'4 d  c b | % 162
    <e, a>2 r2 | % 163
    <e b'>2 s4 <e c'>4 | % 164
	<e b'>2 a | % 165
    s1*36 | % 201
    <d, b'>2 s2 | % 202
    b4 c8 [ d ] e4 d | % 203
    c2 f4 e | % 204
    d4 e8 [ d ] c4 d | % 205
    e4 d8 [ c ] b4 c | % 206
    s1*3 | % 209
    s2 b'2 | % 210
    <e, c'>2 <e cis'> | % 211
    d'2 <g, d'>2 | % 212
    <g es'> s4 <g e'>4 | % 213
	f'4 e d c | % 214
	b4 c8 [ d ] e4 d | % 215
	c2 f4 e | % 216
	d4 e8 [ d ] c4 d | % 217
    <g, e'>2 c  | % 218
    c2 bes4 a8 [ g ] | % 219
	cis2 r4 <e, cis'>4 | % 220
    d'4 c bes a | % 221
    gis4 fis8 [ e ] <e a>2 | % 222
    a4 b8 [ c ] b4 a | % 223
    g4 f e d | % 224
    <e a>2 a | % 225
    b2 s4 bes4 | % 226
    <e, a>2 a4 b8 [ c ] | % 227
    <g d'>2 <g c>2 | % 228
    s2 <d b'>2 | % 229
    g4 a8 [ b ] c4 b | % 230
    s1*5 | % 235
    s2 g2 | % 236
    g2 <f c'>2 | % 237
    f2 s4 <g d'>4 | % 238
    <g c>2 s4 <g bes>4 | % 239
    a4 b8 [ c ] b4 <d, a'> | % 240
    <g d'>4 r4 <g c> r4 | % 241
    fis2 s2 | % 242
    <d a'>2 s2 | % 243
    r4 g4 <g c> fis | % 244
    g2 d | % 245
    s1*42 | % 287
    c'4 b c a | % 288
    <d, b'>2 s2 | % 289
    s1*3 | % 292
    s2 e4 fis | % 293
    g2 g4 g | % 294
    fis2 f | % 295
    e4 d e fis | % 296
    g4 f g e | % 297
    s1 | % 298
    s2 e'4 d | % 299
    <e, cis'>2 <a c>2 | % 300
    <d, b'>2 bes'2 | % 301
    a4 g a b | % 302
    <e, c'>2 c'2 | % 303
    b2 <e, cis'>2 | % 304
    d'2 c4 d | % 305
    e4 d8 [ c ] b4 cis | % 306
    d2 a4 b | % 307
    c4 b c d8 [ c ] | % 308
    b2 s2 | % 309
    s1*3 | % 312
    e,4 f g2 | % 313
    fis2 f | % 314
    e2 es | % 315
    s1*3 | % 318
    s2 g  | % 319
    a4 g8 [ f ] e4 fis | % 320
    g2 d4 e | % 321
    f4 e f g8 [ f ] | % 322
    s1*10 | % 332
    s2 c'4 bes | % 333
    e,8 s4. <e a>4 s4 | % 334
    d'8 s4. g,4 s4 | % 335
    <f c'>4 s2. | % 336
    <g c>4 s2. | % 337
    a4 s4 f4 s4 | % 338
    s1 | % 339
    c'4 s4 b4 s4 | % 340
    s1 | % 341
    c4 s2 c4 | % 342
    <a c>4 s2. | % 343
    d4 s2 c4 | % 344
	b4 s4 b2 | % 345
	<e, a>2 a2 | % 346
    <g d'>2 <g c>2 | % 347
    <f c'>4 s2. | % 348
    f8 s8 s2. | % 349
    s1 | % 350
	es8 s8 s2. | % 351
    s1*3 | % 354
    <e c'>2 s2 \bar "|." % 0
    }


melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key c \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
