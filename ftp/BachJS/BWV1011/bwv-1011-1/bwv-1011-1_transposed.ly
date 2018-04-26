\version "2.18.2"


prelude =  \relative c {
    \key c \minor 
    \time 4/4
    \set Staff.midiInstrument = "Cello"    
    
	<<{c4~ c16( g a b c16 [ d es f ] es [ d es c) ]} \\ {c,4}>>   | % 1
	<<{aes''4.} \\ {c,,} \\ {f'} \\ {b,}>> aes'8 g8 [ (aes16 f) ] es8 [ (f16 d) ] | % 2
	<<{ees2} \\ {c4 c,}>> c'4 ~ c16 [c16 d es ] | % 3
	<<{d4. d8 e4 s} \\ {b2 bes4~  bes16 aes bes g}>> | % 4
	<<{f'4} \\ {aes,}>> c, <<{c''4.} \\ {aes,} \\ {f'}>> c'8 | % 5
	<<{c4~ c16 c bes aes bes8. g16 aes8. bes16} \\ {c,,4 s4 e' s} \\ {f s s s} \\ {g,}>>  | % 6
	<<{aes'4} \\ {f}>> c, f'8 ~ [f32 ( es d es) ] f8. [ c16 ] | % 7
	<<{f4. g16 aes} \\ {b,4. s8}>> g'8. [ f16 ] es8. [ d16 ] | % 8
    <<{ees4~ ees16( f32 ees d16 ees)} \\ {c,4 s} \\ {g' s}>> ees'4. \trill d8 | % 9
    <<{d4~ d16 d( e fis g16 [ a bes c] bes [a bes g) ]} \\ {g,4 s}>>  | % 10
	<<{ees''4.} \\ {g,,} \\ {fis'}>> ees'8 d8. [ c32 bes ] a8. [ bes16 ] | % 11
	<<{b4.} \\ {g,} \\ {f'!}>> es16 [ d ] es8. [ g16 ] c8. [ ees,16 ] | % 12
	<<{c'4~ c16 bes c a} \\ {g,4 s} \\ {d' s}>> bes'8. [ g16 ] des'8. [ f,16 ] | % 13
	<<{des'4~ des16 c bes aes!} \\ {g,4 s} \\ {e' s}>> g8. [ aes16 ] bes8. [ g16 ] | % 14 
	<<{aes4} \\ {f}>> f,8. [ g16 ] as8. [ bes16 ] c8. [ es,16 ] | % 15
    <<{aes'4~ aes16 bes aes bes} \\ {d,,4 s} \\ {f' s} \\ {bes, s}>> bes'4. \trill aes8 | % 16
    <<{g4~ g16 f ees d} \\ {ees,4 s} \\ {ees' s} \\ {bes s}>> es16 [ f g aes ] bes [ c d bes ] | % 17
    ees4 c,,8. [ d''16 ] c8. [ bes16 ] a8. [ g16 ] | % 18
    <<{d'4 s} \\ {fis,~ fis16 c bes a}>> bes8. [ g'16 ] a,8. [ g16 ] | % 19
    fis8. [ a'16 ] bes8. [ c16 ] d,8. [ c'16 ] bes8. [ a16 ] | % 20
    <<{bes4~ bes16 g( f ees d16 [ c bes a ] bes [ g a bes) ]} \\ {g4 s} \\ {d' s}>>  | % 21
    <<{bes'4 s} \\ {c,, s} \\ {ees'4~ ees16 d c bes} \\ {g4 s}>> c16 [ bes' a bes ] c [ a bes c ] | % 22
    fis,16 [ (g fis g ] a [ fis g a) ] c, [ (d c d ] es [c d es) ] | % 23
    a,16 [ (bes a bes ] c [ a bes c) ] d, [ e fis g ] a [ bes c a ] | % 24
    bes16 [ d e fis ] g [ a bes c ] d4 ~ d16 [c bes a ] | % 25
    bes8. [ fis16 ] g8. [ c,16 ] <<{g'4} \\ {d}>> fis8. \trill [g16] \bar "||"  % 26

	\time 3/8 
	<<{g4} \\ {g,} \\ {d'}>> g8 | % 27
    as8 [c,8 d] | % 28
    es8 [g16 f g es ] | % 29
    f8 [a, b] | % 30
    c8 [es16 d es c ] | % 31
    d16 [( es f g) as8] | % 32
    b,8 \trill [g16 f' es d ] | % 33
    es16 [ f d es f d ] | % 34
    es16 [ (d es) g c d ] | % 35
    ees8 [g, a] | % 36
    bes8 [d16 c d bes ] | % 37
    c8 [e, fis] | % 38
    g8 [bes16 a bes g ] | % 39
    a16 [ bes c d g, ees' ] | % 40
    fis,16 [ ees' d c bes a ] | % 41
    <<{bes16 [ c a bes c a ]} \\ {g8 d4}>>| % 42
    bes'16 [ g d ees f d ] | % 43
    e16 [ c' g aes bes g ] | % 44
    aes16 [ f c d es! c ] | % 45
    d16 [ es f g as f ] | % 46
    g16 [ f es d c bes ] | % 47
    as8 [c d] | % 48
    es8 [g,16 f g es ] | % 49
    f8 [a b] | % 50
    c8 [es,16 d es c ] | % 51
    d16 [ es f g as f ] | % 52
    b16 [ c d es f d ] | % 53
    <<{es16 [ f d es f d ]} \\ {c8 g4}>> | % 54
    es'16 [ d c d es f ] | % 55
    g16 [ f g8 a] | % 56
    bes8 [d,16 c d bes ] | % 57
    c16 [ d e8 fis] | % 58
    g8 [bes,16 a bes g ] | % 59
    a16 [ bes c d es c ] | % 60
    fis16 [ g a bes c a ] | % 61
    <<{bes16 [ c a bes c a ]} \\ {g8 d4}>> | % 62
    <<{bes'16 [ g a bes c d] } \\ {g,, s s4} \\ {d'16 s s4}>> | % 63
    ees'16 [ c, d es f g ] | % 64
    aes16 [ f g aes bes c] | % 65
    d16 [ bes, c d es f ] | % 66
    g16 [ es f g aes bes ] | % 67
	c16 [ bes aes g f es ] | % 68
    aes16 [ g f es d c ] | % 69
    f16 [ es d c bes a ] | % 70
    es'16 [ (d c bes) bes'8] | % 71
    c8 [ es,16 (g f aes) ] | % 72
    g16 [c bes aes bes g ] | % 73
    aes8 [ c,16 (es) d (f) ] | % 74
    es16 [ aes g f g es ] | % 75
    f16 [ (g aes bes) c8 ] | % 76
    es,16 [ (d) c (bes) c (d) ] | % 77
    es16 [ f ] <<{f8. [es16]} \\ {bes4}>> | % 78
    <<{ees8 g16 f g ees} \\ {ees,8 s4} \\ {bes'8 s4}>> | % 79
    bes'8 [ d,16 (bes') e, (bes') ] | % 80
    f16 [ bes aes g aes f ] | % 81
    c'8 [ es,16 (c') f, (c') ] | % 82
    g16 [ c bes aes bes g ] | % 83
    ees'8 [ g,16 (ees') as, (ees') ] | % 84
    bes16 [ (d) f, (d') g, (d') ] | % 85
    aes16 [ (c) es, (c') f, (c') ] | % 86
    g16 [ c b a b g ] | % 87
    aes!16 [ bes!16 c8 d] | % 88
    ees16 [ aes, g f g es ] | % 89
    f16 [ g (a) f (b) f ] | % 90
    c'16 [ f, es d es c ] | % 91
    d16 [ (es f) d b c ] | % 92
    d16 [ b g a b f ] | % 93
    es16 [ g c f, g b ] | % 94
    a16 [( c f) b, c es ] | % 95
    d16 [ f bes e, f aes ] | % 96
    f16 [ (g) es (g) d (g) ] | % 97
    es16 [ (g) es (c') es, (bes') ] | % 98
    es,16 [ (a) f (a) es (a) ] | % 99
    d,16 [ (aes'!) d, (bes') d, (aes') ] | % 100
    es16 [ aes g f g bes ] | % 101
    ees8 [g,,8 a8 ]| % 102
    bes8 [ d'16 c d bes ] | % 103
    c8 [e,,8 fis8 ]| % 104
    g8 [ bes'16 a bes g ] | % 105
    a16 [ (bes c ) a fis g ] | % 106
    a16 [ (fis d) e fis c ] | % 107
    bes16 [ d g c, d fis ] | % 108
    g,4 d'8 | % 109
	<<{d4.} \\ {r8 c16 [ bes c a ]}>> | % 110
    bes16 [ d g e f d ] | % 111
    e16 [ c bes as bes g ] | % 112
    as16 [ c f d es c ] | % 113
    <<{r8 d16 [ (es) d (es)]} \\ {b4.}>> | % 114
    f'16 [ (g) f (g) aes (f) ] | % 115
    b16 [ (f) d' (aes) g (f) ] | % 116
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
    e16 [ f g aes bes g ] | % 127
    aes16 [ g f e f g ] | % 128
    aes16 [ bes c des bes c ] | % 129
    des16 [ bes f aes g bes ] | % 130
    aes16 [ des c bes c aes ] | % 131
    bes16 [ g d f e g ] | % 132
    f16 [ bes aes g aes f ] | % 133
    g16 [ (aes bes) g e f ] | % 134
    g16 [ (e c) d e bes ] | % 135
    as16 [ c f bes, c e ] | % 136
    f8 f,8 aes'8 | % 137
    <<{aes4.} \\ {r8 f16 [ (d) f (d) ]}>> | % 138
    bes16 [ aes' f d f d ] | % 139
    bes16 [ c' (bes aes g f) ] | % 140
    g16 [ f es g f aes ] | % 141
    <<{g8. s16 s8} \\ {r8 es16 [ (c) es (c) ]}>> | % 142
    as16 [ g' es (c) es (c) ] | % 143
    as16 [ bes' (aes g f es) ] | % 144
    f16 [ (es d) f es g ] | % 145
	<<{r8 d'16 [ (b) d (b) ]} \\ {f4.}>> | % 146
    g16 [ (f) d (b) d (b) ] | % 147
    g16 [ aes' (g f ees d) ] | % 148
    es16 [ (d es f g) g, ] | % 149
    aes8 [c' d] | % 150
    ees8 [g,,16 f g es ] | % 151
    f8 [a' b] | % 152
    c8 [es,,16 d es c ] | % 153
    d16 [ c' (b a g) f' ] | % 154
    es16 [ (d) c' ( b a g) ] | % 155
    c16 [ g aes f g d ] | % 156
    es16 [ (d c) es d f ] | % 157
    es16 [ c' g es f d ] | % 158
    es16 [ (d c) es g, bes ] | % 159
    a16 [ c f d es c ] | % 160
    d16 [ (c bes) d c es ] | % 161
    d16 [ f bes g aes f ] | % 162
    g16 [ (f es) g f aes ] | % 163
    g16 [ (bes ees) c d b ] | % 164
    c16 [ bes aes c g c ] | % 165
    f,16 [ ees' (d b c d) ] | % 166
    g,16 [ ees' (d b c d) ] | % 167
    aes16 [ ees' (d b c d) ] | % 168
    fis,16 [ ees' (d b c d)] | % 169
    g,16 [ ees' (d b c d) ] | % 170
    <<{r8 f,16 [ (es f d) ]} \\ {g,4.}>> | % 171
    <<{es'16 [ (g c) es, f es ]} \\ {g,8 s4}>> | % 172
    <<{d'16 [ (f b) aes g f ]} \\ {g,8 s4}>> | % 173
    <<{es'16 [ (g c) es, f es ]} \\ {g,8 s4}>> | % 174
    d'16 [ c' b d g,8 ] | % 175
    aes8 [c, d] | % 176
    es8 [g16 f g es ] | % 177
    f8 [a, b] | % 178
    c8 [ es16 d es c ] | % 179
    d16 [ es f g aes f ] | % 180
    c'16 [ b a g c b ] | % 181
    c16 [d] <<{d8.\trill [c16]} \\ {g4}>> | % 182
    c16 [ (bes aes g aes) f ] | % 183
    e16 [ (des' c bes aes g) ] | % 184
    aes16 [(g f) d ees c ] | % 185
    b16 [ as' (g f es d) ] | % 186
    es16 [ (d c) a bes! g ] | % 187
    fis16 [ es' (d c b a) ] | % 188
    b16 [ (a g) b d f ] | % 189
    aes16 [ (g) g (f) f (es) ] | % 190
    es16 [ (c g c es) g ] | % 191
    c16 [ (bes) bes (a) a (c) ] | % 192
    fis,16 [ (c g c fis) a ] | % 193
    c16 [ (d32 ees) d16 (c) c (b) ] | % 194
    b16 [ d b g d g, ] | % 195
    f8 [c''16 ( b a g) ] | % 196
    c8 [es,, f] | % 197
    g8 [bes'16 aes bes g] | % 198
    aes8 [c,, d] | % 199
    es8 [g'16 f g es ] | % 200
    f8 [a, b] | % 201
    c8 [es16 d es c ] | % 202
    f,8 [des''16 c b c ] | % 203
    aes16 [ (g fis g es d) ] | % 204
    c16 [ (es des c b c) ] | % 205
    fis,16 [ (g a b c d) ] | % 206
    es16 [ (d c d es f) ] | % 207
    g16 [ d es c g b ] | % 208
    <<{r8 bes16 [ (as bes g) ]} \\ {c,4.}>> | % 209
    <<{as'16 [ (c f) as, bes as ]} \\ {c,8 s4}>> | % 210
    <<{g'16 [ (bes e) des c bes ]} \\ {c,8 s4}>> | % 211
    <<{as'16 [ (c f) as, bes as ]} \\ {c,8 s4}>> | % 212
    <<{g'16 [ (bes e) des c bes ]} \\ {c,8 s4}>> | % 213
    <<{as'16 [ (c f) d es c ]} \\ {c,8 s4}>> | % 214
    <<{b'16 [ es (d c b a) ]} \\ {d,8 s4}>> | % 215
    <<{g16 [ g' (f es d c) ]} \\ {ees,8 s4}>> | % 216
    <<{bes''8} \\ {e,,} \\ {g'} \\ {c,}>> r8 r8 | % 217
    f,16 [ a' (g f es d) ] | % 218
    <<{ees8} \\ {fis,} \\ {c'}>> r8 r8 | % 219
    g16 [ ees'' (d) b (c) g ] | % 220
    aes16 [ fis (g) d (es) b ] | % 221
    c16 [ (fis,) ] <<{s8 b'} \\ {g, g} \\ {s f'}>> | % 222
    <<{c'4.} \\ {c,,} \\ {e'} \\ {g,}>> \bar "|." % 223
}
