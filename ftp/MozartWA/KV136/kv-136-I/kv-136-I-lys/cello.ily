\version "2.24.1"
\language nederlands

\include "./common.ily"

cello = \relative d {
  \common
  \clef bass
  \repeat volta 2 {
	\once \override Staff.Parentheses.font-size = 2
	d8\parenthesize \f \repeat unfold 31 { d8 } |
	\barNumberCheck #5
	a8 8 8 8 8 8 8 8 |
	d8 8 8 8 8 8 e e |
	fis8 8 8 8 8 8 8 8 |
	g8 8 8 8 8 8 8 8 |
	a8 8 8 8 8 8 8 8 |
	a,8 8 8 8 8 8 8 8 |
	d4 r8 a8 d4 r8 a'8 |
	d,4 r8 a8 d4 r8 a'8 |

	\repeat unfold 16 { d,8 } |
	\repeat unfold 15 { e } gis |
	a8 8 8 8 cis8 8 8 8 |
	b8 8 8 8 gis8 8 8 8 |
	a8 8 8 8 cis8 8 8 8 |
	b8 8 8 8 e,8 8 8 8 |
	a,4 r4 r2 |
	r2 r8 a'8 a, b\turn |
	cis8 8 8 8 8 8 8 8 |
	d8 8 8 8 8 8 8 8 |
	e8 8 8 8 8 8 8 8 |
	d8 8 8 8 8 8 8 8 |
	cis8 8 8 8 4 r4 |
	d8 8 8 8 4 r4 |
	e8 8 8 8 4 r4 |
	fis4 r4 r2 |
	r4 e( d cis) |
	d8 8 8 8 8 8 8 8 |
	e8 8 8 8 8 8 8 8 |
	\repeat unfold 20 { a,8 } a4-. r4 |
  } \repeat volta 2 {
	c8 8 8 8 8 8 8 8 |
	\repeat unfold 32 { b8 } |
	e e fis8 8 g g, g gis |
	a8 8 8 8 8 8 8 8 |
	8 8 8 8 g'8 8 8 8 |
	fis8 8 8 8 8 8 8 8 |
	b,8 8 8 8 8 8 8 8 |
	fis'8 8 8 8 8 8 8 8 |
	b8 8 8 8 gis8 8 8 8 |
	a8 8 8 8 fis8 8 8 8 |
	g!8 8 8 8 8 8 gis8 8 |
	a4 a,8. 16 4 r4 |

	d4\p^"pizz." r d r |
	g r g r |
	a r a r |
	bes r bes r |
	f r f r |
	g r g r |
	g r g gis |
	a r a r |
	a, r a r |
	a' r a r |
	bes r bes, r |
	a r4 r2 |
	r8 a'8^"arco"( b! a g! fis g e) |

	d8\f \repeat unfold 31 { d8 } |
	a8 8 8 8 8 8 8 8 |
	d8 8 8 8 8 8 e e |
	fis8 8 8 8 8 8 8 8 |
	g8 8 8 8 8 8 8 8 |
	a8 8 8 8 8 8 8 8 |
	a,8 8 8 8 8 8 8 8 |
	d4 r8 a8 d4 r8 a'8 |
	d,4 r8 a8 d4 r8 a'8 |

	\repeat unfold 32 { d,8 } |
	g g b b a a d, d |
	g g a a g8 8 8 gis |
	a a cis cis b b e, e |
	a, a e' e cis cis a a |
	d d fis fis e e a, a |
	d d fis fis e e a, a |
	b4 r4 r2 |
	r2 r8 d8 d, e\turn |
	fis fis'8 8 8 8 8 8 8 |
	g8 8 8 8 g,8 8 8 8 |
	a8 8 8 8 8 8 8 8 |
	g8 8 8 8 g'8 8 8 8 |
	fis8 8 8 8 4 r4 |
	g8 8 8 8 4 r4 |
	a8 8 8 8 4 r4 |
	b4 r4 r2 |
	r4 a,4( g fis) |
	g8 8 8 8 g'8 8 8 8 |
	a8 8 8 8 a,8 8 8 8 |
	\stemDown \repeat unfold 20 { d8 } \stemNeutral d,4-. r4 |
  }
}
