\version "2.18.2"

prelGlobal = { \time 4/4 \key a \minor }

prelUpstaff = \change Staff = prelUpper
prelLowstaff = \change Staff = prelLower

dashedGliss = \once \override Glissando.style = #'dashed-line
shiftNote = \once \override NoteColumn #'force-hshift = #1
posBeamA = \once \override Beam.positions = #'(2 . 0.3)
posScriptA = \once \override Script.padding = #0.8

prelI = \relative c'' {
	% 1
	s1 |
	s |
	\voiceOne s4 r16 b_\mf
		a^\prall gis a8^\mordent b16 a32 b c16 a f'8 ~ |
	f8. e16 e d e b << c4 \\ { r16 s8. } >> d4\rest |
	% 5
	f16\rest c8 c16 b c a b gis8.^\prall gis16 a c b^\prall a |
	d4 r16 f! e d cis a d8 ~ d16[e32 b c!8] |
	b4 r16 d c b a4 r16 f' e d |
	g4 r16 bes a g f4 f |
	r16 a g f e4 r16 c' b a b4 |
	% 10
	e, s s2 |
	b8\rest b16\rest a16 c,4 ~ c b |
	a16 e' cis a f'!4 ~ f16 f e d e8 gis |
	a1\fermata | \bar "|."
}

prelII = \relative c'' {
	% 1
	\oneVoice
	R1\f |
	r2 r16 c,16 b c32 d gis,8. a16 |
	a4^\mordent \voiceTwo r e' r8 c' |
	b4 r8 s s16 gis a e c e \prelLowstaff \stemUp a, b32 c |
	% 5
	\prelUpstaff \voiceTwo
	r8 f ~ f4 e s |
	r16 a b fis gis4 a ~ a8. g16 |
	f!4 e e d8 a' |
	b16\rest d e b cis4 b16\rest e d cis d4 |
	d c! d r16 f e d ~ |
	% 10
	d d c b c32 b a g! f e d c \prelLowstaff b[ a b c] \prelUpstaff \stemUp d e f e \posBeamA d[ c \prelLowstaff b a] \stemDown g fis e fis |
	\prelUpstaff s4 r16 \stemDown \tieDown gis8 a16 ~ a gis a8 ~
		a16 fis gis8 |
	a4 d16 cis! d8 ~ d4 ~ d16 cis! d b |
	<cis e>1
}

prelIII = \relative c' {
	% 1
	s1 |
	s |
	\voiceThree s4 b16\rest d c b c8 d16 c32 d e8. d32 c |
	d4 r8 \prelUpstaff \once\stemDown \dashedGliss e8\glissando \prelLowstaff \shiftOff e4 s4 |
	% 5
	r8 a, d c b4 a8 a |
	b4 r8 e f!8. e32 d e4 |
	d16 d c b e8 d cis16 b cis a d4 |
	e4 e d a' |
	g4 g8 a ~ a4 gis |
	% 10
	a s s2 |
	dis,,4_~ dis8. dis16 e8. dis16 e8. d16 |
	cis4 r8. gis'16 a2 ~ |
	a1
}

prelIV = \relative c {
	% 1
	\voiceFour
	d16\rest a'32[b c d e f] gis,8 d\rest d16\rest c' b a gis! a b fis | \noBreak
	gis dis e b \stemUp c gis a dis, e8 d'\rest d\rest <e d b e,> |
	<e c a>4 a,\rest \stemDown \tieDown a' d,8\rest a' |
	gis4 r8  << { b8 \shiftOn  a4 \shiftOff } \\ { gis8 \shiftOn \shiftNote a4 \shiftOff } >> d,\rest |
	% 5
	d2. c4 |
	b b' a2 ~ |
	a4 g ~ g f |
	e a d, d16\rest cis' d a |
	b4 d,16\rest c'! b a b4 d,8\rest b' | 
	% 10
	a4 d,\rest s2 |
	s2. d,8\rest e8 |
	a1 ~ |
	\posScriptA a_\fermata
}
