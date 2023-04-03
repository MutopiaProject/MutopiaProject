\version "2.24.1"
\language nederlands

\include "./common.ily"

violinII = \relative d' {
  \common
  \clef treble
  \repeat volta 2 {
	\once \override Staff.Parentheses.font-size = 2
	fis8\parenthesize \f 8 8 8 8 8 8 8 |
	a8 8 8 8 fis8 8 8 8 |
	\repeat unfold 3 { e16( fis g fis) } e( fis g e) |
	fis4 r4 r8 d8( fis a) |
	\repeat unfold 3 { cis,16( d e d) } cis( d e cis) |
	d8 a'4 4 4 8 |
	8 8 8 8 d8 8 8 8 |
	8 b4 4 8( e g) |
	\grace eis16 fis2 \grace eis16 fis4 \grace eis16 fis4 |
	\grace dis16 e4 \grace dis16 e4. d16 e fis e d cis |
	d4 r8 cis8 d4 r8 g,8 |
	fis4 r8 cis'8 d4 r4 |

	d'2. a8. fis16 |
	d4 a8. fis16 d8 fis'16 gis a8 a |
	\grace b16 a8.\trill gis16 4 r2 |
	r2 r8 gis,16 a b8 8 |
	a4 r4 r2 |
	R1 |
	r16 a b cis d e fis gis a b cis b a gis fis e |
	d b cis d e fis gis a b a gis a gis fis e d |
	cis8 a' a, b\turn cis a' cis, d\turn |
	e a4 gis8 a e( cis b) |
	a cis4 e a,4 8 |
	8 8 8 8 8 8 8 8 |
	g8 8 8 8 8 8 8 8 |
	fis8 8 8 8 b, b e e |
	e( a) a-. a-. a4 r4 |
	fis8( a) a-. a-. a4 r4 |
	cis,8( a') a-. a-. a4 r4 |
	a4 r4 r2 |
	r8 a,4 4 4 8 |
	8 fis'8 8 8 8 fis' \grace e16 d8 cis16 b |
	a4 a2 gis4\trill |
	\repeat unfold 2 { a4 r4 r8 cis16( e) \stemDown d( b) a( gis) \stemNeutral | }
	a8-. cis16( d cis d cis d) cis4-. r4 |
  } \repeat volta 2 {
	e,8 8 8 8 8 8 8 8 |
	dis8 8 8 8 8 8 8 e |
	fis16( \repeat unfold 3 { g a g fis } g a fis |
	g4) r4 r8 g'8( e b) |
	dis16( \repeat unfold 3 { e fis e dis } e fis dis |
	e8) g,4 fis e d8 |
	cis8 8 8 8 8 8 8 8 |
	8 8 8 8 ais8 8 8 8 |
	cis16( \repeat unfold 3 { d e d cis } d e cis |
	d4) r4 r8 d'8( b fis) |
	ais,16( \repeat unfold 3 { b cis b ais } b cis ais |
	b4) d'8.\trill( cis32 d) b'4 r4 |
	r4 c,8.\trill( b32 c) a'4 r4 |
	r8 d,4( dis8) e b4 8 |
	e,4 <cis' e>8. q16 q4 r4 |

	\stemUp d,16\p( cis d e f g f e d cis d e f e f d) |
	e( bes' d c bes c bes a bes a g a g f e f) |
	e( d cis d e f g f g a bes a c bes a g) |
	f( e d cis d e d e f e d cis d e f g) |
	a( g f e d e f g a g f e d f g a) |
	bes( a g f e f g a bes c bes a g a bes g) |
	e( f g f g a bes a g f e g f b d f,) |
	e( d cis d e d e cis d e f g a f e d) |
	cis( d e d cis b cis a d e f g a f e d) |
	cis( \repeat unfold 3 { d e d cis } d e cis) \stemNeutral |
	d2 gis |
	a8-. a([ b a)] g( fis g e) |
	fis-. fis([ g fis)] e( d e cis) |

	d\f fis8 8 8 8 8 8 8 |
	a8 8 8 8 fis8 8 8 8 |		% See violin1.ily
	e16( \repeat unfold 3 { fis g fis e } fis g e) |
	fis4 r4 r8 fis8( d a') |
	cis,16( \repeat unfold 3 { d e d cis } d e cis) |
	d8 a'4 4 4 8 |
	8 8 8 8 d8 8 8 8 |
	8 b4 4 8( e g) |
	\grace eis16 fis2 \grace eis16 fis4 \grace eis16 fis4 |
	\grace dis16 e4 \grace dis16 e4. d16 e fis e d cis |
	d4 r8 cis8 d4 r8 g,8 |
	fis4 r8 cis'8 d4 r4 |

	d'2. a8. fis16 |
	d4 a8. fis16 d8 d''8 8 8 |
	d( c) c4 r2 |
	r2 r8 fis,16 g a8 a |
	g4 g,( fis) fis'( |
	g) c,( b) b, |
	a16 a' cis e a gis fis e d cis b a gis b e d |
	cis b a b cis d e fis g fis e d cis b a g |
	fis4 a'2.~ |
	1~ |
	8 d,8 d, e\turn fis d' fis, g\turn |
	a fis4( g8) a-. a( fis e) |
	d a'4 4 d d8 |
	8 8 8 8 d,8 8 8 8 |
	c8 8 8 8 8 8 8 8 |
	b8 8 8 8 e8 8 8 8 |
	d( a') a-. a-. a4 r4 |
	d,8( b') b-. b-. b4 r4 |
	fis8( d') d-. d-. d4 r4 |
	d4 r4 r2 |
	r8 d,4 4 4 8~ |
	8 b'8 8 8 8 d \grace a'16 g8 fis16 e |
	d4 2 cis4\trill |
	\repeat unfold 2 { d8-. a16( c) b( d) cis( e) d4 r4 | }
	d8-. d16( e d e d e) d4-. r4 |
  }
}
