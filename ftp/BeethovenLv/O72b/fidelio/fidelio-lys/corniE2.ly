\version "2.18.0"
theHornssecond =  \relative c' {
	\transposition e
	\clef "treble"
	\time 2/2
	\key c \major

	< c c' >4.\f < g g' >8 < g g' >4-. r			|
	< e' e' >4.\sf < c c' >8 < c c' >4-. r			|
	< g' g' >4.\sf < e e' >8 < e e' >4-. < c c' >-.	|
	< g g' >-. r r2\fermata

	R1*8

	< c c' >4.\f < c c' >8 < c c' >4-. r
	< c c' >4.\sf < c c' >8 < c c' >4-. r
	< c c' >4.\sf < c c' >8 < c c' >4-. < c c' >-.
	< c c' >-. r r2\fermata

	R1*14

	< g g' >1\p~_\markup { \translate #(cons 4 0) \italic cresc. }
	< g g' >~
	< g g' >~
	< g g' >
	< g c' >~
	< g c' >
	< g g' >8\ff r < g g' > r < g g' > r < g g' > r
	< g g' > r < g g' > r < g g' > r < g g' > r
	< g g' >\p r r4 r2

	R1*20

	r2 < g g' >2\p~
	< g g' >1~_\cr
	< g g' >~
	< g g' >4 < d'' f >( < c e > < g d' >)
	< c, c' >\f r r2
	< c c' >4 r r2
	< d' f >4 r r < d f >				|
	< g, d' > r < g d' > r				|
	< c, c' > < c c' > r2				|
	< c c' >4 < c c' > r2				|
	< d' f >4 < d f > r < c e >			|
	< d f > < g, d' > < g d' > < g d' >	|
		% NOTE: The print version has the first chord < c e >. This produces
		% an overall E horn chord of < c d e f > -- not good. Probably meant to
		% match Horn I/II part, so it's fixed.
	< e c' > r < g g' > r
	< g g' > r < g g' > r
	< g g' >1\sf~
	< g g' >
	< g g' >4 r < g g' > r
	< g g' > r < g g' > r
	< g g' >1\sf~
	< g g' >~
	< g g' >~
	< g g' >4 < c, c' > < c' e > < c e >
	< c d > r r2

	R1*10

	r4 < g g' >\p r < g g' >
	< g g' >_\cr < g g' > r < g g' >
	< g g' > < g g' > r < g g' >
	< g g' >4\f < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< c, c' >1\ff
	R1
	< c c' >\sf
	R1
	< c' d >~
	< c d >
	< c d >4 r r2
	< c d >4 r r2
	d4^\markup{\bold "zu 2"} r d r					|
	d r d r							|
	d r < c e > r					|
	d^\markup{\bold "zu 2"} d\sf d d\sf				|
	< g, d' > < g, g' >\p~ < g g' > r
	r < g g' >\p~ < g g' > r
	r < g g' >\p~ < g g' > r
	r < g g' >\p~ < g g' > << { d''4\f~ } \\ { d4~ } >>
	<< { d4 } \\ { d4 } >> < g, d' >8 < g d' > < g d' >4 r					|
	< g d' >4 < g d' >8 < g d' > < g d' >4 r								|
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >8
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >8
	< g g' >4 r r2

	R1*32

	<< { g1~ } \\ { c,1\p~ } >>
	<< { g'1~ } \\ { c,1( } >>
	<< { g'1~ } \\ { g,1) } >>
    % To fix a stem collision I joined both voices into a chord. In
    % order to keep the relative positioning I needed to keep the
    % other voice around, hiding the note, so I wouldn't have to edit
    % a large chunk of the score. -gl
	<< { <g' c,>2 } \\ { \hideNotes c,2 \unHideNotes } >> < g g' >2~
	< g g' >1~_\cr
	< g g' >~
	< g g' >~
	< g g' >~
	< g g' >
	< c e >4\f r r2
	< c c' >4 r r2
	< d' f >4 r r < d f >
	< g, d' > r < g d' > r
	< c, c' > < c c' > r2
	< c c' >4 < c c' > r2
	< d' f >4 < d f > r < c e >			|
	< d f > < g, d' > < g d' > < g d' >	|
	< e c' > r < g g' > r
	< g g' > r < g g' > r
	< g g' >1\sf~
	< g g' >
	< g g' >4 r < g g' > r
	< g g' > r < g g' > r
	< g g' >1\sf~
	< g g' >~
	< g g' >~
	< g g' >
	< c g' >~
	< c g' >2 < c, c' >8[ < c c' > < c c' > < c c' >]
	< c c' >4 r r2

	R1*17

	eflat'4\f^\markup{\bold "zu 2"} eflat8 eflat eflat4 eflat8 eflat
	eflat4 eflat8 eflat eflat4 eflat8 eflat
	< c, c' >1\ff
	R1
	f'1^\markup{\bold "zu 2"}
	f
	f~
	f
	f4 r r c\sf							|
	f r r c\sf							|
	f c\sf f c\sf						|
	f c\sf f c\sf						|
	< c, c' >4 r r2

	<< { eflat'4 eflat\sf eflat eflat\sf } \\ { eflat4 eflat eflat eflat } >>
	< c, c' >4 r r2
	< c c' >4 r r2
	< c c' >4 r r2
	< c c' >4 r r2
	eflat'4^\markup{\bold "zu 2"} eflat8 eflat eflat4 r |
	eflat4 eflat8 eflat eflat4 r |
	eflat4 eflat8 eflat eflat4 r |
	eflat4 eflat8 eflat eflat4 r |
	< c, c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< c c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< g g' >4 r r << { d''4\f~ } \\ { d4~ } >>
	<< { d4 } \\ { d4 } >> r r << { d4\f~ } \\ { d4~ } >>
	<< { d4 } \\ { d4 } >> r r << { d4\f~ } \\ { d4~ } >>
	<< { d4 } \\ { d4 } >> r r << { d4\f~ } \\ { d4~ } >>
	<< { d4 } \\ { d4 } >> < g,, g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4\ff < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	<< { g'4 g8 g g4-. } \\ { g4 g8 g g4-. } >> < c e >4-.
	< g d' >4-. r r2\fermata

	R1*12

	< d' f >1\p(
	< g, d' >)\fermata

	R1*10

	< c, c' >4.\f < g g' >8 < g g' >4 r
	< c c' >4.\sf < g g' >8 < g g' >4 r
	<< { d''4. } \\ { d4.\sf } >> < g,, g' >8 < g g' >4 r
	< g' g' >4.\sf < g, g' >8 < g g' >4 r
	c'4.\p^\markup{\bold "zu 2"} g8 g4 r
	c4. g8 g4 r
	d'4. g,8 g4 r
	g'4. g,8 g4 r
	c4._\cr c8 c4 r
	c4. c8 c4 r
	c4. c8 c4 r
	c4. c8 c4 r
	< d f >1~
	< d f >1~
	< d f >1~
	< d f >1
	< d f >\f~
	< d f >~_\markup { \italic {sempre piu \dynamic f} }
	< d f >~
	< d f >
	< d f >\ff~
	< d f >1~
	< d f >1~
	< d f >1
	< c, c' >4\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < g' g' >\sf < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< c, c' >4\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < g' g' >\sf < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< c, c' > r r2

	< c c' >4.\sf < g g' >8 < g g' >4 r
	< e' e' > r r2
	< e e' >4.\sf < c c' >8 < c c' >4 r
	< g' g' > r r2
	< g g' >4. < e e' >8 < e e' >4 r
	<< { c'4 } \\ { c4 } >> r4 r2
	c4.\sf^\markup{\bold "zu 2"} g8 g4 r
	c g c g
	c g c g
	c g c g
	c g c g
	c r r2
	< c, c' >4 r r2
	< c c' >4 r r2\fermata
}