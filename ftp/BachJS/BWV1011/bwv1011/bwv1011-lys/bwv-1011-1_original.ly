melodyOne =  \relative c {
    \key c \minor 
    \time 4/4
    \set Staff.midiInstrument = "Cello"
    
	c4 ~ c16 [g  (a b ] c [ d es f ] es [ d es c) ] | % 1
	<b f' bes>4. bes'8 as8 [ (bes16 f) ] es8 [ (f16 d) ] | % 2
	es2 c4 ~ c16 [c16 d es ] | % 3
	d4. d8 e4 s4 | % 4
	f4 r4 <f d'>4. d'8 | % 5
	<g,, f' d'>4 ~ d''16 [ d c bes ] c8. [ as16 ] bes8. [ c 16 ] | % 6
	bes4 s4 f8 ~ [f32 ( es d es) ] f8. [ c16 ] | % 7
	f4. as16 [ bes ] as8. [ f16 ] es8. [ d16 ] | % 8
    <g, es'>4 ~ es'16 [ (f32 es d16 es) ] es4. \trill d8 | % 9
    d4 ~ d16 [ d (e fis ] as [ b c d] c [b c b) ] | % 10
	<fis f'>4. f'8 es8. [ d32 c ] b8. [ c16 ] | % 11
	<f, cis'>4. es16 [ d ] es8. [ as16 ] d8. [ es,16 ] | % 12
	<d d'>4 ~ d'16 [ c d b ] c8. [ as16 ] es'8. [ f,16 ] | % 13
	<e es'>4 ~ es'16 [d16 c bes ] as8. [ bes16 ] c8. [ as16 ] | % 14 
	bes4 f,8. [ g16 ] as8. [ bes16 ] c8. [ es,16 ] | % 15
    <bes' f' bes>4 ~ bes'16 [c bes c] c4. \trill bes8 | % 16
    <bes, es as>4 ~ as'16 [(f es d ] es [ f as bes ] c [ d es c) ] | % 17
    f4 c,,8. [ es''16 ] d8. [ c16 ] b8. [ as16 ] | % 18
    <fis es'>4 ~ fis16 [ c16 bes as ] bes8. [ g'16 ] as,8. [ g16 ] | % 19
    fis8. [ b'16 ] c8. [ d16 ] d,8. [ d'16 ] c8. [ b16 ] | % 20
    <d, c'>4 ~ c'16 [g (f es ] d [ c bes a ] bes [ g a bes) ] | % 21
    <g es' c'>4 ~ es'16 [d c bes ] c [ c' b c ] d [ b c d ] | % 22
    fis,16 [ (g fis g ] b [ fis g b) ] c, [ (d c d ] es [c d es) ] | % 23
    a,16 [ (bes a bes ] c [ a bes c) ] d, [ e fis g ] a [ bes c a ] | % 24
    bes16 [ d e fis ] as [ b c d ] es4 ~ es16 [d c b ] | % 25
    c8. [ fis,16 ] g8. [ c,16 ] <d as'>4 fis8. \trill [g16] \bar "||"  % 26

	\time 3/8 
	<d g >4 g8 | % 27
    as8 [c,8 d] | % 28
    es8 [g16 f g es ] | % 29
    f8 [a, b] | % 30
    c8 [es16 d es c ] | % 31
    d16 [( es f g as8)] | % 32
    b,8 \trill [g16 f' es d ] | % 33
    es16 [ f d es f d ] | % 34
    es16 [ (d es) as d es ] | % 35
    f8 [as, b] | % 36
    c8 [es16 d es c ] | % 37
    d8 [e, fis] | % 38
    g8 [c16 b c as ] | % 39
    b16 [ c d es as, f' ] | % 40
    fis,16 [ f' es d c b ] | % 41
    c16 [ d b c d b ] | % 42
    c16 [ as d, es f d ] | % 43
    e16 [ d' as bes c as ] | % 44
    bes16 [ f c d es c ] | % 45
    d16 [ es f g as f ] | % 46
    g16 [ f es d c bes ] | % 47
    as8 [c d] | % 48
    es8 [g,16 f g es ] | % 49
    f8 [a b] | % 50
    c8 [es,16 d es c ] | % 51
    d16 [ es f g as f ] | % 52
    b16 [ c d es f d ] | % 53
    es16 [ f d es f d ] | % 54
    es16 [ d c d es f ] | % 55
    g16 [ f g8 b] | % 56
    c8 [d,16 c d bes ] | % 57
    c16 [ d e8 fis] | % 58
    g8 [bes,16 a bes g ] | % 59
    a16 [ bes c d es c ] | % 60
    fis16 [ as b c d b ] | % 61
    c16 [ d b c d b ] | % 62
    <d, c'>16 [ as' b c d es] | % 63
    f16 [ c, d es f as ] | % 64
    bes16 [ f as bes c d] | % 65
    es16 [ bes, c d es f ] | % 66
    g16 [ es f as bes c ] | % 67
	d16 [ c bes as f es ] | % 68
    bes'16 [ as f es d c ] | % 69
    f16 [ es d c bes a ] | % 70
    es'16 [ (d c bes) c'8] | % 71
    d8 [ es,16 (g f bes) ] | % 72
    as16 [d c bes c as ] | % 73
    bes8 [ c,16 (es) d (f) ] | % 74
    es16 [ bes' as f as es ] | % 75
    f16 [ (as bes c) d8 ] | % 76
    es,16 [ (d) c (bes) c (d) ] | % 77
    es16 [ f ] f8. [es16] | % 78
    <bes es>8 [g'16 f g es ] | % 79
    c'8 [ d,16 (c') e, (c') ] | % 80
    f,16 [ c' bes as bes f ] | % 81
    d'8 [ es,16 (d') f, (d') ] | % 82
    g,16 [ d' c bes c as ] | % 83
    f'8 [ g,16 (f') as, (f') ] | % 84
    bes,16 [ (es) f, (es') g, (es') ] | % 85
    as,16 [ (d) es, (d') f, (d') ] | % 86
    g,16 [ d' cis b cis as ] | % 87
    bes16 [ c16 d8 es] | % 88
    f16 [ as, g f g es ] | % 89
    f16 [ as (b) f (cis') f, ] | % 90
    d'16 [ f, es d es c ] | % 91
    d16 [ (es f) d b c ] | % 92
    d16 [ b g a b f ] | % 93
    es16 [ g c f, g b ] | % 94
    a16 [( c f) b, c es ] | % 95
    d16 [ f c' e, f bes ] | % 96
    f16 [ (as) es (as) d, (as') ] | % 97
    es16 [ (as) es (d') es, (c') ] | % 98
    es,16 [ (b') f (b) es, (b') ] | % 99
    d,16 [ (bes') d, (c') d, (bes') ] | % 100
    es,16 [ bes' as f as c ] | % 101
    f8 [g,,8 a8 ]| % 102
    bes8 [ es'16 d es c ] | % 103
    d8 [e,,8 fis8 ]| % 104
    g8 [ c'16 b c as ] | % 105
    b16 [ (c d ) b fis as ] | % 106
    b16 [ (fis d) e fis c ] | % 107
    bes16 [ d g c, d fis ] | % 108
    g,4 d'8 | % 109
	r8 c16 [ bes c a ] | % 110
    bes16 [ d g e f d ] | % 111
    e16 [ c bes as bes g ] | % 112
    as16 [ c f d es c ] | % 113
    r8 d16 [ (es) d (es)] | % 114
    f16 [ (as) f (as) bes (f) ] | % 115
    cis'16 [ (f,) es' (bes) as (f) ] | % 116
    es16 [ g d es f d ] | % 117
    es16 [ c b c d b ] | % 118
    c16 [ es d es f d ] | % 119
    e16 [ bes as bes c as ] | % 120
    bes16 [ f' e f g e ] | % 121
    f16 [ as, g as bes g ] | % 122
    as16 [ g' f g as f ] | % 123
    g16 [ e, d e f d ] | % 124
    e16 [ f g as bes g ] | % 125
    as16 [ g as bes c d ] | % 126
    e16 [ f g bes c as ] | % 127
    bes16 [ as f e f as ] | % 128
    bes16 [ c d es c d ] | % 129
    es16 [ c f, bes as c ] | % 130
    bes16 [ es d c d bes ] | % 131
    c16 [ as d, f e g ] | % 132
    f16 [ c' bes as bes f ] | % 133
    as16 [ (bes c) as e f ] | % 134
    g16 [ (e c) d e bes ] | % 135
    as16 [ c f bes, c e ] | % 136
    f8 f,8 bes'8 | % 137
    r8 f16 [ (d) f (d) ] | % 138
    bes16 [ as' f d f d ] | % 139
    bes16 [ d' (c bes as f) ] | % 140
    g16 [ f es g f bes ] | % 141
    r8 es,16 [ (c) es (c) ] | % 142
    as16 [ g' es (c) es (c) ] | % 143
    as16 [ c' (bes as f es) ] | % 144
    f16 [ (es d) f es g ] | % 145
	r8 es'16 [ (cis) es (cis) ] | % 146
    as16 [ (f) d (b) d (b) ] | % 147
    g16 [ bes' (as f es d) ] | % 148
    es16 [ (d es f g) g, ] | % 149
    as8 [d' es] | % 150
    f8 [g,,16 f g es ] | % 151
    f8 [b' cis] | % 152
    d8 [es,,16 d es c ] | % 153
    d16 [ c' (b a g) f' ] | % 154
    es16 [ (d) d' ( cis b as) ] | % 155
    d16 [ as bes f g d ] | % 156
    es16 [ (d c) es d f ] | % 157
    es16 [ d' as es f d ] | % 158
    es16 [ (d c) es g, bes ] | % 159
    a16 [ c f d es c ] | % 160
    d16 [ (c bes) d c es ] | % 161
    d16 [ f c' as bes f ] | % 162
    g16 [ (f es) g f bes ] | % 163
    as16 [ (c f) d es cis ] | % 164
    d16 [ c bes d as d ] | % 165
    f,16 [ f' (es cis d es) ] | % 166
    g,16 [ f' (es cis d es) ] | % 167
    as,16 [ f' (es cis d es) ] | % 168
    fis,16 [ f' (es cis d es)] | % 169
    as,16 [ f' (es cis d es) ] | % 170
    r8 f,16 [ (es f d) ] | % 171
    es16 [ (as d) es, f es ] | % 172
    d16 [ (f cis') bes as f ] | % 173
    es16 [ (as  d) es, f es ] | % 174
    d16 [ d' cis es as,8 ] | % 175
    bes8 [c, d] | % 176
    es8 [g16 f g es ] | % 177
    f8 [a, b] | % 178
    c8 [ es16 d es c ] | % 179
    d16 [ es f as bes f ] | % 180
    d'16 [ cis b as d cis ] | % 181
    d16 [es] es8. [d16]] | % 182
    d16 [ (c bes as bes) f ] | % 183
    e16 [ (es' d c bes as) ] | % 184
    bes16 [(as f) d es c ] | % 185
    b16 [ as' (g f es d) ] | % 186
    es16 [ (d c) a bes g ] | % 187
    fis16 [ es' (d c b a) ] | % 188
    b16 [ (a g) b d f ] | % 189
    bes16 [ (as) as (f) f (es) ] | % 190
    es16 [ (c f, c' es) as ] | % 191
    d16 [ (c) c (b) b (d) ] | % 192
    fis,16 [ (c g c fis) b ] | % 193
    d16 [ (es32 f) es16 (d) d (cis) ] | % 194
    cis16 [ es cis as d, g, ] | % 195
    f8 [d''16 ( cis b as) ] | % 196
    d8 [es,, f] | % 197
    g8 [c'16 bes c as] | % 198
    bes8 [c,, d] | % 199
    es8 [g'16 f g es ] | % 200
    f8 [a, b] | % 201
    c8 [es16 d es c ] | % 202
    f,8 [es''16 d cis d ] | % 203
    bes16 [ (as fis g es d) ] | % 204
    c16 [ (es des c b c) ] | % 205
    fis,16 [ (g a b c d) ] | % 206
    es16 [ (d c d es f) ] | % 207
    g16 [ d es c g b ] | % 208
    r8 bes16 [ (as bes g) ] | % 209
    as16 [ (c f) as, bes as ] | % 210
    g16 [ (bes e) des c bes ] | % 211
    as16 [ (c f) as, bes as ] | % 212
    g16 [ (bes e) des c bes ] | % 213
    as16 [ (c f) d es c ] | % 214
    b16 [ es (d c b a) ] | % 215
    g16 [ g' (f es d c) ] | % 216
    <c g' c>8 r8 r8 | % 217
    f,16 [ b' (as f es d) ] | % 218
    <c es>8 r8 r8 | % 219
    g16 [ f'' (es) cis (d) as ] | % 220
    bes16 [ fis (g) d (es) b ] | % 221
    c16 [ (fis,) ] s8 <f' cis'> | % 222
    <g, e' d'>4. \bar "|." % 223

    }

melodyTwo =  \relative c, {
	c4 s2. | % 1
	c4. s2 s8 | % 2
    c'4 c,4 s2 | % 3
	b'2 bes4 ~ bes16 [ as bes g] | % 4
    as4 c,4 as'4. s8 | % 5
    c,4 s4 e'4 s4 | % 6
	f4 c,4 s2 | % 7
    b'4. s2 s8 | % 8
	c,4 s2. | % 9
	g'4 s2. | % 10
	g4. s8 s2 | % 11
	g4. s8 s2 | % 12
	g4 s2. | % 13
    g4 s2. | % 14
	f'4 s2. | % 15
    d,4 s2. | % 16
	e4 s2. | % 17
	s1*3 | % 20
	g4 s2. | % 21
	c,4 s2. | % 22
	s1*4   \bar "||"   % 26
	
	\time 3/8
	g'4 s8 | % 27
    s4.*14 | % 41
	g'8 d4 | % 42
    s4.*11 | % 53
    c8 g4 | % 54
	s4.*7 | % 61
    g'8 d4 | % 62
    g,16 s16 s4 | % 63
	s4.*14 | % 76
    s8 bes4 | % 77
    es,4 s8 | % 78
	s4.*30 | % 109
	d'4. | % 110
	s4.*3 | % 113
	g,4. | % 114
	s4.*23 | % 137
	bes'4. | % 138
	s4.*3 | % 141
	as4. | % 142
	s4.*3 | % 144
	f4. | % 145
	s4.*24 | % 170
    g,4. | % 171
	g8 s4 | % 172
    g8 s4 | % 173
    g8 s4 | % 174
    s4.*7 | % 181
	s8 g'4 | % 182
    s4.*26 | % 208
	c,,4. | % 209
    c8 s4 | % 210
    c8 s4 | % 211
    c8 s4 | % 212
    c8 s4 | % 213
    c8 s4 | % 214
    d8 s4 | % 215
    es8 s4 | % 216
    e8 s4 | % 217
	s4. | % 218
    fis8 s4 | % 219
	s4.*2 | % 220
	s8 g8 [ g ] | % 221
    c,4.  \bar "|." % 222

    }


% The score definition

prelude = << \melodyOne \\ \melodyTwo >>

