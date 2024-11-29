\version "2.24.1"
\language nederlands

\include "./common.ily"

viola = \relative d' {
  \common
  \clef alto
  \repeat volta 2 {
	\once \override Staff.Parentheses.font-size = 2
	d8\parenthesize \f 8 8 8 8 8 8 8 |
	8 8 8 8 a8 8 8 8 |
	1~ |
	8 fis'( a fis) d-. a( d fis) |
	a,1 |
	8 d4 fis4 8( e g) |
	fis8 8 8 8 a8 8 8 8 |
	g8 8 8 8 8 8( b e,) |
	a a,8 8 8 8 8 8 8 |
	8 8 8 8 8 8 8 8 |
	4 r8 a'8 4 r8 e8 |
	d4 r8 a'8 4 r8 g8 |

	fis8 8 8 8 8 8 8 8 |
	<a, fis'>8 q8 q8 q8 q8 d16 e fis8 8 |
	b,8 8 8 8 8 8 8 8 |
	<b gis'>8 q8 q8 q8 q8 e4 8~ |
	8 4 4 4 8~ |
	8 4 4 4 8 |
	4 r4 r2 |
	gis1 |
	a4 r4 r2 |
	r8 a8 a, b\turn cis e4 gis8 |
	a4 r8 a4 e8( d cis) |
	d8 8 8 8 8 8 8 8 |
	e cis8 8 8 8 8 8 8 |
	d8 8 8 8 8 8 b8 8 |
	cis( e) e-. e-. e4 r4 |
	a,8( fis') fis-. fis-. fis4 r4 |
	a,8( cis) cis-. cis-. cis4 r4 |
	d4 r4 r2 |
	r4 cis( d cis) |
	d8 4 4 4 fis8 |
	e8 8 8 8 8 8 d d |
	\repeat unfold 2 { cis-. cis( d b) cis-. e( fis d) | }
	cis-. a16( gis a gis a gis) a4-. r4 |
  } \repeat volta 2 {
	c8 8 8 8 8 8 8 8 |
	fis,8 8 8 8 a8 8 8 g! |
	b1~ |
	8 g'( b g) e4 r4 |
	b1~ |
	8 4 a g fis8 |
	e8 8 8 8 8 8 8 8 |
	e'8 8 8 8 8 8 8 8 |
	fis,1~ |
	8 d'( fis d) b4 r4 |
	fis1~ |
	8 fis'4 8 e2 |
	8 4 8 d2 |
	4 g,2 b8( e) |
	e4 a8. 16 a,4 r4 |

	r4 d,\p^"pizz." r d |
	r g r g |
	r a r a |
	r bes r bes |
	r f r f |
	r g r g |
	r g g gis |
	a a r a |
	r a r a |
	r a r a |
	bes r d r |
	e r4 r2 | R1 |

	d8\f^"arco" 8 8 8 8 8 8 8 |
	8 8 8 8 a8 8 8 8 |
	1~ |
	8 fis'( a fis) d4 r |
	a1 |
	8 fis'4 4 8( e g) |
	fis8 8 8 8 a8 8 8 8 |
	b g4 4 8( b e,)
	a,8 8 8 8 8 8 8 8 |
	8 8 8 8 8 8 8 8 |
	4 r8 a'8 4 r8 e8 |
	d4 r8 a'8 4 r8 g8 |

	fis8 8 8 8 <a, fis'>8 q8 q8 q8 |
	q8 q8 q8 q8 q8 q8 q8 q8 |
	d8 8 8 8 8 8 8 8 |
	<fis a>8 q8 q8 q8 q8 d4 8~ |
	8 4 4 4 8~ |
	4 a'( g) e |
	4 a( gis) b,8( gis) |
	a4 g'( e) cis |
	d2 cis4 e8( cis) |
	d( fis a d,) cis4 e8( cis) |
	d4 r4 r2 |
	r8 d8 d, e\turn fis a4 cis8 |
	d8 4 4 a'8( g fis) |
	g8 8 8 8 g,8 8 8 8 |
	a fis8 8 8 8 8 8 8 |
	g8 8 8 8 b b a8 8 |
	8( d) d-. d-. d4 r4 |
	b8( d) d-. d-. d4 r4 |
	d8( fis) fis-. fis-. fis4 r4 |
	g r4 r2 |
	r4 fis,( g fis) |
	g8 g'4 4 4 8 |
	a8 8 8 8 a,8 a g g |
	\repeat unfold 2 { fis fis' g e fis d b g | }
	fis8-. d'16( cis d cis d cis) d4-. r4 |
  }
}
