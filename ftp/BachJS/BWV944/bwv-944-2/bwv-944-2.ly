\version "2.12.0"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Fuge A-moll"
		subtitle = "Fantasia und Fuge a-Moll"
        mutopiatitle = "Fuge A-moll BWV 944"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 944"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerWeb = "www.roxele.de"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2009/01/01-1606"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative a' {
	a16 [ c b a ] e' [ b c d ] e, [ d' c b ] | % 1
	c16 [ d c b ] a [ e' f g ] a [ g f e ]  | % 2
	f16 [ e d e ] f [ e d c ] b [ d c b ]  | % 3
	e16 [ d c d ] e [ d c b ] a [ c b a ] | % 4
	d16 [ c b c ] d [ c b a ] gis [ b a gis ]  | % 5
	a16 [ e a c ] e [ a, c e ] a [ g a fis ] | % 6
	g16 [ e fis g ] dis4.-\prallmordent dis8| % 7
	e4 r8 b'8 [ g b ]| % 8
	a8 [ c fis, c' d, c' ] | % 9
	g8 [ b e, b' c, b' ] | % 10
	fis8 [ a dis, a' b, a' ] | % 11
	g4 r4 g4 ~ | % 12
	g16 [ e f g ] a,8 [ g' cis, g' ] | % 13
	f4 r4 f4 ~ | % 14
	f16 [ d e f ] g,8 [ f' b, f' ] | % 15
	e16 [ f e d ] c [ b a g ] fis [ a  b c ] | % 16
	d16 [ e d c ] b [ a gis fis ] e [ gis a b ] | % 17
	c4 b4. b8 | % 18
	a4 r4 r8 c'8 | % 19
	c4 r4 r8 b8 | % 20
	b4 r4 r8 a8 | % 21
	a4 r8 f8 [ e d ] | % 22
	c2 r8 c8 | % 23
	b2 r8 bes8 | % 24
	a2 d4 ~ | % 25
	d16 [ e, gis b ] e [ b e gis ] b [ f e d ] | % 26
	c4 c r4 | % 27
	r4 c4 r4 | % 28
  	r4 c4 r4 | % 29
	r16 c16 [ b a ] f'16 [ e d c ] b [ d c b ] | % 30
	e4 r4 r16  d16 [ c b ]  | % 31
	c4 r16 c16 [ b a ] gis4 | % 32
	a4 r4 r4 | % 33
	r1*3/4 | % 34
	r1*3/4 | % 35
	r1*3/4 | % 36
	r1*3/4 | % 37
	r1*3/4 | % 38
	r1*3/4 | % 39
	r1*3/4 | % 40
	r1*3/4 | % 41
	r1*3/4 | % 42
	r1*3/4 | % 43
	r1*3/4 | % 44
	r1*3/4 | % 45
	r1*3/4 | % 46
	r1*3/4 | % 47
	r1*3/4 | % 48
	r1*3/4 | % 49
	r1*3/4 | % 50
	r1*3/4 | % 51
	r1*3/4 | % 52
	r1*3/4 | % 53
	e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] | % 54
	g16 [ a g fis ] e [ b' c d ] e [ d c b ] | % 55
	c16 [ b a b ] c [ b a g ] fis [ a g fis ] | % 56
	b16 [ a g a ] b [ a g fis ] e [ g fis e ] | % 57
	a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] | % 58
  	e16 [ b e g ] b [ e, g b ] e [ d e cis ] | % 59
	d2. ~ | % 60
	d2. ~ | % 61
	d4 c4 ~ c16 [ bes c a ] | % 62
	es'2. ~ | % 63
	es4 d4 ~ d16 [ c d b ] | % 64
	e2. ~ | % 65
	e4 es4 ~ es16 [ d e cis ] | % 66
	g'2. ~ | % 67
	g4 f4 ~ f16 [ e f d ] | % 68
	bes'4 ~ bes16 [ a g f ] e [ g f e ] | % 69
	f4 ~ f16 [ e d c ] b [ d c b ] | % 70
	cis4 ~ cis16 [ d cis d ] e4 ~ | % 71
	e8 d4 d cis8 | % 72
	d4 r4 r8 f8 | % 73
	f4 r4 r8 e8 | % 74
	e4 r4 r8 d8 | % 75
	d4 r8 bes8 [ a g ] | % 76
	f4 f r8 a8 | % 77
	d4 d r8 d8 | % 78
	cis8-\prall [ d ] e2 ~ | % 79
	e8 [ a, ] d4. cis8 | % 80
	d4 r4 f4 ~ | % 81
	f16 [ d e f ] g,8 [ f' bes, f' ] | % 82
	e4 r4 es4 ~ | % 83
	es16 [ c d es ] f,8 [ es' a, es' ] | % 84
	d16 [ es d c ] bes8 r8 r4 | % 85
	e16 [ f e d ] cis8 r8 r4 | % 86
	a'16 [ f e d ] g [ e f g ] a, [ g' f e ] | % 87
	f16 [ g f e ] d4 ~ d16 [ d e f ] | % 88
  	g16 [ e d c ] f [ d e f ] g, [ f' e d ] | % 89
	e16 [ f e d ] c4 ~ c16 [ c d e ] | % 90
	f16 [ d  c b ] e [ c d e ] a, [ e' d c ] | % 91
	b16 [ c b a ] g4 r4 | % 92
	c2 b4 | % 93
	c4 r4 e4 | % 94
	e4 d r4 | % 95
	d4 c r4 | % 96
	a4 g2 ~ | % 97
	g4 r4 r4 | % 98
	r16 c,16 [ f a ] c [ f, a c ] f [ e f c ] | % 99
	d4 r4 r4 | % 100
	r16 d,16 [ g b ] d [ g, b d ] g [ f g d ] | % 101
	e4 e r4 | % 102
	e4 e r4 | % 103
	e4 e r4 | % 104
	r16  e16 [ d c ] a' [ g f e ] d [ f e d ] | % 105
	e4 r4 r16 f16 [ e d ] | % 106
	e4 r16 e16 [ d c ] b4 | % 107
	r8 c4 c8 ~ c16 [ b c b ] | % 108
	c2. | % 109
	bes4 a2 ~ | % 110
	a16 [ c b a ] d [ b c d ] e, [ d' c b ] | % 111
	c4 b2 ~ | % 112
	b16 [ d cis b ] e [ cis d e ] fis, [ e' dis cis ] | % 113
	dis2 c4 | % 114
	e16 [ g fis e ] a2 ~ | % 115
	a8 g4 g8 ~ g16 [ g fis e ] | % 116
	dis16 [ fis dis e ] fis [ dis e fis ] a, [ c b a ] | % 117
	g16 [ b g a ] b [ g a b ] e, [ g fis e ] | % 118
	dis16 [ fis dis e ] fis [ dis e fis ] r4 | % 119
	r1*3/4 | % 120
	r1*3/4 | % 121
	r1*3/4 | % 122
	r1*3/4 | % 123
	r1*3/4 | % 124
	r1*3/4 | % 125
	r1*3/4 | % 126
	r1*3/4 | % 127
	r1*3/4 | % 128
  	r1*3/4 | % 129
	r1*3/4 | % 130
	r1*3/4 | % 131
	r1*3/4 | % 132
	r1*3/4 | % 133
	r1*3/4 | % 134
	r1*3/4 | % 135
	r1*3/4 | % 136
	r1*3/4 | % 137
	a16 [ c b a ] e' [ b c d ] e, [ d' c b ] | % 138
  	c16 [ d c b ] a [ e' f g ] a [ g f e ] | % 139
	f16 [ e d e ] f [ e d c ] b [ d c b ] | % 140
	e16 [ d c d ] e [ d c b ] a [ c b a ] | % 141
	d16 [ c b c ] d [ c b a ] gis [ b a gis ] | % 142
	a16 [ e, a c ] e [ a, c e ] a [ g a fis ] | % 143
	g2. ~ | % 144
	g2. ~ | % 145
	g4 f4 ~ f16 [ es f d ] | % 146
	aes'2. ~ | % 147
	aes4 g4 ~ g16 [ f g e ] | % 148
	bes'2. ~ | % 149
	bes4 aes4 ~ aes16 [ g a fis ] | % 150
	c'2. ~ | % 151
	c4 bes4 ~ bes16 [ a bes g ] | % 152
	es'4 ~ es16 [ d c bes ] a [ c bes a ] | % 153
	bes4 ~ bes16 [ a g f ] e [ g fis e ] | % 154
	fis4 ~ fis16 [ g fis g ] a4 ~ | % 155
	a8 g4 g fis8 | % 156
	g2. | % 157
	f4 e2 ~| % 158
  	e16 [ g fis e ] a [ fis g a ] b, [ a' g fis ] | % 159
	g4 fis2 ~ | % 160
	fis16 [ a gis fis ] b [ gis a b ] cis, [ b' a gis ] | % 161
	a4 ais r4 | % 162
	b16 [ d cis b ] e [ cis d e ] fis, [ e'd cis ]| % 163
	d4 dis r4 | % 164
	e16 [ g fis e ] a [ fis g a ] b, [ a' g fis ] | % 165
	g4 gis r4  | % 166
	a16 [ c, b a ] d [ b c d ] e, [ d' c b ] | % 167
	c2 ~ c16 [ c b a ] | % 168
	gis2. | % 169
	a16 [ c b a ] d2 ~  | % 170
	d8 c4 c8 ~ c16 [ c b a ] | % 171
	gis16 [ b gis a ] b [ gis a b ] d, [ f e d ] | % 172
	c16 [ e c d ] e [ c d e ] a, [ c b a ] | % 173
	r1*3/4 | % 174
	r1*3/4 | % 175
	r1*3/4 | % 176
	a'16 [ c b a ] e' [ c d e ] a, [ g' f e ] | % 177
	f16 [ e d e ] f [ e d c ] b [ c d c ] | % 178
  	b [ a gis a ] b [ a gis f ] e16 [ d c b ] | % 179
	r1*3/4 | % 180
	r1*3/4 | % 181
	r1*3/4 | % 182
	r1*3/4 | % 183
	r1*3/4 | % 184
	r1*3/4 | % 185
	c16 [ e c d ] e [ c d e ] a, [ g' fis e ] | % 186
	dis16 [ a' fis g ] a [ fis g a ] dis, [ c' b a ] | % 187
	gis16 [ b gis a ] b [ gis a b ] e, [ d' c b ] | % 188
  	c16 [ e c d ] e [ c d e ] a, [ g' fis e ] | % 189
	dis16 [ a' fis g ] a [ fis g a ] dis, [ c' b a ] | % 190
	gis16 r16 r8 r4 r4 | % 191
	r16 g16 [ f e ] a [ e f g ] a, [ g' f e ] | % 192
	f16 [ e d e ] f [ e d c ] b [ d c b ] | % 193
	e16 [ d c d ] e [ d c b ] a [ c b a ] | % 194
	d16 [ c b c ] d [ c b a ] gis [ b a gis ] | % 195
	c16 r16 r8 r4 r4 | % 196
	r8 a8 a4 ( gis8.-\prallup) [ a16 ] | % 197
	a4 r4 r4 | % 198

}

sopranoTwo =   \relative e' {
	 r1*3/4 | % 1
	 r1*3/4 | % 1
	 r1*3/4 | % 1
	 r1*3/4 | % 1
	 r1*3/4 | % 1
	 r1*3/4 | % 1
	 e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] | % 7
	 g16 [ a g fis ] e [ b' c d ] e [ d c b ] | % 8
	 c16 [ b a b ] c [ b a g ] fis [ a g fis ] | % 9
	 b16 [ a g a ] b [ a g fis ] e [ g fis e ] | % 10
	 a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] | % 11
	 e16 [ b e g ] b [ e, g b ] e [ d e b ] | % 12
	 cis4 r16 d16 [ cis b ] a [ g fis e ] | % 13
	 d16 [ a d f ] a [ d, f a ] d [ c d a ] | % 14
	 b4 r16 c16 [ b a ] g [ f e d ] | % 15
	 c4 r4 r16 e16 [ d c ]| % 16
	 b4 r4 r16 d16 [ c b ] | % 17
	 a8 [ a' ~] a [ a ] gis4 | % 18
	 a4 r8 e'8 [ c e ] | % 19
	 d8 [ f b, f' g, f' ] | % 20
	 c8 [ e a, e' f, e' ] | % 21
	 b8 [ d gis, d' e, b' ] | % 22
	 b4 a r8 a8 ~ | % 23
	 a4 g r8 g8 ~ | % 24
	 g4 f2 | % 25
	 s2 e4 ~ | % 26
	 e16 [ b' a gis ] a4 r4 | % 27
	 r16 b16 [ a gis ] a4 r4 | % 28
  	 r16 b16 [ a gis ] a4 r4 | % 29
	 r1*3/4 | % 30
	 r16 gis16 [ fis e ] a [ b c d ] e,4 ~ | % 31
	 e4 r4 r16 f16 [ e d ] | % 32
	 c4 ~ c16 [ d e f ] gis,8. [ gis16 ] | % 33
	 a16 [c b a ] e' [ b c d ] e, [ d' c b ]  | % 34
	 c16 [ d c b ] g [ e' f g ] a [ g f e ] | % 35
	 f16 [ e d e ] f [ e d c ] b [ d c b ] | % 36
	 e16 [ d c d ] e [ d c b ] a [ c b a ] | % 37
	 d16 [ c b c ] d [ c b a ] gis [ b a gis ] | % 38
	 a16 [ e a c ] e [ a, c e ] a [ g a e ] | % 39
	 fis4 r16 g16 [ fis e ] d [ c b a ] | % 40
	 g16 [ d g b ] d [ g, b d ] g [ fis g dis ] | % 41
	 e4 r16 fis16 e d ] c [ b a g ] | % 42
	 fis8. [ e'16 ] dis16 [ e dis e ] a, [ c b a ] | % 43
	 g'16 [ dis e fis ] dis4.-\prallmordent dis8 | % 44
	 e4 r16 a16 [ g fis ] g [ b a g ] | % 45
	 a16 [ b c b ] a [ g fis e ] d [ c' b a ] | % 46
	 g16 [ a b a ] g [ fis e d ] c [ b' a g ] | % 47
	 fis16  [ g a g ] fis [ e dis cis ] b [ a' g fis ] | % 48
	 g4 r16 e'16 [ b g ] e [ g a b ] | % 49
	 c16 [ e, a c ] e [ a, c e ] a [ g fis e ] | % 50
	 dis16 [ e fis e ] dis [ cis b a ] g [ fis e dis ] | % 51
	 e16 [ fis g fis ] e [ d c b ] a [ a fis e ] | % 52
	 c'16 [ b a g ] fis [ g a b ] dis,8. [ dis16 ] | % 53
	 e4. e8 dis4 | % 54
	 e4 r8 b'8 [ g b ] | % 55
	 a8 [ c fis, c' d, c' ] | % 56
	 g8 [ b e, b' c, b' ] | % 57
	 fis8 [ a dis, a' b, fis' ] | % 58
  	 g4 r4 r4 | % 59
	 r16 fis16 [ b d ] fis [ b, d fis ] b [ a b fis ] | % 60
	 gis2. ~ | % 61
	 g16 [ fis gis e ] a4 ~ a8. [ a16 ~ ] | % 62
	 a2. ~ | % 63
	 a16 [ g a f ] bes4 ~ bes8. [ b16 ~ ] | % 64
	 b2. ~ | % 65
	 b16 [ a b g ] c4 ~ c8. [ cis16 ] | % 66
	 c2. ~ | % 67
	 a16 [ b cis a ] d4 ~ d8. [ d16 ~ ] | % 68
	 d8 [ g ] cis,4 r4 | % 69
	 r8 d8 gis,4 r4 | % 70
	 r16 a16 [ g f ] e4 ~ e16 [ g f e ] | % 71
	 f4 e e | % 72
	 d4 r8 a'8 [ f a ] | % 73
	 g8 [ bes e, bes' c, bes' ] | % 74
	 f8 [ a d, a' bes, a' ] | % 75
	 e8 [ g cis, g' a, e' ] | % 76
	 e4 d r8 f8 | % 77
	 f4 f r8 f8 | % 78
	 b4. b8 [ a-\prall g ] | % 79
	 f4. bes8 [ e, a ] | % 80
	 f4 r4 r4 | % 81
	 r4 r4 bes4 ~ | % 82
	 bes4 r4 r4 | % 83
	 r4 r4 a4 ~ | % 84
	 a4 r16 a16 [ g f ] e [ d cis b ] | % 85
	 cis4 r16 b'16 [ a g ] f [ e d cis ] | % 86
	 d8 d4 d4 cis8 | % 87
	 r8 d8 ~ d16 [ e d c ] b8 r8 | % 88
  	 r8 c4 c b8 | % 89
	 r8 c8 ~ c16 [ d c b ] a8 r8 | % 90
	 r8 c4 c4 f8 ~ | % 91
	 f4 ~ f16 [ f e d ] c [ b a g ] | % 92
	 c16 [ e d c ] g' [ d e f ] g [ f e d ] | % 93
	 e16 [ f e d ] c [ g' a bes ] c [ bes a g ] | % 94
	 a16 [ g f g ] a [ g f e ] d [ f e d ] | % 95
	 g16 [ f e f ] g [ f e d ] c [ e d c ] | % 96
	 f16 [ e d e ] f [ e d c ] b [ d c b ] | % 97
	 c16 [ g c e ] g [ c, e g ] c [ bes c g ] | % 98
	 a4 r4 r4 | % 99
	 r16 a,16 [ d fis ] a [ d, fis a ] d [ c d a ] | % 100
	 b4 r4 r4 | % 101
	 r16 d16 [ c b ] c4 r4 | % 102
	 r16 d16 [ c b ] c4 r4 | % 103
	 r16 d16 [ c b ] c4 r4 | % 104
	 r1*3/4 | % 105
	 r16 b16 [ a g ] c [ d e f ] g,4 ~ | % 106
	 g4 r4 r16 a16 [ g f ] | % 107
	 e4 d d | % 108
	 e16 [ b a g ] d' [ a b c ] d, [ c' b a ] | % 109
	 g16 [ f' e d ] g [ e f g ] a, [ g'f e ]  | % 110
	 f4 e2 ~ | % 111
	 e16 [ g fis e ] a [ fis g a ] b, [ a' g fis ] | % 112
	 g4 fis2 ~ | % 113
	 fis4 a c | % 114
	 b4 c8 [ a ] dis4-\prallmordent | % 115
	 e4 cis ais | % 116
	 b8 r8 r4 r4 | % 117
	 r1*3/4 | % 118
	 r2 a,16 [ c b a ] | % 119
	 s2.| % 120
	 s2.| % 121
	 s2.| % 122
	 s2.| % 123
	 s2.| % 124
	 s2.| % 125
	 s2.| % 126
	 s2.| % 127
	 s4 e'16 [ a, c e ] a [ g a e ] | % 128
  	 f16 [ a, d f ] a [ d, f a ] d [ cis b a ] | % 129
	 gis4 r4 g4 ~ | % 130
	 g16 [ e f g ] a,8 [ g' cis, g' ] | % 131
	 fis4 r4 f4 ~ | % 132
	 f16 [ d e f ] g,8 [ f' b, f' ] | % 133
	 e16 [ f e d ] c8 r8 r16 a16 [ b c ] | % 134
	 d16 [ e d c ] b8 r8 r16 gis16 [ a b ] | % 135
	 c16 [ d e f ] s2 | % 136
	 s2. | % 137
	 s2. | % 138
  	 s2. | % 139
	 s2. | % 140
	 s2. | % 141
	 s2. | % 142
	 s2. | % 143
	 s2 e16 [ d e b ] | % 144
	 cis2. ~ | % 145
	 cis16 [ b cis a ] d4 ~ d8. [ d16 ~ ] | % 146
	 d2. ~ | % 147
	 d16 [ c d bes ] es4 ~ es8. [ e16 ~ ] | % 148
	 e2. ~ | % 149
	 e16 [ d e c ] f4 ~ f8. [ fis16 ~ ] | % 150
	 fis2. ~ | % 151
	 fis16 [ e fis d ] g4 ~ g8. [ g16 ~ ] | % 152
	 g8 [ c ] fis,4 r4 | % 153
	 r8 g8 cis,4 r4 | % 154
	 r16 d16 [ c bes ] a4 ~ a16 [ c b a ] | % 155
	 bes4 a a | % 156
	 s2. | % 157
	 d,16 [ c' b a ] d [ b c d ] e, [ d' c b ] | % 158
  	 c4 b2 ~ | % 159
	 b16 [ d cis b ] e [ cis d e ] fis, [ e' d cis ] | % 160
	 d4 cis2 ~ | % 161
	 cis16 [ fis e d ] g [ e fis g ] cis, [ e d cis ] | % 162
	 b4 ais r4 | % 163
	 b16 [ b' a g ] c [ a b c ] fis, [ a g fis ] | % 164
	 e4 dis r4 | % 165
	 e16 [ e' d c ] f [ d e f ] b, [ d c b ] | % 166
	 a4 gis4 r4 | % 167
	 a8 [ g fis e ] dis4 | % 168
  	 b4 d f | % 169
	 e4 f8 [ d ] gis4-\prallmordent | % 170
	 a4 fis dis | % 171
	 e8 r8 r4 r4 | % 172
	 r1*3/4 | % 173
	 s2. | % 174
	 s2. | % 175
	 s2. | % 176
	 s2. | % 177
	 s2. | % 178
	 s2. | % 179
	 s2. | % 180
	 s2. | % 181
	 s2. | % 182
	 s2. | % 183
	 s2. | % 184
	 s2. | % 185
	 s2. | % 186
	 s2. | % 187
	 s2. | % 188
  	 s2. | % 189
	 s2. | % 190
	 s2 d16 [ f gis b ] | % 191
	 s2. | % 192
	 s2. | % 193
	 s2. | % 194
	 s2. | % 195
	 s4 a,16 [ c dis fis ] a [ c dis fis ] | % 196
	 r8 <c, e>8 <b d >2 | % 197
	 <cis e >4 r4 r4 | % 198

  }

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative a {
	 s2.*119 | % 119
	 g16 [ b g a ] b [ g a b ] e, [ g fis e ] | % 120
	 dis16 [ fis dis e ] fis [ dis e fis ] r4| % 121
	 e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] | % 122
	 g16 [ a g fis ] e [ b' c d ] e [ d c b ] | % 123
	 c16 [ b a b ] c [ b a g ] fis [ a g fis ] | % 124
	 b16 [ a g a ] b [ a g fis ] e [ g fis e ] | % 125
	 a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] | % 126
	 e16 [ b e g ] b [ e, g b ] e [ d e b ] | % 127
	 c16 [ e, a c ] s2 | % 128
  	 s2. | % 129
	 s2. | % 130
	 s2. | % 131
	 s2. | % 132
	 s2. | % 133
	 s2. | % 134
	 s2. | % 135
	 s4 gis4.-\prallmordent gis8 | % 136
	 g16 [ c b a ] e' [ b c d ] e, [ d' c b ] | % 137
	 c4 g4. e'8 ~ | % 138
  	 e16 [ f e d ] c [ d c b ] a [ b c a ] | % 139
	 d16 [ e f e ] d [ c b a ] g [ f' e d ] | % 140
	 c16 [ d e c ] c [ b a g ] f [ e' d c ] | % 141
	 b16 [ c d c ] b [ a gis fis ] e [ d' c b ] | % 142
	 c4 r8 a8 [ c a ] | % 143
	 e'16 [ b, e g ] b [ e, g b ] s4 | % 144
	 s2. | % 145
	 s2. | % 146
	 s2. | % 147
	 s2. | % 148
	 r16 g,16 [ c e ] g [ c, e g ] c [ bes c g ] | % 149
	 aes4 ~ aes16 [ g aes f ] d'4| % 150
	 r16 a,16 [ d fis ] a [ d, fis a ] d [ c d a ] | % 151
	 bes4 ~ bes16 [ a bes g ] es' [ f es d ] | % 152
	 c16 [ d es d ] c [ bes a g ] fis [ a g fis ] | % 153
	 g16 [ a bes a ] g [ f e d ] cis [ e d cis ] | % 154
	 d16 [ c es d ] c [ bes a g ] fis [ a g fis ] | % 155
	 g16 [ bes a g ] d' [ a bes c ] d, [ c' bes g ] | % 156
	 bes'16 [ f e d ] a' [ e f g ] a, [ g' f e ] | % 157
	 s2. | % 158
  	 s2. | % 159
	 s2. | % 160
	 b4 eis r4	| % 161
	 fis4 e4 r4 | % 162
	 b'4 ais r4 | % 163
	 b,4 a'4 r4 | % 164
	 g4 fis r4 | % 165
	 e4 d' r4 | % 166
	 c4 b r4 | % 167
	 a16 [ c b a ] dis [ a b c ] fis, a gis fis ]  | % 168
  	 e16 [ gis fis e ] b' [ gis a b ] d, [ f e d ] | % 169
	 c16 [ e d c ] gis' [ d e f ] b, [ d c b ] | % 170
	 a16 [ c b a ] dis [ a b c ] fis, [ a gis fis ]  | % 171
	 s2. | % 172
	 s2. | % 173
	 gis'16 [ b gis a ] b [ gis a b ] d, [ f e d ] | % 174
	 c16 [ e c d ] e [ c d e ] a, [ c b a ]| % 175
	 gis16 [ b gis a ] b [ gis a b ] s4 | % 176
	 r4 <e a>4 r4 | % 177
	 a4 r4 r4| % 178
	 <b, e>4 r4 r4 | % 179
	 c'16 [ b a b ] c [ b a g ] fis [ g a g ] | % 180
	 fis16 [ e dis e ] fis [ e dis cis ] b [ a gis fis ] | % 181
	 e16 [ b' gis a ] b [ gis a b ] e, [ d' c b ] | % 182
	 c16 [ e c d ] e [ c d e ] a, [ g' fis e ] | % 183
	 r16 a16 [ fis g ] a [ fis g a ] dis, [ c' b a ] | % 184
	 gis16 [ b gis a ] b [ gis a b ] e, [ d' c b ] | % 185
	 <a, c e >4 r4 r4 | % 186
	 <fis a dis>4 r4 r4 | % 187
	 <gis b e>4 r4 r4 | % 188
  	 <a c e>4 r4 r4 | % 189
	 <fis a dis>4 r4 r4 | % 190
	 s2. | % 191
	 <e' a>4 r4 s4 | % 192
	 s2. | % 193
	 s2. | % 194
	 s2. | % 195
	 s2. | % 196
	 r4 e2 ~ | % 197
	 e4 r4 r4 | % 198
  
}

bassTwo = \relative c' {
		 r1*3/4 | % 1
	 r1*3/4 | % 2
	 r1*3/4 | % 3
	 r1*3/4 | % 4
	 r1*3/4 | % 5
	 r1*3/4 | % 6
	 r1*3/4 | % 7
	 r1*3/4 | % 8
	 r1*3/4 | % 9
	 r1*3/4 | % 10
	 r1*3/4 | % 11
	 r1*3/4 | % 12
	 r1*3/4 | % 13
	 r1*3/4 | % 14
	 r1*3/4 | % 15
	 r1*3/4 | % 16
	 r1*3/4 | % 17
	 a16 [ c b a ] e' [ b c d ] e, [ d' c b ] | % 18
	 c16 [ d c b ] a [ e' f g ] a [ g f e ] | % 19
	 f16 [ e d e ] f [ e d c ] b [ d c b ] | % 20
	 e16 [ d c d ] e [ d c b ] a [ c b a ] | % 21
	 d16 [ c b c ] d [ c b a ] gis [ b a gis ] | % 22
	 a16 [ e a c ] e [ a, c e ] a [ g a fis ] | % 23
	 g16 [ d, g b ] d [ g, b d ] g [ f g e ] | % 24
	 f16 [ f, a c ] f [ e d c ] b [ c b a ] | % 25
	 <gis b>4 r4 gis4 | % 26
	 a4 ~ a16 [ gis a b ] c [ d e f ] | % 27
	 f,4 ~ f16 [ e f g ] a [ b c d ] | % 28
  	 c,4 ~ c16 [ b a b ] c [ d e f ] | % 29
	 d,8 [ d' a d f, d' ] | % 30
	 d,8 [ d' ] c16 [ c' b a ] gis8 [ e ] | % 31
	 a16 [ f e d ] c8 [ d e e, ] | % 32
	 a16 [ c b a ] e' [ b c d ] e, [ d' c b ] | % 33
	 c4 ~ c16 [ d e f ] gis,8.-\prallmordent [ gis16 ] | % 34
	 a4 r8 e'8 [ c e ] | % 35
	 d8 [ f b, f' g, f' ] | % 36
	 c8 [ e a, e' f, e' ] | % 37
	 b8 [ d gis, d' e, d' ] | % 38
	 c4 r4 c4 ~ | % 39
	 c16 [ a b c ] d,8 [ c' fis, c' ] | % 40
	 b4 r4 b4 ~ | % 41
	 b16 [ g a b ] c,8 [ b' e, b' ] | % 42
	 a16 [ b c b ] a [ g fis e ] dis8 [ dis' ] | % 43
	 e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] | % 44
	 g16 [ a g fis ] e [ b' cis dis ] e [ d c b ] | % 45
	 c16 [ b a b ] c [ b a g ] fis [ a g fis ] | % 46
	 b16 [ a g a ] b [ a g fis ] e [ g fis e ] | % 47
	 a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] | % 48
	 e16 [ b e g ] b [ e, g b ] e [ d c b ]  | % 49
	 a4 r16 a16 [ e c ] a [ c e a ] | % 50
	 b,8 [ a' fis a dis, a' ] | % 51
	 g16 [ a b a ] g [ fis e d ] c [ b a g ] | % 52
	 a16 [ b c b ] a [ g fis e ] b' [c b a ] | % 53
	 g8 [ a ] b4. b8 | % 54
	 e,4 r4 g'4 ~ | % 55
	 g4 r4 fis4 ~ | % 56
	 fis4 r4 e4 ~ | % 57
	 e4 r8 c8 [ b a ] | % 58
  	 g8 [ fis e fis g e ] | % 59
	 b'4. cis8 [ d b ] | % 60
	 e16 [ b e gis ] b [ e, gis b ] e [ d e b ] | % 61
	 c4 ~ c16 [ b c a ] f'4 | % 62
	 r16 c,16 [ f a ] c [ f, a c ] f [ es f c ] | % 63
	 d4 ~ d16 [ c d bes ] g'4 | % 64
	 r16 d,16 [ g b ] d [ g, b d ] g [ f g d ]  | % 65
	 es4 ~ es16 [ d es c ] a'4  | % 66
	 r16 e,16 [ a cis ] e [ a, cis e ] \clef treble a16 [ g a e ] | % 67
	 f4 ~ f16 [ e f d ] bes' [ c bes a ]  | % 68
	 g16 [ a bes a ] g [ f e d ] cis [ e d cis ]  | % 69
	 d16 [ e f e ] \clef bass d [ c b a ] gis [ b a gis ] | % 70
	 a16 [ g bes a ] g [ f e d ] cis [ e d cis ] | % 71
	 d16 [ f e d ] a' [ e f g ] a, [ g' f e ] | % 72
	 f16 [ g f e ] d [ a' b cis ] d [ c bes a ] | % 73
	 bes16 [ a g a ] bes [ a g f ] e [ g f e ] | % 74
	 a16 [ g f g ] a [ g f e ] d [ f e d ] | % 75
	 g16 [ f e f ] g [ f e d ] cis [ e d cis ] | % 76
	 d16 [ a d f ] a [ d, f a ] d [ c d a ] | % 77
	 bes16 [ f, bes d ] f [ bes, d f ] bes [ a bes f ] | % 78
	 g16 [ a bes a ] g  [ f e d ] cis [ e d cis ] | % 79
	 d16 [ e d c ] bes [ a bes g ] a [ a' g a ] | % 80
	 d,16 [ a d f ] a [ d, f a ] d [ c d a ] | % 81
	 bes4 r16 c16 [ bes a ] g [ f e d ] | % 82
	 c16 [ g c e ] g [ c, e g ] c [ bes c g ] | % 83
	 a4 r16 bes16 [ a g ] f [ es d c ] | % 84
	 bes4 r4 r4 | % 85
	 g'4 r4 r4 | % 86
	 f4 e a | % 87
	 d,4 r4 r16 a'16 [ g f ] | % 88
  	 e4 d g | % 89
	 c,4 r4 r16 g'16 [ f e ] | % 90
	 a4 g f | % 91
	 g4 ~ g16 [ a g f ] e [ d c b ] | % 92
	 e8 [ f g f g g, ] | % 93
	 c8 [ d e d ] e16 [ c d e ] | % 94
	 f8 [ a d, a' b, a' ] | % 95
	 e8 [ g c, g' a, g' ] | % 96
	 d8 [ f b, f' g, f' ] | % 97
	 e8 [ d c d e c ] | % 98
	 f8 [ g a bes a g ] | % 99
	 fis8 [ e d e fis d ] | % 100
	 g8 [ a b a b g ] | % 101
	 c4 ~ c16 [ b c d ] e [ f g a ] | % 102
	 a,4 ~ a16 [ g a b ] c [ d e f ] | % 103
	 e,4 ~ e16 [ d c d ] e [ f g a ] | % 104
	 f,8 [ f' c f a, f' ] | % 105
	 f,8 [ f' ] e16 [ e' d c ]  b8 [ g ] | % 106
	 c16 [ a g f ] e8 [ f g g, ] | % 107
	 c16 [ e d c ] g' [ d e f ]  g, [ f' e d ] | % 108
	 c4 fis r4 | % 109
	 g4 cis, r4 | % 110
	 d4 gis r4 | % 111
	 a4 dis, r4| % 112
	 e4 ais4 r4 | % 113
	 b16 [ dis cis b ] fis' [ dis e fis ] a, [ c b a ] | % 114
	 g16 [ b a g ] dis' [ a b c ] fis, [ a g fis ]| % 115
	 e16 [ g fis e ] ais [ e fis g ] cis, [ e dis cis ] | % 116
  	 b2. ~ | % 117
	 b2. ~| % 118
	 b2. ~ | % 119
	 b2. ~ | % 120
	 b2 a16 [ c b a ] | % 121
	 g4 ~ g16 [ a b c ] dis, [ fis b dis, ] | % 122
	 e4 r4 r16 e'16 [ fis g ] | % 123
	 a8 [ a, ] r16 a16 [ b c ] d [ c b a ] | % 124
	 g4 r16 g16 [ a b ] c [ b a g ] | % 125
	 fis4 r16 fis16 [ g a ] b [ a g fis ] | % 126
	 g4 r16 a16 [ g fis ] e [ fis g e ] | % 127
	 a16 [ gis a b ] c [ d c b ] a [ b cis a ] | % 128
  	 d16 [ cis d e ] f [ g f e ] d [ e f d ] | % 129
	 e16 [ b e gis ] b [ e, gis b ] e [ d e b ] | % 130
	 cis4 r16 d16 [ cis b ] a [ g fis e ] | % 131
	 d16 [ a d fis ] a [ d, fis a ] d [ c d a ] | % 132
	 b4 r16 c16 [ b a ] g [ f e d ] | % 133
	 c4 r16 b'16 [ a g ] fis [ e d c ] | % 134
	 b4 r16 a'16 [ gis fis ] e [ d c b ] | % 135
	 a16 [ c b a ] e' [ b c d ] e,16 [ d' c b ] | % 136
	 c8 [ d e fis gis e ] | % 137
	 a2 gis4 | % 138
  	 a4 r4 r4 | % 139
	 r1*3/4 | % 140
	 r1*3/4 | % 141
	 r1*3/4 | % 142
	 r1*3/4 | % 143
	 r4 r8 e8 [ g e ] | % 144
	 a16 [ e, a cis ] e [ a, cis e ] a [ g a e ] | % 145
	 f4 ~ f16 [ e f d ] bes'4 | % 146
	 r16 f,16 [ bes d ] f [ bes, d f ] bes [ aes bes f ] | % 147
	 g4 ~ g16 [ f g es ] c'4 | % 148
	 s2. | % 149
	 s2. | % 150
	 s2. | % 151
	 s2. | % 152
	 s2. | % 153
	 s2. | % 154
	 s2. | % 155
	 s2. | % 156
	 g,4 cis r4 | % 157
	 d4 gis, r4 | % 158
  	 a4 dis r4 | % 159
	 e4 ais, r4 | % 160
	 s2. | % 161
	 s2. | % 162
	 d4 cis r4 | % 163
	 s2. | % 164
	 s2. | % 165
	 s2. | % 166
	 s2. | % 167
	 s2. | % 168
  	 s2. | % 169
	 s2. | % 170
	 s2. | % 171
	 e,2. ~  | % 172
	 e2. ~ | % 173
	 e2. ~ | % 174
	 e2. ~ | % 175
	 e2 d16 [ f e d ]  | % 176
	 c4 c' r4 | % 177
	 d4 r4 r4 | % 178
	 gis,4 r4 r4 | % 179
	 <a e'>4 r4 r4 | % 180
	 <dis, b'>4 r4 r4 | % 181
	 e4 r4 r4 | % 182
	 <e a>4 r4 r4 | % 183
	 <e fis a dis> r4 r4 | % 184
	 <e gis b e >4 r4 r4 | % 185
	 e4 r4 r4 | % 186
	 e4 r4 r4 | % 187
	 e4 r4 r4 | % 188
  	 e4 r4 r4 | % 189
	 e4 r4 r4| % 190
	 r16 e16 [ gis b ] d [ f gis b ] s4 | % 191
	 cis,4 r4 r16 a'16 [ b cis ] | % 192
	 d16 [ e f e ] d [ c b a ] gis [ b e, gis ] | % 193
	 c,16 [ d e d ] c [ b a b ] c [ d e f ] | % 194
	 gis,8 [ d' b d e, d' ]  | % 195
	 r16 a16 [ c e ] s2 | % 196
	 e,2. | % 197
	 a4 r4 r4 | % 198
 
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key a \minor \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key a \minor \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
