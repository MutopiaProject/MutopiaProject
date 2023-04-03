\version "2.24.1"
\language nederlands

\include "./common.ily"

violinI = \relative d'' {
  \common
  \clef treble
  \repeat volta 2 {
	\once \override Staff.Parentheses.font-size = 2
	a'1\parenthesize \f |
	\grace g16 fis2 \grace e16 d2 |
	\repeat unfold 3 { cis16( d e d) } cis( d e cis) |
	d4 r r8 a'( fis d) |
	\repeat unfold 3 { e16(fis g fis) } e( fis g e) |
	fis4 d4. e16 fis g a b cis |
	d2 a4 fis |
	fis16( g dis e) e4 r8 e( g b) |
	\grace gis16 a2 \grace gis16 a4 \grace gis16 a4 |
	\grace a16 g4 \grace fis16 g4. fis16 g a g fis e |
	d! a fis a d a e' a, fis' d a' fis g e d cis |
	d a fis a d a e' a, fis' d fis a g e d cis |
	d4 r4 r2 | R1 |
	\barNumberCheck #15
	d'2. b8. gis16 |
	d4 b8. gis16 e8 b'16 cis d8 d |
	cis16 a b cis d e fis gis a b cis b a gis fis e |
	d b cis d e fis gis a b a gis a gis fis e d |
	cis4 e2.~ |
	1~ |
	4 r4 r8 a a, b\turn |
	cis4 cis8 d e cis'16 a e8 d |
	cis e a4. g8(fis eis) |
	\grace eis16 fis2 \grace eis16 fis4 \grace eis16 fis4 |
	ais,,1 |
	b2 fis''4 gis |
	\repeat unfold 3 { a2~ 16 gis-. fis-. e-. d-. cis-. b-. a-. | }
	a'8-. gis16-. fis-. e-. d-. cis-. b-. a-. gis-. fis-. e-. d-. cis-. b-. a-. |
	g!4( g' fis eis) |
	fis a'2 \grace gis16 fis8 e16 d |
	cis8 e \grace d16 cis8 b16 a b2\trill |
	\repeat unfold 2 { a8 e'16( g!) fis( a) gis( b) a4 r4 | }
	a,8-. a'16( b a b a b) a4-. r4
  } \repeat volta 2 {
	a1 |
	\grace b16 a2 \grace g!16 fis4. e8 |
	dis16( \repeat unfold 3 { e fis e dis } e fis dis |
	e4) r4 r8 b'8( g e) |
	fis16( \repeat unfold 3 { g a g fis } g a fis |
	g4) r4 r2 |
	g1 |
	\grace fis16 e2 \grace d16 cis2 |
	\stemDown ais16( \repeat unfold 3 { b cis b ais } b cis ais |
	\stemNeutral b4) r4 r8 fis'8( d b) |
	cis16( \repeat unfold 3 { d e d cis } d e cis |
	d4) r4 e,16 fis gis a! b c d b |
	c4 r4 d,16 e fis g a b c a |
	b4 b'4. \grace a16 g8 \grace fis16 e8 \grace e16 d8 |
	cis!4 <a a'>8. q16 q4 r4 |
	a'1\p | bes | cis, |
	d4 r4 r2 |
	d2. a'8( f) |
	e4 e r4 r8 bes'8 |
	2.( d,4) |
	cis \repeat unfold 2 { r8 a' \grace g16 f2\trill |
	e4 } r8 a8 a a a a |
	gis4( f e d) |
	cis r4 r2 | R1 |
	a'1\f |						% Have to copy it verbatim, because
								% the slurs are different
	\grace g16 fis2 \grace e16 d2 |
	cis16( \repeat unfold 3 { d e d cis } d e cis) |
	d4 r r8 a'( fis d) |
	e16( \repeat unfold 3 { fis g fis e } fis g e) |
	fis4 d4. e16 fis g a b cis |
	d2 a4 fis |
	fis16( g dis e) e4-. r8 e( g b) |
	\grace gis16 a2 \grace gis16 a4 \grace gis16 a4 |
	\grace a16 g4 \grace fis16 g4. fis16 g a g fis e |
	d! a fis a d a e' a, fis' d a' fis g e d cis |
	d a fis a d a e' a, fis' d fis a g e d cis |
	d4 r4 r2 | R1 |
	\barNumberCheck #79
	<d, fis' a>2. a''8. fis16 |
	c4 a8. fis16 d8 a''16 b c8 c |
	b16-. a-. g( fis) g-. fis-. e( d) c fis a g fis e d c |
	b d g fis g fis e dis e g b a g fis e d |
	cis4 e2.~ |
	4 a2.~ |
	16 d, fis a d cis b a g fis e d cis e a g |
	fis e d cis d a b fis g fis e d cis e a g |
	fis4 r4 r8 d'8 d, e\turn |
	fis d'4( cis8) d( fis16 d) a8( g) |
	fis4 d''4. c8( b ais) |
	\grace ais16 b2 \grace ais16 b4 \grace ais16 b4 |
	dis,,1 |
	e2 b''4 cis |
	\repeat unfold 3 { d2~ 16 cis-. b-. a-. g-. fis-. e-. d-. | }
	d'8-. cis16-. b-. a-. g-. fis-. e-. d-. cis-. b-. a-. g-. fis-. e-. d-. |
	c2( b4 ais) |
	b4 d''2 \grace cis16 b8 a16 g |
	fis8 a \grace g16 fis8 e16 d e2\trill |
	\repeat unfold 2 { d4 r4 r8 fis16( a) g( e) d( cis) | }
	d8-. fis16( g fis g fis g) fis4-. r4 |
  }
}
