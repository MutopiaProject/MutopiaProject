\version "2.14.2"

mfp = \markup{\dynamic mfp}

markings = {\time 6/8 s2.*41 \bar "|."}
incmidi = "midi.ly"

flauto = \relative c''' {
	\key bes \major
	\clef treble

	R2.*5 |

	d4.\p ~ d4( cis8) |
	d r r r4 r8 |
	ees4\f c16.( a32) bes8 r r |
	R2.*7 |
	r4 r8 bes,16( c d ees f g) |
% 2
	aes4(_\mfp b,8) r4 r8 |
	r4 r8 c16\p( d e f g a) |
	bes4(_\mfp cis,8) r4 r8 |
	r2. |
	r8 r16 d'16( c bes a8) r r |

	r2. |
	r4 d8( ees c a |
	fis4) r8 r4 r8 |
	R2.*2 | 

	g4.(\cresc aes)\f |
	g8 r r r4 r8 |
	R2.*8 | 
	
	r2.^\fermata |
	r |
	r8 r16 d'(\cresc f ees8 cis16 ees d8 a16)\f |
	c( bes8 fis16 a g) bes16\p( aes8 g fis16) |
	g8-. r bes-. g8 r r 
}

oboe = \relative c'' {
	\key bes \major
	\clef treble

	R2.*4 | 
	d4.\p ~ d4( cis8) |

	d8 r r r4 r8 |
	r2. |
	a'4\f( ees8) d r r |
	r2.*7 | 
	r4 r8 bes16\p( c d ees f g) |
% 2
	aes4\mf( b,8)\p r4 r8 |
	r4 r8 c16\p( d e f g a) |
	bes4\mf( cis,8)\p r4 r8 |
	r2. |
	r8 r16 bes'16( a g fis8) r r |

	r2. |
	r4 d8( ees c a |
	fis4) r8 r4 r8 |
	R2.*2
	
	bes4.(\cresc b4.)\f |
	c8 r r r4 r8 |
	R2.*8

	r2.^\fermata | r |
	r4 r8 r4 d8\f ~ |
	d( c bes) c\p( bes a) |
	g-. r d'-. bes r r |
}

fagotto = \relative c' {
	\key bes \major
	\clef bass

	R2.*3
	ees8\p( d c bes a g |
	d') r r r4 r8 |
	
	R2.*2 |
	f4.\f ~ f8 r r |
	R2.*8 |
% 2
	f2._\mfp( |
	ees8) r r r4 r8 |
	g2._\mfp( |
	fis8) r r r4 r8 |
	r2. |

	r4 r8 c4.( |
	d c |
	d4) r8 r4 r8 |
	R2.*2 |

	ees4.\cresc( f4.)\f |
	e8 r r r4 r8 |
	R2.*10 |
	r4 r8 r16 cis16(\cresc ees16 d8 a16)\f |
	c16( bes8 fis16 a g) bes16\p( aes8 g fis16) |
	g8-. r g-. g, r r |
}

violinoI = \relative c'' {
	\key bes \major
	\clef treble

	g8\p r g g r g |
	g r g g r fis |
	g r g c r g |
	fis r fis g r bes |
	a r d d r cis |

	d r d d r cis |
	d r d e r e |
	ees\f r ees, d r f\p |
	f r f f r ees |
	d r bes' bes r b |
	c r c des r bes |

	a r f ees' r d |
	g r f( ees d c) |
	d r d d r d |
	d r d( c bes a) |
	bes r bes bes r bes |
% 2
	b\mf r b\p b r b |
	c r c c r c |
	cis\mf r cis\p cis r cis |
	d r c bes r bes |
	a8 r16 d( c bes) a8-. r bes |

	a r d ees r ees |
	d r d ees r ees |
	c r c c r bes |
	ees r d cis r c |
	bes r a g r fis |

	g r g\f aes r b |
	c r c\p g' r g |
	bes r bes cis r cis, |
	d r a c r bes |
	ees r d( cis c bes) |
% 3
	aes r aes g r fis |
	g r g g r g |
	g r g g r g |
	g r d bes' r a g r r fis r r |

	g r r fis r r^\fermata |
	g r r d''16\p( a c bes8 fis16) |
	a( g8 d16 f_"cresc." ees8 cis16 ees d8 a16)\f |
	c( bes8 fis16 a g) bes16\p( aes8) g fis16 |
	g8-. r d-. bes r r |
}

violinoII = \relative c' {
	\key bes \major
	\clef treble

	d8\p r d d r d |
	f r f ees r <c ees> |
	d r d g r c, |
	c r c bes r g' |
	fis r fis g r g |

	fis r fis g r g |
	fis r f a r a |
	a\f r a, bes r d\p |
	d r d d r c |
	bes r d f r aes |
	g r g bes r des, |

	c r a c' r bes a r bes bes4. |
	bes8 r bes bes r bes |
	bes r f( ees d c) |
	d r d d r d |
% 2
	d\mf r d\p d r d |
	c r e e r e |
	e\mf r e\p e r e |
	d r <fis a> g r g |
	fis r16 bes( a g) fis8-. r g |

	fis r fis g r g |
	fis r fis g r g |
	fis r fis a r g |
	fis r g g r fis |
	g r ees d r c |

	bes r bes\f b r aes' |
	g r g\p c r c |
	g' r g bes r g, fis r fis a r g |
	fis r g ~ g( fis g) |
% 3
	ees8 r c bes r a |
	a r a a r a |
	a r a a r a |
	bes r bes g' r fis |
	g r r c, r r |

	bes r r c r r^\fermata |
	bes r r r4 r8 |
	r4 r8 r4 d8\f ~ |
	d( c bes) ees\p( d c) |
	bes-. r bes g r r |
}

viola = \relative c' {
	\key bes \major
	\clef alto

	bes8\p r bes bes r bes |
	<b d> r <b d> c r a |
	bes r bes g r g |
	a r a g r d' |
	d r d ees r ees |

	d r d bes' r a |
	a r a e r e |
	f\f r c bes r bes\p |
	bes r bes bes r a |
	bes r bes d r f |
	ees r ees g r g |

	f r c f r f |
	c' r d r r g, |
	f r f f r f |
	f2. ~ |
	f8 r f f r f |
% 2
	f\mf r f\p f r f |
	ees r g g r g |
	g\mf r g\p g r g |
	fis r d d r d |
	d r d d r d |

	d r a' a r a |
	a r a a r a |
	a r a ees r d |
	a' r bes e, r d |
	d r c bes r a |

	g r ees'\f f r d |
	g, r g'\p g r g |
	cis r cis g r g |
	a r d, d r d |
	a r d( e d4) |
% 3
	c8 r ees d r d |
	e r d cis r d |
	e r d cis r cis |
	d r g, d' r c |
	bes r r d r r |

	d r r a r r^\fermata |
	g r r fis'\p( g d |
	ees b c_"cresc." a bes c)\f |
	bes( a g) c\p( bes a) |
	g-. r g-. g r r |
}

violoncello = \relative c' {
	\key bes \major
	g8\p r g g r g
	g r g g r g
	g r g ees r ees
	d r d d r d
	d r d' ees r ees
	d r d ees r ees
	d r d cis r cis
	c r f, bes r bes\p
	bes r bes, f' r f 
	g r g d r d
	ees r ees e r e
	f r f a r bes
	ees, r d g'( f e)
	f r f f r f 
	f r f f,4.
	bes8 r bes bes r bes	
% 2
	g\mf r g\p g r g
	c, r c' c r c
	a\mf r a\p a r a
	d, r d' d r d
	d r d d r d
	d r d c r c
	d r d c r c
	d r d fis, r g
	c, r bes a r d g, r c d r d
	ees r ees\f d r f
	e r e'\p e r e
	ees r ees ees r ees
	d r d fis, r g
	c, r bes( a d g,)
% 3
	c r c d r d
	cis r d ees r d
	cis r d ees r e
	d r d d r d
	g r r d r r
	g, r r d' r r^\fermata
	g r r fis'( g d
	ees b c\cresc a bes) fis\f(
	g d ees) c\p( d) d
	g, r g g r r
}

contrabasso = \relative c' {
	\key bes \major
	g8\p r g g r g
	g r g g r g
	g r g ees r ees
	d r d d r d
	d r r r4 r8
	R2.*2
	r4 r8 bes' r bes
	bes r bes, f' r f 
	g r g d r d
	ees r ees e r e
	f r f a r bes
	ees, r d r4 r8
	r2.
	r4 r8 f4.
	bes8 r bes bes r bes	
% 2
	g\mf r g\p g r g
	c, r c' c r c
	a\mf r a\p a r a
	d, r r r4 r8
	R2.*3 |
	r4 r8 fis r g
	c, r bes a r d g, r c d r d
	ees r ees\f d r f
	e r r r4 r8
	r2.
	r4 r8 fis r g
	c, r bes( a d g,)
% 3
	c r c d r d
	cis r d ees r d
	cis r d ees r e
	d r d d r d
	g r r d r r
	g, r r d' r r^\fermata
	g r r r4 r8
	r4 r8 r4 fis8\f(
	g d ees) c\p( d) d
	g, r g g r r
}

pamina = \relative c'' {
	\key bes \major
	\clef treble

	r4 r8 d4 c16( bes) |
	\acciaccatura a16 g8 r g g'4 f16( ees) |
	ees8 d r c8.( ees16) d32( c bes a) |
	\acciaccatura g16 fis8 r fis g4 bes16. a32 |
	a4 r8 g'4 cis,8 |

	d8 r d g( bes) cis, |
	d4 r8 r4 r8 |
	r4 r8 f4 d8 |
	bes4 d16( bes) f4 ees8 |
	ees d r bes'4 b8 |
	b( c) c16.( des32) des8.( ees32 des c16) bes |

	a4 r8 f16( a c ees) cis( d) |
	a16( c ees g) e16( f) f( ees) ees( d) d( c) |
	bes8 ~ bes32( c bes a) bes( c d ees) f( g f e) f( g f e) f( g a bes) |
	f16-.( g-. a-. bes)-. f( d) d32( c ees c bes8) a |
	bes4 r8 r4 r8 |
% 2
	r4 r8 f'4 b,8 |
	d c r8 r4 r8 |
	r4 r8 g'4 cis,8 |
	e d d16 c bes8. d16 c bes |
	\acciaccatura bes8 a8 r r d8.( ees32 d c16) bes |

	\acciaccatura bes16 a8 r d16 d ees8. ees16 c a |
	g( fis) fis8 r r r16 a c ees |
	ees( fis,) fis8 r a( c) bes |
	a( ees') d cis4 c8 |
	bes4 \times 2/3 {a16( c ees)} g,4 bes16( a) |

	g8 r g'16 g aes8. b,16 b b |
	d( c) c8 r c4 c16( g') |
	g4 g8 bes4 cis,8 |
	cis d r d,16( fis a c) a( bes) |
	fis( a c ees) cis( d) d( cis d c) c( bes) |
% 3
	aes4 c16( ees) g,4 bes16( a) |
	g4 r8 g4 g8 |
	g'4. ~ g4 cis,,8 |
	d4.( bes'4) a8 |
	g r bes a( c) fis, |

	g r bes a16( c ees8)^\fermata
	\acciaccatura {d64[ c bes a]} g16( fis) |
	g4 r8 r4 r8 |
	R2.*3
}

\addlyrics {
	Ach, ich 
	fühl's, es ist ver-
	schwun -- den, e -- wig
	hin der lie -- be _
	Glück, e -- wig
	hin der lie -- be
	Glück!
	Nim -- mer
	kommt ihr, won -- ne --
	stu -- den, mei -- nem
	Her -- zen mehr zu -- 
	rück, mei -- nem
	Her -- zen, mei -- _ nem
	Her -- _ _ _ _ _
	zen mehr zu --
	rück!
% 2
	Sieh', Ta -- 
	mi -- no, 
	die -- se
	Thrä -- nen flies -- sen, Trau -- ter, dir al --
	lein, dir al --
	lein! Fühlst du nicht der Lie -- be
	Seh -- nen, der Lie -- be
	Seh -- nen, so wird
	Ru -- he, so wird 
	Ruh' im To -- de
	
	sein; fühlst du nicht der Lie -- be
	Sehn-en, _ fühlst du nicht der Lie -- be
	Sehnen, _ so wird 
	Ru -- he, so wird
% 3
	Ruh' im To -- de
	sein, so wird
	Ruh' im
	To -- de
	sein, im To -- de

	sein, im To -- de
	sein.
}
