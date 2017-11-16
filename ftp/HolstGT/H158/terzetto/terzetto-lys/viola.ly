\version "2.18.2"
\language "deutsch"

violaI = \new Staff \with {
	instrumentName = #"Viola"
	midiInstrument = #"viola"
} \relative c {
	\override DynamicTextSpanner.style = #'none

	\clef alto
	\key c \major
	\numericTimeSignature
	\time 4/4

	\partial 4
	% no idea why that is needed
	\set Score.currentBarNumber = #2

	\tempo "Allegretto"
	r4 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	r2 c4_\p( g' |
	a) e'4. c,8(\noBeam g' a) |
	e'2~ e8\< e( g e)\! |
	gis,2~\> gis8 e'(\< g! e) |
	gis,2~\> gis8 e'(\mf g! e) |
	gis,2. \tuplet 3/2 { e'8( g! e) } |
	<< { \override DynamicTextSpanner.style = #'none s1 | s4 s2._\dim | s1\! | s2 | } \\
	{ \oneVoice gis,1~ | gis~ | gis~ | \time 2/4 gis8 r r4 | } >> \time 4/4 \mark \default

	r8_"pizz." a8\noBeam des,8 a' \repeat unfold 5 { c a des, a' } |
	c f es[ des] c a r8_"arco" a( |
	c_\cresc f a f) h2~ |
	h\< c8(_\f d16 e) c8( h16 a) |
	\tuplet 3/2 { d8-. g,-. a-. } h4 c,8( d16 e) \tuplet 3/2 { c8-. h-. a-. } |
	g2.( a8 h) |
	g(_\dim  fis16 e g4~ g8 a16 h) g4~ |
	g(\> fis8 e)\! r2 | \mark \default

	\tuplet 3/2 { a8(_\p e' a, } g4) e4.( fis8) |
	g( a fis4.) e8\noBeam( fis g |
	a h c[) e](~ e c16 e) h'4~ |
	h2.( a4)~ |
	a8 r r4 h2( |
	a2.. h8) |
	c2~ c8 r r4 |
	R1 |
	R1 |
	r4 \tuplet 3/2 4 { f,8(_\cresc d f) g( d' g, f d f) } |
	g1~ |
	g8 fis( c' fis,) g2\! |
	<< { \oneVoice \tuplet 3/2 { fis8( c' fis,) } g2. | c2~ c8 r r4 | }
	\\ { \override DynamicTextSpanner.style = #'none s2_\mf s2_\dim | s2\> s2\! | } >>

	\tempo "Andante"
	c4--_\pp a-- c-- g--~ |
	g a8( h) c4\fermata\< c8( e) |
	e2.->\> d4--\! |
	c8( h) a[( g]) fis( e\> \tuplet 3/2 { d c h)\! } |

	\tempo "Allegretto"
	R1 |

	\tempo "Andante"
	c4-- a-- c-- g--~ |
	g a8( h) c4 \tuplet 3/2 { c8(\mp g' c,) } |

	\tempo "Allegretto"
	h4~( \tuplet 3/2 4 { h8 g h) c( g' c,) h( c g' } |
	h) c(~ c[ d]) \clef treble

	\tempo "Andante"
	e4-- d-- |
	e-- c2-- h4-- |
	c2.~\> c8\! r | \mark \default \clef alto

	\tempo "Allegretto"
	R1 |
	R1 |
	R1 |
	\tuplet 3/2 4 { c,8(\mf g' c, b) g'( a } b[ c] a g) |
	\tuplet 3/2 4 { c,( g' a b c a b)\< d,( g, c d e) } |
	f2\f h4. f16( h) |
	e1~ |
	e2 e->~( |
	e4 d) e4->( d) |
	\tuplet 3/2 { r8 g,( c, } b4~ \tuplet 3/2 4 { b8) g( b c g' c,) } |
	<< { \oneVoice b1~ | b2 } \\ { s2 s2\> | s2\! } >> r8 g'8(\noBeam\< b g)\! |
	b,4.\> g'8(\dim  b g b,) g'( |
	b g) h,!4.( c8\noBeam d e |
	f g) a4\p ais g8(\> ais~ |
	ais) gis( h4~ h8)\pp r r4 |

	\tempo "Tempo I"
	R1*10 |
	d,,4\pp( a' b) f'~ |
	f8 f(\< as f) a,!2~\> |
	a4\! \tuplet 3/2 { f'8(\< as f) } a,!2~\> |

	\tempo "Andante"
	a8\! f'( as f) a,2~\> |
	a2. a8\pp r |

	\tempo "Allegretto"
	r_"pizz." f'\p\noBeam a, f' gis f a, f' |
	gis f a, f' gis f a, f' |
	gis f a, f' gis f a, f' |
	gis\cresc f a, f' gis f a,\noBeam r_"arco" |
	b'(\f c16 d) b8( a16 g) \tuplet 3/2 { c8-. f,-. g-. } a( a,) |
	b8(\dim c16 d) b8( a16 g) a4. r8 |
	R1*6 |
	\tuplet 3/2 { r8 g'(\mf c, } b4~ \tuplet 3/2 4 { b8) g( b c g' c,) |
	b( g b c g' c,) } h2~ |
	h8 h(\< e h') h4->\f( a) |
	h->( a) f->( e) |
	\tuplet 3/2 { r8 h'(\dim e, } d4~ \tuplet 3/2 4 { d8) b( d e f g) } |
	a2.~ a8 gis\p( |
	h\< gis) h,4.\> gis'8(\<\noBeam h gis) |
	c,4.\>( d8\dim\noBeam e f \tuplet 3/2 4 { g a h) | \clef treble
	c-- d-- e-- } f2.\pp | \breathe \clef alto

	\tempo "Andante"
	c4-- h-- a-- g--~ |
	g2 f~ |

	\tempo "Allegretto"
	\tuplet 3/2 4 { f8 c'( f,\< e c f, } e4) c4\mf(~ |
	c8 d e[) a]( h)\> e~ e4~ |

	\tempo "Andante"
	e a2(\pp g4) |
	f8( e) d[( c]) h( a\> \tuplet 3/2 { g f e)\! } |

	\tempo "Allegretto"
	R1 | \clef treble

	\tempo "Andante al fine"
	e''4-- d-- e-- c--~ |
	c h-- c2-- | \clef alto
	r8^"pizz." c,8_\markup{\italic sempre \dynamic pp}\noBeam dis c r c\noBeam dis c |
	e,8 c' dis c e, c' dis c |
	e, c' dis c e, c' dis c |
	e, cis' e cis e, c' dis c |
	e, cis' e_\markup\italic{poco cresc.} cis e, cis' e cis |
	e, a e' a e a, e a |
	e' a e a, e a_\markup\italic{dim. al fine} e' a |
	e a, e a e' a e a, |
	e a e' a e a, e a |
	e' a e a, e a e' a |
	e'4 r r2 | \bar "|."
}

violaII = \new Staff \with {
	instrumentName = #"Viola"
	midiInstrument = #"viola"
} \relative g' {
	\override DynamicTextSpanner.style = #'none

	\clef alto
	\key c \major
	\numericTimeSignature
	\time 6/8

	\tempo "Un poco vivace"
	g8\p^"staccato" r d a r f' |
	c r g g' d a |
	e8( fis g) fis4.~ |
	fis e8( fis g |
	fis g fis) e4.~ |
	e2.~ |
	e2. |
	f4.( g |
	a h) |
	c( h) |
	f8(\cresc g a h4.) |
	c8( d e dis4.) |
	e( f) |
	e\f f4(\< b16 c) | \mark \default

	f8->\! r r r4. |
	R2.*6 |
	r4. g,8\p^"stacc." r d |
	a r f' c r g | \time 9/8
	g' d a f' c g e' h fis | \time 6/8
	es'\cresc r h f! r d' |
	a r e des' r as |
	es r c' g r d |
	h' r fis cis r b' |
	f!4(\f c!8-.) f4( c8-.) |
	f4( c8-.) f( c' f) | \mark \default

	fis\p r cis gis r e' |
	h r fis fis' cis gis |
	f!4( c!8-.) f4( c8-.) |
	f4( c8-.) f4( c8-.) |
	fis4( c8-.) fis4( c8-.) |
	g'4( c,8-.) gis'4( c,8-.) |
	a'4( c,8-.) h'4( c,8-.) |
	<as' es'>4\f <as c,>8 <as es'>4 <as c,>8 |
	<as es'>4 <as c,>8 <as es'>4 <as c,>8 |
	<as es'>->\ff <g c,>-> <as es'>-> <as es'>-> <g c,>-> <as es'>-> |
	<as es'>-> <g c,>-> <as es'>-> <es' b'>4 <es g,>8 |
	<es b'>4 <es g,>8 <es b'>4 <es g,>8 |
	<d a'>-> <d g,>-> <d a'>-> <d g,>-> <d a'>-> <d g,>-> |
	<d a'>-> <d g,>-> <d a'>-> f( a d,) |
	f(\dim a d,) f( a d,) | \mark \default

	f( a d,) r4. |
	R2. |
	f8(\mf a d,) r4. |
	r4. c8(\dim  e g |
	c, e g c, e g) |
	R2. |
	R2. |
	R2. |
	r4. h,8(\mf dis fis |
	h, dis fis h, dis fis) |
	R2. |
	R2. |
	R2. |
	h,8( dis fis h, dis fis) |
	R2. |
	R2. |
	R2. |
	es'4.\p\> es,4. | \bar "||" \key es \major

	\tempo "Meno mosso"
	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 {
	es,4^\scaleNote\p es' |
	es' es, |
	r es, |
	es' es' |
	es, es, |
	R2 |
	es4 es' |
	b' es, |
	b es, |
	es' as |
	es' as, |
	es r |
	es, es' |
	es' b |
	es, b |
	es, b' |
	es es' b es, |
	es, es' |
	b' es, |
	b es, |
	es' as |
	es' as, es r |
	es, es' |
	es' b |
	es, b |
	es, b' |
	es es' |
	b es, |
	es, es' |
	b' es, |
	es, es' |
	es' as, |
	es r | \bar "||" \mark \default }
	\unset Staff.timeSignatureFraction

	\tempo "Tempo I"
	r4. as--_"arco" |
	es4.-- b4.--~ |
	b2. |
	as'8^"stacc."\p r es b r ges' |
	des r as as' es b |
	f( g as) g4.~ |
	g f8( g as |
	g as g) f4.~ | \bar "||" \key c \major

	f2.~ |
	f2. |
	e4.( fis |
	gis ais) |
	h( ais) |
	g8\cresc( a b c4.) | \clef treble
	b'8( c d c4 b8) |
	c8( d e) fis,4. |
	h4. e8.(\f fis16 e dis |
	e8) r r r4. | \clef alto
	R2. |
	R2. |
	R2. |
	R2. | \mark \default

	<b es, g,>4\p^"pizz." r8 r4. |
	R2. |
	R2. |
	r4. g8 r d |
	a r f' c r g | \time 9/8
	g' d a g' d a e' h fis | \time 6/8
	es'\cresc r b f! r d' |
	a r e des' r as |
	es r c' g r d |
	h' r fis cis r b' |
	f!4( c!8)-. f4( c8)-. |
	f4( c8)-. f( c' f) |
	fis\p r cis gis r e' |
	h r fis fis' cis gis |
	f!4( c8)-. f4( c8)-. |
	f4( c8)-. f4( c8)-. | \mark \default

	fis4(\cresc c8)-. fis4( c8)-. |
	g'4( c,8)-. gis'4( c,8)-. |
	a'4( c,8)-. h'4( c,8)-. |
	<as' es'>4\f <as c,>8 <as es'>4 <as c,>8 |
	<as es'>4 <as c,>8 <as es'>4 <as c,>8 |
	<as es'>->^\ff <g c,>-> <as es'>-> <g c,>-> <as es'>-> <g c,>-> |
	<as es'>-> <g c,>-> <as es'>-> <es' b'>4 <es g,>8 |
	<es b'>4 <es g,>8 <es b'>4 <es g,>8 |
	<es b'>-> <d g,>-> <es b'>-> <d g,>-> <es b'>-> <d g,>-> |
	<d a'>-> <d g,>-> <d a'> f( a d,) |
	f(\dim a d,) f( a d,) |
	f( a d,) r4. |
	R2. |
	c8(\mf\dim e\! g c, e g |
	c, e g \tuplet 2/3 { c, e) } | \bar "||" \mark \default

	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 { << {
		r8^"arco" g-. r c,-. |
		e-. r r4 |
		g8-. c,-. r4 |
		e8-. r r4 |
		R2 | \bar "||"

		\tempo "Meno mosso"
		g8\mp( e4 g8 |
		d4) g8( a |
		b a) g( e~ |
		e c') g4~( |
		g4. f8) |
		e8( d c4) |
		g'8( e4 g8 |
		d4) g8( a |
		b a) g( e~ |
		e c') g4~( |
		g4. f8) |
		e( d c4) | \mark \default

		d8( e f4~ |
		f8[) g( f e]) |
		d[( e f g]) |
		a( b4 a8 |
		g4.) a8( |
		b c b a) |
		g( e4 g8 |
		d4) g8( a |
		b a) g( e~ |
		e c' g4~ |
		g4.) f8( |
		\oneVoice
		e8 d) c4-> |
	} \\ {
		g4_"pizz."\p r |
		r g |
		R2 |
		R2 |
		R2 |
		r4 g |
		R2 |
		R2 |
		g4 r |
		g r |
		R2 |
		r4 g |
		R2 |
		R2 |
		g4 r |
		g r |
		R2 |
		R2 |
		g4 r |
		R2 |
		R2 |
		R2 |
		R2 |
		r4 g |
		R2 |
		R2 |
		g4 r |
		g r |
		s2 |
	} >> |
	g4-> d-> |
	b'-> f-> | \mark \default }
	\unset Staff.timeSignatureFraction

	\tempo "Tempo I"
	c4.-> c'8\f^"stacc." r g |
	d r b' f r c |
	c' r g d r b' |
	f r c c' r g |
	d r b' f r c |
	c' r g d r b' |
	f r c c' r g |
	d r b ' f r c |
	r a'' e h r r |
	g' d a r4. |
	R2. |
	r4. c8(\p e g |
	c, e g c, e g) | \mark \default

	R2.*5 |
	c,8\mf( e g c, e g |
	c, e g) g,\dim( h d |
	g, h d g, h d) |
	e,( g c e,\> g c |
	e, g c) c,( e g) |
	r\p c,( e g) r r | \bar "||" \time 2/4

	c,( e g) c,( |
	e g) c( e |
	g c, e) g( |
	c4 e8) r |
	<< { \oneVoice g2~\fermata | g8 \voiceOne r }
	\\ { s2 | \shiftOn c,,,4_"pizz." } >> r4 \bar "|."
}
