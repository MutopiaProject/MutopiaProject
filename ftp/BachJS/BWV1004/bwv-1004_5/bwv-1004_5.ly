\version "2.18.2"

\paper {
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
        title = "Partita II BWV 1004"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "5. Chaconne"
        mutopiatitle = "BWV 1004 Chaconne"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1004"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

        license = "Creative Commons Attribution-ShareAlike 3.0"
        footer = "Mutopia-2019/05/30-1426"
        copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2019 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}


% The score definition

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

melodyOne =  \relative a' {
	\voiceOne
	a4. a8 | % 1
	e'4 e4. e8 | % 2
	f4 d4. c8 | % 3
	bes4 a g16 [( f e f ) ] | % 4
	g16 [ ( e )  f ( d ) ] a'4. a8 | % 5
	e'4 e4. e8 | % 6
	f4 d4. d8 | % 7
	bes'4 a8. [ g32 f ] g8. [ e16 ] | % 8
	f8. s16 s2 | % 9 - Var 02
	e8 s8 e8 s8 s4 | % 10
	f8 s8 d8. [ f16]  e8. [ d16] | % 11
	d8 s8 cis8 r8 r8. a'16 | % 12
	f8 s8  s2 | % 13 - Var 03
	e8 r8 e8 r8 s4 | % 14
	e8 r8  d8. [ f16 ] e8. [ cis16 ] | % 15
	d8. [ e16 ] d4 ( cis8.)  [ d16 ] | % 16
	d8. [ e16 ] f8. [ g32 a ] bes8. [ f16 ] | % 17
	e8. [ bes'16 ] a8. [ g16 ] a8. [ fis16 ]  | % 18
	g8. [ f16 ] e8. [ d32 cis ] d8. [ e16 ] | % 19
	f8. [ g16 ] e8. [ f16 ] g8. [ e16 ] | % 20
	f8. [ d32 e ] f8. [ g32 a  ] bes8. [ f16 ] | % 21
	e8. [ bes'16 ] a8. [ g16 ] a8. [ fis16 ] | % 22
	g8. [ f16 ] e8. [ d32 cis ] d8. [ e16 ] | % 23
	f8. [ g16 ] d8. [ cis32 b ] cis8. [ g16 ] | % 24
	f8 [ f' e d cis d ] | % 25 - Var 06
	g,8 [ a16 ( bes ) ] cis,8 [ bes' a g ] | % 26
	f8 [ g16 ( a ) ] bes,8 [ d g d'16 ( cis ) ] | % 27
	d8 [ f,8 ] e16 [ f g bes ] a [ g f e ] | % 28
	f16 [ ( a d f ) ] f [ ( e g f ] e [ d cis d ) ] | % 29
	g,16 [ bes fis g ] cis, [( e g )  bes ] a [ g e' g, ] | % 30
	f16 [ cis d a ] bes [ ( d g ) a ] bes [ es cis d ] | % 31
	gis,16 [(  b d ) f ] e [ g cis, d ] a, [ ( e' d' ) cis ] | % 32
	d8 [ f bes a gis d, ] | % 33
	cis8 [ e' a g fis c, ] | % 34
	b8 [ d' g f e bes, ] | % 35
	a16 [ f'' e d ] cis8 [ a8 e'8 g,8 ] | % 36
	f16  [ d f a ] d [ ( f bes ) a ] gis [ b gis e ] | % 37
	cis16 [ ( e a ) g ] fis [ a fis c ] a [ fis d c ] | % 38
	b16 [ ( d g ) fis ] g [ es' ( d cis ) ] bes' [( a gis ) a ] | % 39
	f16 [ e d c ] bes [ ( a gis ) a ] cis, [ g' f e ] | % 40
	f16 [ d e f ] g [ a b cis ] d [ f, e d ] | % 41
	a16 [ ( e' d' ) cis ] d, [(  fis a ) c ] c [ bes c a ] | % 42
	bes16 [ g f es ] d [ c bes a ] g [ ( g' es' ) d ] | % 43
	cis16 [ e a, g ] f [ d' e, d ] a [ ( e' d' ) cis ] | % 44
	g'16 [ (e f cis ) ] d [( c bes a ] g [ f e d ] ) | % 45
	cis16 [ bes' a g ] fis [ d a' d, ] c [ bes c a ] | % 46
	bes16 [ ( g a bes ] c [ d e fis ] g [ a bes a ] ) | % 47
	gis16 [ a e f ] g [ cis,( d ) gis, ] ( a ) [ f' e cis ] | % 48
	d16 [ d' ( a g ] f [ e d c ] bes ) [ d' g, f ] | % 49
	e16 [ c' ( g f ] e [ d c bes ] a ) [ c' f, es ] | % 50
	d16 [ bes' ( f es ] d [ c bes a ] g ) [ bes' e, d] | % 51
	cis16 [ a cis e ] a [ e a cis ] e [ g, a e ] | % 52
	f16 [ d f a ] d [ a d f ] bes, [ g' ( a bes ) ] | % 53
	e,16 [ c, e g ] c [ g c e ] a, [ f' ( g a ) ] | % 54
	d,16 [ bes, d f ] bes [ f bes d ] g, [ e' ( f g ) ] | % 55
	cis,16 [ a cis e ] a [ e a cis ] e [ g, ( f e ) ] | % 56
	f8 s4 f8 g8 s8 | % 57
	e8 s4 e8 f8 s8 | % 58
	d8 s4 d8 e8 s8 | % 59
	s4. a8 a16 [ ( g ) a (e) ] | % 60
	f8 s8 d8 s8 s4 | % 61
	e8 s8 c8 s8 s4 | % 62
	d8 s8 bes8 s8 g,16 [ e' b' g' ]   | % 63
	a,,16 [ e' cis' g' ] a,, [ f' d' f ] a,, [ g' cis e ] | % 64
	d16 [ a32 ( g f16 e ) ] d [ c bes a ] bes [ d'32 ( c bes a g f ) ] | % 65
	e16 [ g32 (f e16 d ) ] c [ bes a g ] a [ c'32 ( bes a g f es )] | % 66
	d16 [ f32 (es d16 c ) ] bes [ d32 ( c bes16 a )] g [ bes'32 (a g f e d ) ] | % 67
	cis32 [( b a b cis d e f )] g [ (a bes a g f e d )] cis16 [ (e'32 d cis b a g )] | % 68
	f16 [ d32 ( e f16 ) a ] f [ d f a ] bes32 [ (c d e f g a bes ] | % 69 - Var 17
	e,16 ) [ c,32 ( d e16 ) g ] e [ c e g ] a32 [ ( bes c d e f g a ] | % 70
	d,16 ) [ bes,32 ( c d16 ) f ] d [ bes d f ] g32 [ ( a bes c d e f g ) ] | % 71
	cis,32 [ bes' ( a g f e d c ) ] bes [ ( a g f e d cis b ) ] a [ ( b cis d e f g e ) ] | % 72
	f32 [ ( d e f g a b cis )] d [ ( b cis d e f g a ) ] bes16 [ d,, c \trill bes ] | % 73
	c32 [ d e fis g a bes c ] d [ a bes c d e fis g ] a16 [ c,, bes^\markup { (tr) } a ] | % 74
	bes32 [ d e fis g a bes c ] d [ g, a bes c d e fis ] g [ a bes a g f e d ] | % 75
	cis32 [ a' g f e d cis b ] a [ b cis d e f g a ] bes [ g e cis a g f e ] | % 76
	d16  [ a' d e ] f [ d bes a ] gis [ b d f ] | % 77
	c,16[ e a c ] e [ c a g ] fis [ a c es ] | % 78
	bes,16 [ d g bes ] d [ bes g f ] e [ g bes cis ] | % 79
	a,16 [ d f a ] d [ a f d ] a [ e' g cis ] | % 80
	d,16 [ (bes'') bes (gis) ] gis [ (f) f (d) ] d [ b gis e ] | % 81
	cis16 [ (a'') a (fis) ] fis [ (es) es (c) ] c [ a fis d ] | % 82
   	b16 [ (g'') g (es) ] es [ (cis) cis (bes) ] bes [ g e cis ] | % 83
	a16 [ (cis) cis (e) ] e [ (g32 f) g16 (bes32 a) ] bes16 [ cis32 (d e16) g, ] | % 84
	f32 [ (a b cis) ] d [ (cis b a) ] f' [ (e d cis)] d [(e f g )] a [ (g f e)] bes' [(a g f) ] | % 85
	c32 [ (e fis gis) ] a [ (gis fis e) ] c' [ (b a gis) ] a [ (b c d) ] e [ (d c b) ] f' [ (e d cis) ] | % 86
	d32 [ (e f e)] d [(f e d) ] f [ (e d f)] e [(d f e )] d [ (g f e d c bes a )] | % 87
	g32 [ (a bes a)] g [(bes a g) ] bes [ (a g bes)] a [(g bes a) ] g [ (f e d cis b a g )] | % 88
	f32 [ ( d ) a'' ( d,,) ] f32 [ ( d ) a'' ( d,,) ] a''2^\markup { arpeggio }  | % 89
	g2 g4 | % 90
	f2 f4 | % 91
	e8  [ f8 ] e8 [ d8 ] d8 [ cis8 ] | % 92
	d2. | % 93
	es2. | % 94
	d2. | % 95
	d2 cis4 | % 96
	d4 a4 bes4 | % 97
	c4 bes4 a4 | % 98
	bes4 bes'4 a4 | % 99
	g8 [ f8 ] e2 | % 100
	f2.  | % 101
	fis2. | % 102
	g4 f e | % 103
	f4 cis2 | % 104
	d4 f f | % 105
	f4 e es | % 106
	es4 bes' e, | % 107
	e4 a g | % 108
	f4 fis2 | % 109
	g4 gis2 | % 110
	a4 c b | % 111
	d4 d cis | % 112
	d2. | % 113
	d4 cis2 | % 114
	c4 b2 | % 115
	bes4 a g | % 116
	fis4 f f | % 117
	e4 es es | % 118
	d4 d d |% 119
	d4 d cis  | % 120
	d,8 [ f'32 ( e d e ] d [ c d c bes c bes a ] bes [ c d e f16 ) d, ] | % 121
	c8 [ e'32 ( d c d ] c [ bes c bes a bes a g ] a [ bes c d es16 ) c, ] | % 122
	bes8 [ d'32 (c bes c ] bes [ a bes a g a g f ] g [ a bes c d16 ) bes, ] | % 123
	a32 [ ( a' b cis d16 ) a, ] g32 [( a' b cis d16 ) g,, ] a32 [ ( d' cis b cis16 ) g ] | % 124
	f16 [ ( e d cis) ] d [( f g a ) ] bes [ a bes g ] | % 125
	e'4 e4. e8 | % 126
	f4 d4. d8 | % 127
	bes'4 a g | % 128
	g4 fis4 s4 | % 129
	f4 e s4| % 130
	es4 d s4  | % 131
	s4 cis4. d8 | % 132
	\key d \major
	d4 fis,4. g8 | % 133
	e4 fis4. ( g16 [ a ] ) | % 134
	d,4 e4. ( fis16 [ g ] ) | % 135
    fis8 [ e ] e4. a8 | % 136
	fis4 b8 [ a g fis ] | %  137
	e4 fis16 ( [ g a g ] fis 8 ) [ e ] | % 138
	d4 e8 [ g16 fis ] e8 [ d ] | % 139
	cis'8 [ d ] e,4. a8 | % 140
	fis8 [ e d e fis gis ] | % 141
	a8 [ b cis d b cis ] | % 142
	d8 [ fis e d cis b ] | % 143
	a8 [ b cis d e cis8 ] | % 144
	d4 fis4. fis8 | % 145
	e4 a4. g8 | % 146
	fis8 [ e ] g [ fis ] b [ a ]  | % 147
	g8 [ fis ] e2 | % 148
	d16 [ cis b a ] gis ( [ b d fis ] ) e8 [ e ] |% 149
	e8 r8 r4 fis,8 [ e' ] | % 150
	d8 r8 r4 e,8 [ d' ]  | % 151
	cis16 [ b a b ] cis [ ( e g b )] a [ g fis e ] | % 152
	fis16 [ a fis d ] a [ ( d a fis )] d [ fis e d ] | % 153
	cis16 [ a'' e cis ] a [ cis a e] cis [ e d cis ] | % 154
	b16 [ gis'' d b ] gis [ b gis e ] b [ d cis b ] | % 155
	a16 [ b cis d ] e [ cis a cis ] e [ g fis e ] | % 156
	fis16 [ d a d ] fis [ d a' fis ]
	d' [ a fis' d ] | % 157
	a'16 [ e cis e ] a [ e cis' a ] e' [ cis fis cis ] | % 158
	d16 [ fis d b ] fis [ b d, fis ] b, [ d cis b ] | % 159
	cis16 [ e cis a ]
    e [ a cis, e ] a, [ cis e g ] | % 160
	fis16 [ d a'' a ] a [ fis d a ] fis [ d a d ] | % 161
	e16 [ cis a'' a ] a [ e cis a ] e [ cis a cis ] | % 162
	d16 [ b a'' a ] a [ fis d b ] d [ gis b gis ] | % 163
	a16 [ e a a ] a [ cis, e e ] e [ a, cis g ] | % 164
	fis16 [ d a' a ] a [ fis d fis ] a [ d fis b,, ] | % 165
	cis16 [ d a' a ] a [ e cis e ] a [ cis e a,, ] | % 166
	b16 [ d a' a ] a [ d, b d ] gis [ b d e, ] | % 167
	a,16 [ e' a a ] a [ e a cis ] e [ cis a g ] | % 168
	fis16 [ a, a a ] a16 a''16 [ a fis ] fis [ d d fis ]  | % 169
	e16 a,,16 [ a a ] a a''16 [a e ] e [ cis cis e ]  | % 170
	d16 a,16 [ a a ] a b''16 [ b gis ] gis [ e e gis ] | % 171
	a16 a,, [ a a ] a  a''16 [ a a ] a [ g g g ] | % 172
	fis16 r16 r8 s2 | % 173
	d16 r16 r8 r16 d'16 [ d d ] d [ c c c ] | % 174
	b16 r16 r8 r16 b16 [ b b ] cis16 [ d d d ]  | % 175
	g,16 [ g g g ]   fis16 [ fis fis fis ] e [ e e e ] | % 176
	fis4 fis4. fis8 | % 177
	fis8 ( [ e8 ])  e4. e8 | % 178
	e8 ([ d8 ]) c4. c8 | % 179
	c8 [ ( b8 )] r8 b'8 [ a g ] | % 180
	fis4 fis4. fis8 | % 181
	e4 e4. e8 | % 182
	a8 [fis ] b [ a g fis ] | % 183
	e8 [ d ] cis4. d8 | % 184
	d4 a4. a8 | % 185
    a4 a4. a8 | % 186
    b4 b4. b8 | % 187
	cis8 [ d  ] d4. cis8 | % 188
	d4  fis4. fis8 | % 189
	fis4 fis4. fis8 | % 190
	fis4 e4. e8 | % 191
	e8 [ d ]  d4. cis8 | % 192
	d4 fis4. fis8 | % 193
	g4 a4. a8 | % 194
	b4 b4. b8 | % 195
	cis8 [ d ] d4 cis | % 196
	d4 d4. d8 | % 197
	cis4 c4. c8 | % 198
	b4 e,4. e8 | % 199
	e8 [ fis ] g8 [ b a g ] | % 200
	fis4^\markup { arpeggio } fis fis | % 201
	fis4 fis fis  | % 202
	e4 a s4 | % 203
	b4 e,8 [ fis ] g4 | % 204
	g4 fis fis | % 205
	fis4 e e | % 206
    e4 e e | % 207
	d8 [b' ] s2 | % 208
    \key d \minor d,4 bes4. bes8 | % 209
	bes8. [ e16 ] bes [ ( g a e ) ] c8 [ a' ] | % 210
	a8. [ d16 ] a [ ( fis g d ) ] bes8 [ g'8 ] | % 211
	g8. [ e'16 ] cis [ ( a bes g ) ] cis,8 [ a'8 ] | % 212
	f8. [ d16 ] f [ a d cis ] d [ ( e f ) a, ] | % 213
	f'8. [ d,16 ] g [ bes es d ] es [ ( c f, a,) ] | % 214
	es''8. [ cis16 ] d [ a bes fis ] g [ ( d es g ) ] | % 215
	cis8 [ d8 ] d8. [ b16 ] cis [( e g ) a, ] | % 216
	d,16 [ ( a' cis g' ) ] f [ d ( cis d ) ] d, [ d' ( cis d ) ] | % 217
	e,16 [ ( g cis a' ) ] g [ d ( cis d ) ] e, [ d' ( cis d ) ] | % 218
	f,16 [ ( a cis bes') ] a [ d, (cis d ) ] f, [ d' ( cis d ) ] | % 219
	g,16 [ ( bes d bes' ) ] e, [ d ( cis d ) ] a [ d cis e ] | % 220
	f16 [ d a ( g ] f  ) [ a d, ( c ] b ) [ g' d' f ] | % 221
	e16 [ c g ( f ] e ) [ g c, ( bes ] a ) [ f' c' es ] | % 222
	d16 [ bes f ( es ] d ) [ f bes, ( a ] g ) [ cis e bes' ] | % 223
	a16 [( f d ) bes' ] g [ e cis e ] a, [ g' f e ] | % 224
	d16 [ a' b cis ] d [ f g a ] bes16 [ g,32 ( f e f g16 ) ] | % 225
	c,16 [ g' a bes ] c [ e f g ] a [ f,32 ( e d e f16 ) ] | % 226
	bes,16 [ d''32 ( c bes c d16 ) ] g, [ bes32 ( a g a bes16 ) ] e,16 [ g32 ( f e f g16 ) ] | % 227
	cis,16 [ e32 ( d cis d e cis ) ] g16 [ bes32 ( a g a bes g ) ] e [ ( d cis d e f g e ) ] | % 228
	f16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 229
	e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 230
	d,16 [ a' ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 231
	e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 232
	f16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 233
	e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 234
	d,16 [ a' ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 235
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] | % 236
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  | % 237
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  | % 238
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  | % 239
 	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  | % 240
	f16 [ ( a ) ]
	\tuplet 3/2 { d,16 [ ( f a ) ] }
	\tuplet 3/2 { f16 [ ( a d ) ] }
	\tuplet 3/2 { a16 [ ( d f ) ] }
	\tuplet 3/2 { bes,16 [ ( d g ) ] }
	\tuplet 3/2 { g,16 [ ( d' bes' ) ] } | % 241
	\tuplet 3/2 { e,,16 [ ( c' bes' ) ] }
	\tuplet 3/2 { c,,16 [ ( e g ) ] }
	\tuplet 3/2 { e16 [ ( g c ) ] }
	\tuplet 3/2 { g16 [ ( c e ) ] }
	\tuplet 3/2 { a,16 [ ( c f ) ] }
	\tuplet 3/2 { f,16 [ ( c' a' ) ] }  | % 242
	\tuplet 3/2 { d,,16 [ ( bes' a' ) ] }
	\tuplet 3/2 { bes,,16 [ ( d f ) ] }
	\tuplet 3/2 { d16 [ ( f bes ) ] }
	\tuplet 3/2 { f16 [ ( bes d ) ] }
	\tuplet 3/2 { g,16 [ ( bes es ) ] }
	\tuplet 3/2 { es,16 [ ( bes' g' ) ] } | % 243
	\tuplet 3/2 { e,16 [ ( cis' bes' ) ] }
	\tuplet 3/2 { f,16 [ ( d' a' ) ] }
	\tuplet 3/2 { g,16 [ ( e' g ) ] }
	\tuplet 3/2 { gis,16 [ ( d' f ) ] }
	\tuplet 3/2 { a,16 [ ( d e ) ] }
	\tuplet 3/2 { a,16 [ ( cis e ) ] } | % 244
	\tuplet 3/2 { d,16 [ a'' (g  ] }
	\tuplet 3/2 { f16 ) [  f ( e  ] }
	\tuplet 3/2 { d16 ) [  d (c  ] }
	\tuplet 3/2 { bes16 ) [  bes (a  ] }
	\tuplet 3/2 { g16 ) [  bes ( c  ] }
	\tuplet 3/2 { d16 [ e f ) ] }| % 245
	\tuplet 3/2 { c,16 [ g''( f  ] }
	\tuplet 3/2 { e16 ) [  e (d  ] }
	\tuplet 3/2 { c16 ) [ c ( bes ] }
	\tuplet 3/2 { a16 ) [ a ( g  ] }
	\tuplet 3/2 { f16 ) [  a (bes  ] }
	\tuplet 3/2 { c16 [  d es ) ] } | % 246
	\tuplet 3/2 { bes,16 [ f'' (es  ] }
	\tuplet 3/2 { d16 ) [  d (c  ] }
	\tuplet 3/2 { bes16 ) [  bes ( a  ] }
	\tuplet 3/2 { g16 ) [  g ( f  ] }
	\tuplet 3/2 { e16 ) [  e ( d  ] }
	\tuplet 3/2 { cis16 ) [  cis ( b  ] } | % 247
	a16 ) [ ( b32 cis d e f g ] a [ b cis d e f g f ] e [ d cis b a g f e ]  | % 248
    d8 ) r8 a'4. a8 | % 249
	e'4 e4. e8 | % 250
	f4 d4. c8 | % 251
	bes4 a g16 [ ( f e f ) ] | % 252
	g16 [ ( e ) f ( d ) ] bes'4 a | % 253
	d4 c bes | % 254
	cis,16 [ ( e g bes ] a [ g e' g, ])  f4 | % 255
	s8 e8 e4. d8 | % 256
	d2.\fermata \bar "|." % 257
    }


melodyTwo =  \relative f' {
	\voiceThree
	f2 | % 1
	bes4 a2 | % 2
	a4 s2 | % 3
	g4 f4 s4 | % 4
	s4 f2 | % 5
	bes4 a2 | % 6
	a4 s2 | % 7
	d4 cis8. s16 s4 | % 8
	d8. s16 s2| % 9
	bes8 s8 a8 s8 s4 | % 10
	a8 s8 s2 | % 11
	e8. [ d16 ] e8. [ g16 ] f8. [ e16 ] | % 12
	d'8 s8 s2 | % 13
	bes8 s8 a8 s8 s4 | % 14
	a8 s8 s2 | % 15
	f8. [ g16 ] e2 | % 16
  	d8 s8 s2 | % 17
    s2. | % 18
	s2. | % 19
	s2. | % 20
	s2. | % 21
	s2. | % 22
	s2 s8 s16 d16 | % 23
    d4 e s4 | % 24
	s2. | % 25
	s2. | % 26
	s2. | % 27
	s2. | % 28
	s2. | % 29
	s2. | % 30
	s2. | % 31
	s2. | % 32
	s2. | % 33
	s2. | % 34
	s2. | % 35
	s2. | % 36
	s2. | % 37
	s2. | % 38
	s2. | % 39
	s2. | % 40
	s2. | % 41
	s2. | % 42
	s2. | % 43
	s2. | % 44
	s2. | % 45
	s2. | % 46
	s2. | % 47
	s2. | % 48
	s2. | % 49
	s2. | % 50
	s2. | % 51
	s2. | % 52
	s2. | % 53
	s2. | % 54
	s2. | % 55
	s2. | % 56
	s2. | % 57
	s2. | % 58
	s2. | % 59
	a8 [ d ] d16 [ ( cis ) d ( b )] cis8 s8 | % 60
	s2. | % 61
	s2. | % 62
	s2. | % 63
	s2. | % 64
	s2. | % 65
	s2. | % 66
	s2. | % 67
	s2. | % 68
	s2. | % 69
	s2. | % 70
	s2. | % 71
	s2. | % 72
	s2. | % 73
	s2. | % 74
	s2. | % 75
	s2. | % 76
	s2. | % 77
	s2. | % 78
	s2. | % 79
	s2. | % 80
	s2. | % 81
	s2. | % 82
	s2. | % 83
	s2. | % 84
	s2. | % 85
	s2. | % 86
	s2. | % 87
	s2. | % 88
	s4 f,2 | % 89
 	e2 cis'4 | % 90
	d,2 a'4 | % 91
	bes8 [ a g f  e d ] | % 92
	f2. | % 93
	fis2. | % 94
	g4 f e | % 95
	f4 e g | % 96
	f2. | % 97
	fis2. | % 98
	g4 cis d | % 99
	d4 d cis | % 100
	d4 a bes | % 101
	c4 bes a | % 102
	bes4 a a | % 103
	a4 e2 | % 104
	f4 a c | % 105
	bes2 s4 | % 106
	s4 d4 d | % 107
	d4 cis2 | % 108
	a4 d c  | % 109
	bes4 b d | % 110
	c4 es d | % 111
	f4 e2 | % 112
	f2. | % 113
	e2. | % 114
	d2. | % 115
	cis4 d cis | % 116
	d4 c d  | % 117
	c4 s2 | % 118
	f,4 g f | % 119
	e4 e2 | % 120
	s2. | % 121
	s2. | % 122
	s2. | % 123
	s2. | % 124
	s2. | % 125
	bes'4 a2 | % 126
	a4 f2 | % 127
	d'4 d cis | % 128
	d4 d s4 | % 129
	d4 c s4 | % 130
	f,4 f s4 | % 131
	s4  e2 | % 132
	\key d \major
	s2.| % 133
	s4 cis4 s4 | % 134
	s2. | % 135
	s2. | % 136
	s4 fis4 s4 | % 137
	s2. | % 138
	s2. | % 139
	g8 [ fis ] s2| % 140
	s2. | % 141
	e4 e4. g8 | % 142
	fis4 b4. g8 | % 143
	fis8 [ d ] e [ fis ] g [ e ] | % 144
	fis8 [ d ] d'4. d8 | % 145
	cis8 s8 s2 | % 146
	s2 d8 [ b ] | % 147
	cis8 [ d ] d4 cis | % 148
	s2 s8 b8 | % 149
	cis8 s2 cis8 | % 150
	fis,8 s2 e8 | % 151
	e16 s16 s8 s2 | % 152
	s2. | % 153
	s2. | % 154
	s2. | % 155
	s2. | % 156
	s2. | % 157
	s2. | % 158
	s2. | % 159
	s2. | % 160
	s2. | % 161
	s2. | % 162
	s2. | % 163
	s2. | % 164
	s2. | % 165
	s2. | % 166
	s2. | % 167
	s2. | % 168
	s2. | % 169
	s2. | % 170
	s2. | % 171
	s2. | % 172
	d'16  d, [ d d ] d [ a' a a ] b  [ b cis cis ]  | % 173
	fis,16 d [ d d ] d s16 s8 s4 | % 174
	g'16 d,16 [ d d ] d s16 s8 s4 | % 175
	s4 e'16 [ d d d ] d [ cis cis cis ] | % 176
	d4 d4. d8 | % 177
	s2. | % 178
	s2. | % 179
	s4 cis8 [ a b cis ] | % 180
	d4 d4. d8 | % 181
	d4 cis4. cis8 | % 182
	c8 [ d ] d [ c b a ] | % 183
	g8 [ fis ] e2 | % 184
	fis4 fis4. fis8 | % 185
	fis4 fis4. fis8 | % 186
	g4 g4. g8 | % 187
	g8 [ fis ] e [ d ] e4  | % 188
	s4 d'4. d8 | % 189
	a4 a4. a8 | % 190
	d4 a4. a8 | % 191
	a4 s2 | % 192
	s4 d4. d8 | % 193
	d4 d4. d8 | % 194
	d4 e4. e8 | % 195
	e8  [ fis ] e2 | % 196
	fis4 fis4. fis8 | % 197
	e4 fis4. fis8 | % 198
	g8 [ d ] d4. d8 | % 199
	d4 cis4. cis8 | % 200
	s4 a4 a | % 201
	b4 b b | % 202
	b4 cis cis | % 203
	d4 d cis | % 204
	d4 a8 [ b8 ] c4 | % 205
	b4 b8 [ cis ] d4 | % 206
	d4 cis cis | % 207
	s8 d8 cis4. d8 | % 208
	\key d \minor s4 f,2 | % 209
    e8. s16 s4 s8 e8 | % 210
	d8. s16 s4 s8 bes8 | % 211
	s4 s4 s8 e8 | % 212
	s2. | % 213
	bes'8. s16 s2 | % 214
	f8. s16 s2 | % 215
	g8 [ f ] e8. s16 s4| % 216
	s2.| % 217
	s2.| % 218
	s2.| % 219
	s2.| % 220
	s2.| % 221
    s2. | % 222
	s2. | % 223
	s2. | % 224
	s2. | % 225
	s2. | % 226
	s2. | % 227
	s2. | % 228
    s2. | % 229
	s2. | % 230
	s2. | % 231
	s2. | % 232
	s2. | % 233
	s2. | % 234
	s2. | % 235
    s2. | % 236
	s2. | % 237
	s2. | % 238
	s2. | % 239
	s2. | % 240
	s2. | % 241
	s2. | % 242
 	s2. | % 243
	s2. | % 244
	s2. | % 245
	s2. | % 246
	s2. | % 247
	s2. | % 248
    s4 f2 | % 249
    bes4 a2 | % 250
    a4 f2 | % 251
    g4 f s4 | % 252
    s4 f4 fis | % 253
    g4 fis g | % 254
   	s2. | % 255
    s2. | % 256
    s2. | % 257
  }

melodyThree =  \relative d' {
	\voiceFive
	s2 | % 1
	g4 g2 | % 2
	f4 f2 | % 3
	s2. | % 4
	s2. | % 5
	g4 g2  | % 6
	f4 f2 | % 7
	e4 e8. s16 s4 | % 8
	s2.| % 9
	g8. [ f16 ] g8. [ bes16 ] a8. [ g16 ] | % 10
	f8. [ e16 ] f8. [ a16] g8. [ f16]  | % 11
	s2 s8 s16 cis'16 | % 12
	d,8. [ e16 ] f8. [g32 a ] bes8. [ a16 ] | % 13
	g8. [ f16 ] g8. [ bes16 ] a8. [ g16 ] | % 14
	f8. [ e16 ] f8. [ a16 ] g8. [ e16 ] | % 15
	s2. | % 16
	s2. | % 17
	s2. | % 18
	s2. | % 19
	s2. | % 20
	s2. | % 21
	s2. | % 22
	s2. | % 23
	s2. | % 24
	s2. | % 25
	s2. | % 26
	s2. | % 27
	s2. | % 28
	s2. | % 29
	s2. | % 30
	s2. | % 31
	s2. | % 32
	s2. | % 33
	s2. | % 34
	s2. | % 35
	s2. | % 36
	s2. | % 37
	s2. | % 38
	s2. | % 39
	s2. | % 40
	s2. | % 41
	s2. | % 42
	s2. | % 43
	s2. | % 44
	s2. | % 45
	s2. | % 46
	s2. | % 47
	s2. | % 48
	s2. | % 49
	s2. | % 50
	s2. | % 51
	s2. | % 52
	s2. | % 53
	s2. | % 54
	s2. | % 55
	s2. | % 56
	s2. | % 57
	s2. | % 58
	s2. | % 59
	s4 e8 s8 s4 | % 60
	s2. | % 61
	s2. | % 62
	s2. | % 63
	s2. | % 64
	s2. | % 65
	s2. | % 66
	s2. | % 67
	s2. | % 68
	s2. | % 69
	s2. | % 70
	s2. | % 71
	s2. | % 72
	s2. | % 73
	s2. | % 74
	s2. | % 75
	s2. | % 76
	s2. | % 77
	s2. | % 78
	s2. | % 79
	s2. | % 80
	s2. | % 81
	s2. | % 82
	s2. | % 83
	s2. | % 84
	s2. | % 85
	s2. | % 86
	s2. | % 87
	s2. | % 88
	s2. | % 89
	s2. | % 90
	s2. | % 91
	s2. | % 92
	s2. | % 93
	s2. | % 94
	s2. | % 95
	s2. | % 96
	s2. | % 97
	s2. | % 98
	s2. | % 99
	s2. | % 100
	s2. | % 101
	s2. | % 102
	s2 g4 | % 103
	f4 s2 | % 104
	s4 d a' | % 105
	g2 f4 | % 106
	f2 g4 | % 107
	a4 e2 | % 108
	d4 a'4 s4 | % 109
	s2. | % 110
	s2. | % 111
	s2. | % 112
	s2. | % 113
	s2. | % 114
	s2. | % 115
	s2. | % 116
	s4 a4 g | % 117
	g4 g f | % 118
	s2. | % 119
	s2. | % 120
	s2. | % 121
	s2. | % 122
	s2. | % 123
	s2. | % 124
	s2. | % 125
	g4 g2 | % 126
	f4 s2 | % 127
	g4 f e | % 128
	a4 a s4 | % 129
	g4 g s4 | % 130
	s2. | % 131
	s2. | % 132
	\key d \major
	s2. | % 133
   	s2. | % 134
	s2. | % 135
	s2. | % 136
	s2. | % 137
	s2. | % 138
	s2. | % 139
	s2. | % 140
	s2. | % 141
	s2. | % 142
	s4 g4. s8 | % 143
	s2. | % 144
	s2. | % 145
	s2. | % 146
	s2. | % 147
	s2. | % 148
	s2 s8 gis8  | % 149
	a8 s2 fis8 | % 150
	s2. | % 151
	s2. | % 152
	s2. | % 153
	s2. | % 154
	s2. | % 155
	s2. | % 156
	s2. | % 157
	s2. | % 158
	s2. | % 159
	s2. | % 160
	s2. | % 161
	s2. | % 162
	s2. | % 163
	s2. | % 164
	s2. | % 165
	s2. | % 166
	s2. | % 167
	s2. | % 168
	s2. | % 169
	s2. | % 170
	s2. | % 171
	s2. | % 172
	s2. | % 173
	s2. | % 174
	s2. | % 175
	s2. | % 176
	s2. | % 177
	s2. | % 178
	s2. | % 179
	s2. | % 180
	s2. | % 181
	s2. | % 182
	s4 g8 s8 s4 | % 183
	s2. | % 184
	s2. | % 185
	s2. | % 186
	s2. | % 187
	s2. | % 188
	s4 a4. a8  | % 189
	d,4 d4. d8  | % 190
	g4 g4. g8  | % 191
	fis4 e8 [ fis ] g4  | % 192
	s2. | % 193
	s2. | % 194
	s2. | % 195
	s2. | % 196
	s2. | % 197
	s2. | % 198
	s2. | % 199
	s4 e4. e8 | % 200
	r4 d4 d | % 201
	d4 d d | % 202
	d4 e e | % 203
	e4 e e | % 204
	d4 d d | % 205
	d4 e e | % 206
	e4 e8 [ fis ] g4 | % 207
	fis8 [ e ] e2 | % 208
	\key d \minor s2. | % 209
	s2. | % 210
	s2. | % 211
	s2. | % 212
	s2. | % 213
	d8. s16 s2 | % 214
	s2. | % 215
	s2. | % 216
	s2. | % 217
	s2. | % 218
	s2. | % 219
	s2. | % 220
	s2. | % 221
	s2. | % 222
	s2. | % 223
	s2. | % 224
	s2. | % 225
	s2. | % 226
    s2. | % 227
    s2. | % 228
	s2. | % 229
	s2. | % 230
	s2. | % 231
	s2. | % 232
	s2. | % 233
	s2. | % 234
	s2. | % 235
	s2. | % 236
	s2. | % 237
	s2. | % 238
	s2. | % 239
	s2. | % 240
	s2. | % 241
	s2. | % 242
	s2. | % 243
	s2. | % 244
	s2. | % 245
	s2. | % 246
	s2. | % 247
	s2. | % 248
	s2. | % 249
	g4 g2 | % 250
	f4 s2 | % 251
	s2. | % 252
	s2. | % 253
	s2. | % 254
	s2. | % 255
	s2. | % 256
	s2. | % 257
   }

melodyFour =  \relative f' {
	\voiceTwo
	d2 | % 1
	d4 cis2 | % 2
	d4 bes2 | % 3
	g4 a cis | % 4
	d8 s8 d2 | % 5
	d4 cis2 | % 6
	d4 bes2 | % 7
	g4 a8. s16 s4  | % 8
	d8. [ e16 ] f8. [ g32 a ] bes8. [ a16] | % 9
	d,8 r8 cis8 r8 s4 | % 10
	d8 r8 bes8 r8 r8. g16 | % 11
	a8 r8 r4 r8. a16 | % 12
	d8 s8 s2 | % 13
	d8 r8 cis8 r8 s4 | % 14
	d8 r8 bes8 r8 r8. bes16 | % 15
	a8. [ g16 ] a2 | % 16
	d8 s8 s4 r8. d'16  | % 17
	cis4 c r8. c16 | % 18
	b4 bes4 r8. bes16 | % 19
	a8. [ b16 ] cis8. [ d16 ] e8. [ cis16 ] | % 20
   	d8. s2 d16 | % 21
	cis4 c r8 r16 c16 | % 22
	b4 bes r8 r16 gis16  | % 23
	a4 a r8 r16 a,16 | % 24
	d8 s8 s2 | % 25
	d8 s8 s2 | % 26
	d8 s8 s2 | % 27
	s8 g,8 a16 s8. s4 | % 28
	d16 s16 s8 s2 | % 29
	s2. | % 30
	s2. | % 31
	s2. | % 32
	s2. | % 33
	s2. | % 34
	s2. | % 35
	s2. | % 36
	s2. | % 37
	s2. | % 38
	s2. | % 39
	s2. | % 40
	s2. | % 41
	s2. | % 42
	s2. | % 43
	s2. | % 44
	s2. | % 45
	s2. | % 46
	s2. | % 47
	s2. | % 48
	s2. | % 49
	s2. | % 50
	s2. | % 51
	s2. | % 52
	s2. | % 53
	s2. | % 54
	s2. | % 55
	s2. | % 56
	d'8 [ a8 ] d,8 [ d'8 ] bes16 [ ( a bes ) g ] | % 57
	c8 [ g8 ] c,8 [ c'8 ] a16 [ ( g a ) f ] | % 58
	bes8 [ f8 ] bes,8 [ bes'8 ] g16 [ ( f g) e ]  | % 59
	f16 [( e ) f ( d ) ] a8 s8 s4 | % 60
	d'16 [ ( cis d ) a ] f [( e f ) d ] bes [ g' d' bes' ] | % 61
	c,16 [( b c ) g ] e [ ( d e ) c ] a [ f' c' a' ]  | % 62
	f,16 [ (es) f ( d ) ] d [( c ) d ( bes ) ] s4 | % 63
	s2. | % 64
	d16 s16 s8 s2 | % 65
	c16 s16 s8 s2  | % 66
	bes16 s16 s8 s2  | % 67
	s2. | % 68
	s2. | % 69
	s2. | % 70
	s2. | % 71
	s2. | % 72
	s2. | % 73
	s2. | % 74
	s2. | % 75
	s2. | % 76
	s2. | % 77
	s2. | % 78
	s2. | % 79
	s2. | % 80
	s2. | % 81
	s2. | % 82
	s2. | % 83
	s2. | % 84
	s2. | % 85
	s2. | % 86
	s2. | % 87
	s2. | % 88
	s4 d2 | % 89
	d2 e4 | % 90
	d2 d4 | % 91
	g,2 a4 | % 92
	d4 a bes | % 93
	c4 bes a | % 94
	bes4 a g | % 95
	a2. | % 96
	d2. | % 97
	d2. | % 98
	d4 e f | % 99
	g4 a2 | % 100
	d,2. | % 101
	d2. | % 102
	d2 cis4 | % 103
	d4 a2 | % 104
	d4 d d | % 105
	g,2 a4 | % 106
	bes2 bes4 | % 107
	a4 a2 | % 108
	d4 d2 | % 109
	d4 d e | % 110
	f4 fis g | % 111
	gis4 a2  | % 112
	d,4 bes' a | % 113
	gis4 a g | % 114
	fis4 g f | % 115
	e4 f e | % 116
	d a b | % 117
	c4 g a | % 118
	bes4 bes a | % 119
	gis4 a2 | % 120
	s2. | % 121
	s2. | % 122
	s2. | % 123
	s2. | % 124
	s2. | % 125
	d4 cis2  | % 126
	d4 bes2 | % 127
	g4 a a | % 128
	d4 d c8 [ f' ]  | % 129
	b,,4 c bes8 [ es' ] | % 130
	a,,4 bes a8 [ d' ] | % 131
	gis,,8 [ d'' ] a,2 | % 132
	\key d \major d4 d2 | % 133
	cis4 a2 | % 134
	b4 g2| % 135
	a4 cis 2 | % 136
	d4 d4. d8 | % 137
	cis8 [ b ] a4. a8 | % 138
	b8 [ a ] g4. g8 | % 139
	a4 a2 | % 140
	d4 d4. d8| % 141
	cis4 a4. a8 | % 142
	b4 g4. g8 | % 143
	a4 a4. a8 | % 144
	d8 s8 d8 [ e fis g ] | % 145
	a8 [ b cis a b cis ] | % 146
	d8 [ cis ] b [a ] g [ fis ] | % 147
	e8 [ d ] a'2 | % 148
	d,8 r8 r4 r8 d8 | % 149
	cis16 [ d cis b ] a [ ( cis e g ) ] r8 ais,8 | % 150
	b16 [ cis d b ] g [ ( b d fis ) ] r8 gis,8  | % 151
	a16 s16 s8 s2 ] | % 152
	s2. | % 153
	s2. | % 154
	s2. | % 155
	s2. | % 156
	s2. | % 157
	s2. | % 158
	s2. | % 159
	s2. | % 160
	s2. | % 161
	s2. | % 162
	s2. | % 163
	s2. | % 164
	s8 a'16 [ a ] a s16 s8 s4 | % 165
	s8 a16 [ a ] a s16 s8 s4  | % 166
	s8 a16 [ a ] a s16 s8 s4  | % 167
	s8 a16 [ a ] a s16 s8 s4 | % 168
	s4 s16 r16 r16 d16 d [ a a d ] | % 169
	cis16  s4 r16 r16 cis16 cis [ a a cis ]  | % 170
	gis16 s4 r16 r16 b16 b [ d d d ]| % 171
	cis16 s4 a16 [ a a ] b [ b cis cis ]  | % 172
	r16  d, [ d d ] d [ a' a a ] a  [ g g g ] | % 173
	r16  d16 [ d d ] d  d' [ d d ] e [ e fis fis ] | % 174
	s16 d,16 [ d d ] d g'  [ g g ] g [ fis fis fis ] | % 175
	fis [ e e e ] s16 fis,16 [ fis fis ] g [ a a a ] | % 176
	d,4 s2 | % 177
	d'4 d8 [ ( cis b ) ais ] | % 178
	b4 b8 [ a g fis ] | % 179
	g4 r8 g8 fis e | % 180
	d8 [ fis ] b [ a g fis ] | % 181
	g8 [ e ] a [ g fis e ] | % 182
	fis8 d g,4 r4 | % 183
	r4 a2 | % 184
	a4 d4.d8 | % 185
	c4 c2 | % 186
	b4 e2 | % 187
	a,4 s2 | % 188
	d4 d4. d8 | % 189
	c4 c4. c8 | % 190
	b4 cis4. cis8 | % 191
	d4 a s4  | % 192
	fis'8 e d4. d8 | % 193
	e4 fis4. fis8  | % 194
	g4 gis4. gis8 | % 195
	a4 a2 | % 196
	d,4 d4. d8 | % 197
	a'4 d,4. d8 | % 198
	g4 gis4. gis8 | % 199
	a4 a,4. a8 | % 200
	d4 d cis | % 201
	b4 b a | % 202
	g4 g g | % 203
	gis4 a a | % 204
	d4 d d | % 205
	g,4 g gis  | % 206
	a4 a ais | % 207
	b8 g a2 | % 208
	\key d \minor
	d4 d2| % 209
	c4 s4 s8 c8 | % 210
	bes8. s16 s4 s8 s8 | % 211
	a4 s4 s8 cis8 | % 212
	d8. s16 s2 | % 213
	g,8. s16 s2 | % 214
	bes8. s16 s2 | % 215
	a8 [ g ] a8. s16 s4 | % 216
	s2. | % 217
	s2. | % 218
	s2. | % 219
	s2. | % 220
	s2. | % 221
	s2. | % 222
	s2. | % 223
	s2. | % 224
	s2. | % 225
    s2. | % 226
    s2. | % 227
	s2. | % 228
	d16 [ s16 a'16 ] s16 bes16 [ s16 a16 ] s16 g16 [ s16 f ] s16  | % 229
	c16 [ s16 bes'16 ] s16 a16 [ s16 g16 ] s16 f16 [ s16 e ] s16 | % 230
	bes16 [ s16 a'16 ] s16 g16 [ s16 f16 ] s16 e16 [ s16 d ] s16  | % 231
	a16 [ s16 f'16 ] s16 g16 [ s16 bes16 ] s16 a16 [ s16 g ] s16  | % 232
	d16 [ s16 a'16 ] s16 gis16 [ s16 g16 ] s16 fis16 [ s16 f ] s16  | % 233
	c16 [ s16 g'16 ] s16 fis16 [ s16 f16 ] s16 e16 [ s16 es ] s16  | % 234
	bes16 [ s16 e16 ] s16 f16 [ s16 fis16 ] s16 g16 [ s16 gis ] s16  | % 235
	<a, a'>16 [ s16 <b a'>16 ] s16 <c a'>16 [ s16 <cis a'>16 ] s16 <d b'>16 [ s16 <e cis'>16 ] s16  | % 236
	<f d'>16 [ s16 <d c'>16 ] s16 <g bes>16 [ s16 <f bes>16 ] s16 <e bes'>16 [ s16 <d bes'>16 ] s16 | % 237
	<e bes'>16 [ s16 <c bes'>16 ] s16 <f a>16 [ s16 <e a>16 ] s16 <d a'>16 [ s16 <c a'>16 ] s16 | % 238
	<d a'>16 [ s16 <b a'>16 ] s16 <e g>16 [ s16 <d g>16 ] s16 <cis g'>16 [ s16 <b g'>16 ] s16 | % 239
   	<cis g'>16 [ s16 <cis e>16 ] s16 <cis a'>16 [ s16 <a g'>16 ] s16 <b f'>16 [ s16 <cis e>16 ] s16 | % 240
	d16 s16 s8 s2 | % 241
	s2. | % 242
	s2. | % 243
	s2. | % 244
	s2. | % 245
	s2. | % 246
	s2. | % 247
	s2. | % 248
	s4 d2 | % 249
	d4 cis2 | % 250
	d4 bes2 | % 251
	g4 a cis | % 252
	d4 d c | % 253
	bes4 a g | % 254
	s2 d'4 | % 255
	g,4 a2 | % 256
	d2. | % 257
    }


melody = << \melodyOne \\ \melodyTwo \\ \melodyThree \\ \melodyFour >>

% The score definition
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
        { \clef treble \key d \minor \time 3/4
        \set Score.currentBarNumber = #2
        \partial 2 \melody  }
    >>
	\layout { }
 	 \midi { }
}
