\version "2.18.2"
\language "deutsch"

fluteI = \new Staff \with {
	instrumentName = #"Flute"
	midiInstrument = #"flute"
} \relative a' {
	\override DynamicTextSpanner.style = #'none

	\clef treble
	\key a \major
	\numericTimeSignature
	\time 4/4

	\partial 4
	% no idea why that is needed
	\set Score.currentBarNumber = #2

	\tempo "Allegretto"
	a4(_\p |
	h2 fis'4. e8 |
	fis a cis,2) a4( |
	h8 cis \tuplet 3/2 { d e cis } h16 fis'16 h,8~ h4~) |
	h8[( fis']~ fis a) h( e~ e4~) |
	e2~ e8 r e,,4 |
	e'1~ |
	e4. e,8( fis4. a8) |
	a16( e' a,8~ a2.)( |
	a8) r r4 a16( e' a,8~ a) r |
	R1 |
	R1 |
	e'4(_\mf fis gis a |
	h8[ fis'] h,) r e,,( fis gis a) |
	h4( fis'2) e4( |
	fis8[ a] cis,[\dim a] h[ cis] \tuplet 3/2 { d e cis } |
	fis16 cis' fis,8~ fis) e,(\noBeam d16 fis a cis e4~ |
	\time 2/4
	e8) e,(\noBeam \tuplet 3/2 { d fis gis) } | \mark \default

	\time 4/4 a1~_\p |
	a8 r r4 r2 |
	r2 r4 a'8( h16 cis |
	a4.) gis16( fis a8 h16 cis a8 gis16 fis) |
	a8[(_\cresc d] cis[ gis]) a[( d] e[ h]) |
	\ottava #1 cis[( fis]) d[( g]) fis[(_\f d] e[ cis] |
	d[ h] cis[ a]) \ottava #0 fis[( d] e[ cis] |
	d[ h] cis[ a]) h2~_\dim |
	h8 r r4 cis2(\p |
	h8) r r4 r2 | \mark \default

	R1 |
	R1 |
	R1 |
	\tuplet 3/2 { fis8_\p( cis' fis, } e4) cis4.( dis8) |
	e( fis dis4.) cis8(\noBeam dis e |
	fis[ gis] a[) cis]~( cis a16 cis) gis'4~( |
	gis2~ gis8 fis e h) |
	gis4.( fis8 e4 gis) |
	cis4. a'8( gis fis e dis) |
	cis2( h4) r |
	r2 r8 e8\noBeam(_\cresc h' e,) |
	d4. r8 r4 \tuplet 3/2 { e8( h' e,) } |
	d4_\mf( e8[) h'~]( h[_\dim e,]) h'4~ |
	h^"rit."_\> a \tuplet 3/2 { gis fis e } |

	\tempo "Andante"
	dis--_\pp cis-- dis-- e--~ |
	e fis-- gis~\fermata gis~ |
	gis fis-- gis-- e-- |
	dis-- cis-- h2~-- |

	\tempo "Allegretto"
	\tuplet 3/2 { h8 gis'_\mp( cis, } h4~ \tuplet 3/2 { h8) gis( cis, }
	e fis) |

	\tempo "Andante"
	dis4--_\pp cis-- dis-- e~-- |
	e fis-- gis2~-- |

	\tempo "Allegretto"
	gis4 gis8 r r2 |
	r2 \tempo "Andante"
	h4-- a-- |
	h-- gis2-- fis4-- |
	gis2.~\> gis8\! r | \mark \default

	\tempo "Allegretto" R1 |
	R1 |
	R1 |
	r2 cis2_\mf |
	e4. cis16( e) a4(_\< gis~ |
	gis8)\f cis,( \tuplet 3/2 { h gis h) } cis( gis' cis,4) |
	\tuplet 3/2 { r8 gis'( cis, }  h4~

	\tempo "Agitato" \tuplet 3/2 4 {
		h8) gis( h
		\repeat unfold 4 { cis gis' cis, h gis h }
		cis gis' cis,)
	} |
	cis4( e) cis( e) |
	<< { s2 s2_\> | s4_\dim <>\! } \\ { cis1~ | cis4 } >> cis8( gis'~ gis4) \tuplet 3/2 { cis,8( gis' cis,~ } |
	cis) e( gis cis, e gis~ gis) cis,( |
	e^"rit." gis~ gis2.~ |
	gis8 cis,) e4_\p gis2~\> |
	gis4~ gis8\! r r4 a,(_\p |

	\tempo "Tempo I"
	h2 fis'4. e8 |
	fis a cis,2) a4( |
	h8 cis \tuplet 3/2 { d e cis } h16 fis' h,8~ h4~ |
	h8[) h]( d[ fis] gis) cis~ cis4~ |
	cis1~ |
	cis8 r cis,,4 cis'4. r8 |
	a8( h fis'8. e16 fis a cis,8~ cis) a( |
	h cis \tuplet 3/2 { d e h } cis16 gis' cis,8~ cis4) |
	h16( d, fis gis cis gis' cis,8~ cis4) h16( d, fis gis |
	cis4.) h8( cis2~)_\> |
	cis1~_\pp |
	cis2. h4( |
	cis2.) h4 |

	\tempo "Andante"
	gis2. fis4-- |
	e-- a-- cis-- h-- |

	\tempo "Allegretto"
	cis8(_\p d16 e cis8 h16 a cis4.) d16( e |
	cis8 h16 a cis4~ cis4.) a'8( |
	gis cis, d[ a'] gis cis) d4( |
	cis8_\cresc gis a[ d]) \ottava #1 h( e) cis[( fis]) |
	e4(_\f d e8) a,( h[ a]) |
	\ottava #0 e4(_\dim^"rit." d cis4.) r8 |
	r4^"a tempo" \tuplet 3/2 { h8(_\p fis' h, } a4) fis4~( |
	fis8 gis a[ h] gis2) |
	fis8( gis a cis~ cis a16 cis) gis'4~ |
	gis2~ gis8 cis,( gis'4~ |
	gis4.) cis,8( gis'2~ |
	gis)_\cresc gis8( cis,16 gis') cis4~ |
	cis cis8( gis16 cis) e2_\mf~ |
	e~ \tuplet 3/2 { e8 e h } fis4~ |
	fis2~ \tuplet 3/2 4 { fis8^\f cis'( fis, e cis e |
	fis cis' fis, e cis e) } gis( cis, h[ gis]) |
	a4_\dim( e') a,( e') |
	\tuplet 3/2 4 { r8 h'( e, d h d) }
	e(_\> h' e,[ d]) |
	\tuplet 3/2 { e_\p( h' e,~ } e4) \tuplet 3/2 { e8( h' e,~ } e4~) |
	e8( fis_\dim h e, fis h~ h e,) |
	fis4^"rit." h2._\pp \breathe |

	\tempo "Andante"
	h4-- a-- h-- fis--~ |
	fis e2( d8) r |

	\tempo "Allegretto"
	R1 |
	R1 |

	\tempo "Andante"
	cis4--_\pp h-- cis-- a-- |
	gis-- fis-- e2--~ |

	\tempo "Allegretto"
	\tuplet 3/2 4 { e8 cis'( fis, e cis e } fis gis a h~ |

	\tempo "Andante al fine"
	h4) a-- h-- gis--~ |
	gis fis-- gis2--~ |
	gis~ gis8 r r4 |
	r2 r4_\markup{\italic sempre \dynamic pp} e'4( |
	fis8 gis \tuplet 3/2 { a h gis } fis16 cis' fis,8~ fis4~ |
	fis8) fis16( cis' fis,2) r8 e,(_\markup{\italic{poco cresc.}} |
	fis8 gis \tuplet 3/2 { a h gis } fis16 cis' fis,8~ fis8.) gis16( |
	\repeat unfold 4 { a e' fis, gis } |
	a e' a8~) a16 e'( gis,_\markup{\italic{dim. al fine}} fis a, e' a,8~ a4~ |
	a2) a16( e' a,8~ a4~ |
	a4.) a16( e' a,2~) |
	a8 a16( e' a,2) a16( e'~ e8~ |
	e4~ e8) r r2 | \bar "|."
}

fluteII = \new Staff \with {
	instrumentName = #"Flute"
	midiInstrument = #"flute"
} \relative a'' {
	\override DynamicTextSpanner.style = #'none

	\clef treble
	\key a \major
	\numericTimeSignature
	\time 6/8

	\tempo "Un poco vivace"
	R2. |
	R2. |
	r4. e8\p^"staccato" r h |
	fis r d' a r e |
	e' h fis cis( dis e) |
	dis2. |
	cis8( dis e dis e dis) |
	cis2. |
	cis8( dis e dis4 cis8) |
	dis( e dis cis4.) |
	a'8(\cresc h cis h4 a8) |
	a( h cis h4 a8) |
	h8( cis h gis4.) |
	h8( cis h) gis4( cis16\< a' | \mark \default

	gis8->)\! r r r4. |
	R2.*4 |
	a8\p^"stacc." r e h r gis' |
	dis r ais a'! e h |
	fis( gis a \tuplet 4/3 { h cis d e) } |
	a2.~ |
	\time 9/8 a8 r r r4. a8( e h |
	\time 6/8 gis) r r r4. |
	a8[(\cresc h cis d e fis] |
	gis2.) |
	\ottava #1 a8[( h cis d e fis] |
	gis2.)~\f |
	gis8 r r \ottava #0 r4. | \mark \default

	cis,,8\p( d e d cis d |
	e d cis d e d |
	cis2.~ |
	cis2.) |
	e8(\cresc fis gis fis4.~ |
	fis8) gis( fis e fis gis) |
	fis( gis a) gis( a h) |
	a(\f cis e) a,( cis e) |
	a,( cis e) a,( cis e) |
	R2. |
	r4. e,8\ff( gis h) |
	e,( gis h) e,( gis h) |
	R2. |
	R2. |
	R2. | \mark \default

	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 {
	r4^\scaleNote cis,8(\mf a~ |
	a cis gis4~ |
	gis8) r cis a~ |
	a gis~ \tuplet 3/2 { gis gis( cis,^\dim } | }
	\unset Staff.timeSignatureFraction
	e gis cis, e gis cis,) |
	R2.*4 |
	r4. dis4.(~\mf |
	dis8 fis h cis4 h8 |
	ais gis ais) \tuplet 2/3 4. { h( g~ |
	g h } fis4.~ |
	fis8) r r r4. |
	\tuplet 2/3 4. { r8 g( fis e } |
	fis ais cis dis4.~ |
	dis~ dis8) r r |
	R2.^"rit." | \bar "||" \key e \major

	\tempo "Meno mosso"
	R2.*5 |
	r4. gis,8(\mp h e |
	fis4 e8 dis cis dis |
	e dis cis h a gis |
	fis4 gis8 h gis fis |
	gis4) r8 cis( h a |
	h dis fis gis4.~ |
	gis8) r r h( gis h | \mark \default

	fis4) fis8 fis( gis a) |
	h( gis h fis gis a |
	gis fis e fis4.) |
	h8( gis h fis4) fis8 |
	fis( gis a) gis( a h) |
	cis( dis cis h a gis |
	fis) r e( dis cis dis |
	e dis cis h a gis |
	fis4 gis8 a gis fis |
	gis4) r8 cis8( h a |
	h dis fis gis4.~ |
	gis8) r r h(\pp gis h |
	fis4) fis8 fis( gis a) |
	h( gis h fis gis a |
	gis fis e fis4.) |
	h8( gis h fis4) fis8 |
	fis( gis a) gis( a h) |
	cis( dis cis h a gis |
	fis) r e( dis cis dis) |
	e4 fis8( gis a h |
	a4 h8 cis h a |
	gis) r e'\cresc( fis e dis cis h a gis fis e) | \bar "||" \mark \default

	\tempo "Tempo I"
	dis2.~ |
	dis~ |
	dis8 r r r4. |
	R2.*5 | \bar "||" \key a \major
	a'8\p^"stacc." r e h r gis' |
	d r a a' e h |
	fis( gis a gis4 fis8) |
	fis( gis a gis4 fis8) |
	gis( a gis fis4.) |
	d4.\cresc( e |
	fis gis |
	a) e'8(\f cis fis,) |
	e'( fis gis) h4.->~ |
	h h-- |
	fis-- cis--~ |
	cis h'8\p^"stacc." r fis |
	cis r a' e r h |
	h' fis cis gis fis e | \mark \default

	cis2.~ |
	cis8 r r r4. |
	r cis8( d e |
	fis gis a \tuplet 4/6 { h16 cis d e) } |
	a2.~ | \time 9/8
	a8 r r r4. a8( e h | \time 6/8
	gis) r r r4. |
	a8[(\cresc h cis d e fis] |
	gis2.) |
	a8[( h cis d e fis] |
	gis2.~ |
	gis8) r r r4. |
	cis,,8\p( d e d cis d |
	e d cis d e d |
	cis2.~ |
	cis) | \mark \default

	e8\cresc( fis gis fis4.~ |
	fis8) gis( fis e fis gis) |
	fis( gis a) gis( a h) |
	a(\f cis e) a,( cis e) |
	a,( cis e) a,( cis e) |
	R2. |
	r4. e,8\ff( gis h) |
	e,( gis h) e,( gis h) |
	R2. |
	R2. |
	R2. |
	r4. \tuplet 2/3 4. { cis,8\mf( a~ |
	a cis } gis4.~ |
	gis8)\dim gis( cis, e gis cis, |
	e gis cis, \tuplet 2/3 { e gis) } | \bar "||" \mark \default

	\set Staff.timeSignatureFraction = 2/4
	\scaleDurations 3/2 {
	r8 cis,--\p r e-. |
	gis-. r r4 |
	cis,8-. e-. r4 |
	gis8-. r r4 |
	r4_\markup{\italic sempre \dynamic pp} e'4~( | \bar "||"

	\tempo "Meno mosso"
	e d8 cis |
	h2) |
	cis4( h8 cis |
	d e d cis) |
	cis( h a gis |
	a4.) r8 |
	cis2( |
	h4. cis8 |
	e2) |
	r8 a,8( h cis) |
	cis( d e) r |
	R2 | \mark \default

	d,4( cis8) r |
	r4 cis( |
	d cis8) r |
	fis4.( e8 |
	d cis e fis |
	d4.) r8 |
	r4 e'4 |
	e8( d4 cis8) |
	cis4( h) |
	e,4.( d8 |
	cis4.) r8 |
	R2 |
	R2 |
	R2 | \mark \default

	\tempo "Tempo I"
	R2 |
	R2 |
	R2 |
	r4 gis'16\f( a h cis |
	d e fis gis a h cis d |	}
	\unset Staff.timeSignatureFraction
	e8) r h fis r d' |
	a r e e' r h |
	fis r d' a r e |
	r cis' gis d r r |
	h' fis cis(~\> cis4. |
	\tuplet 2/3 4. { cis8\mf a~ a cis } |
	gis4.~\> gis8)\p gis( cis, |
	e gis cis, e gis cis,) | \mark \default

	R2.*5 |
	a''8(\mf cis e, a cis e, |
	a cis e,) h(\dim e gis, |
	h e gis, h e gis,) |
	cis( e a, cis\> e a, |
	cis e a,) a( cis e,) |
	r\p a( cis e,) r r | \bar "||" \time 2/4

	a^"morendo"( cis e,) a( |
	cis e,) a( cis |
	e a cis) e,( |
	a4 cis8) r |
	e2\pp\fermata~ |
	e8 r r4 | \bar "|."
}
