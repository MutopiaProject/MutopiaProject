\version "2.18.0"

global = {
	\key a \major \time 2/4 \partial 4 s4 s2*8
	s4 \cadenzaOn s8*37/2 \cadenzaOff
	\set Score.currentBarNumber = #10
	\mark \markup {And \super no variato} s2*18
	\mark \markup {VAR: 1 \super a} s2*18
	\mark \markup {VAR: 2 \super a} s2*18
	\mark \markup {VAR: 3 \super a} s2*18
	\mark \markup {Finale} s2*12 s8 \bar "|."
}

dolce = \markup{\italic dolce.}
pizz = \markup{\italic pizz.}
arco = \markup{\italic arco.}
rf = \markup{\dynamic rf}

violinsolo = <<\global \relative c''' {
	\partial 4 <a cis, e,>8\ff r |
	\set Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = #'(1 1)
	\set Timing.beamExceptions = #'((end . (
		((1 . 32) . (4 4 4 4))
		((1 . 24) . (3 3 3 3))
	)))
	\tupletSpan 8
	<gis b, d,> r b32 gis d b gis e d b |
	a8 r fis''4-\dolce |
	e dis16( cis'-\rf b dis,) |
	e8 r dis,16-.\p cis'( b dis,) |
	e8 r r16 e32-.( fis-. gis-. a-. b-. cis-.) |
	d8 r r16 e32-.( fis-. gis-. a-. b-. cis-.) |
	d16.( cis32) d16.( cis32) b16.( cis32) b16.( a32) |
	gis16.( fisis32) gis16.( fis32) e16.( dis32) e16.( dis32) |
	e4\fermata dis8([ fis e dis d cis b a gis fis f)] e([ fis gis a)] ais([ b bis]) r16\fermata
\repeat volta 2 {
	\set Timing.measurePosition = #(ly:make-moment -1/8)
	cis16(-\dolce d) |
	e8.( cis16) a( a') gis-. fis-. |
%11
	e( dis d cis) b8( e) |
	cis b16 a gis( fis) e dis |
	fis4( e8) cis'16.( d32) |
	e8.( cis16) a8( a'16 fis) |
	dis8 fis b8.-\rf a16 |
	gis( b) e,-. gis-. fis( cis') b-. dis,-. |
	fis4( e8)
}
\repeat volta 2 {
	e16( eis) |
	fis8.(-\rf e16) d( cis) b-. ais-. |
	\acciaccatura cis8\p b16( ais) b-. cis-. \acciaccatura e8 d16( cis) d-. dis-. |
	e8.(-\rf d16) cis( b) a-. gis-. |
%21
	\slashedGrace b8 a16( gis) a-. b-. cis8\( a16( e')\) |
	dis8.(-\rf b16) ais( b) cis-. d-. |
	fis( e gis fis) e r\fermata cis( d) |
	e8.( a16) a( gis fis eis) |
	eis( fis gis fis) e( d cis b) |
	a8.( cis16) b( fis' e gis,) |
	b4( a8)
}
\repeat volta 2 {
	cis16( d) |
	\tuplet 3/2 {fis-. e-. cis-. a a' b cis b a gis fis e |
	e d b gis gis' a b a gis fis e d |
	cis e a gis fis e dis cis b a gis fis} |
%31
	fis4(-\rf e8) cis'16( d) |
	\tuplet 3/2 {fis e cis a a' b cis b a gis fis e |
	dis fis ais b cis ais b cis b a b a |
	gis b a gis fis e cis a' gis fis e dis} |
	fis4( e8)
}
\repeat volta 2 {
	e16( eis) |
	\tuplet 3/2 {fis cis ais fis ais cis fis g fis e d cis |
	b' fis d b fis d b d fis b cis d |
	e b gis e gis b e fis e d cis b |
	a' e cis a e cis a cis e a b-. cis-. |
	b-\rf dis cis b dis fis b cis b a gis fis |
%41
	e fis dis e gis b} e r\fermata cis,( d) |
	\tuplet 3/2 {e a e cis a e cis e a cis e a |
	fis d fis a fis a d cis b a gis fis |
	e a f e d cis b d cis b a gis} |
	b4( a8)
}
\repeat volta 2 {
	\override TextSpanner.bound-details.left.text = \markup {4 \super a corda}
	e16(\startTextSpan d) |
	cis8.( b16) a8 fis'16( e) |
	e8.( d16) b8 cis16( d) |
	cis8-3 a16( cis) b b( cis dis) |
	fis4(-4 e8)-3 \stopTextSpan e'16( d) |
	cis8.( b16) a8 fis'16( e) |
%51
	dis8.( fis16) b,8 b'16( a) |
	gis e-\stopped b' e,-\stopped a fis-\stopped dis b-\stopped |
	b' e,-\stopped gis e-\stopped e,8
}
\repeat volta 2 {
	e16( eis) |
	fis8.( e16 d cis b ais) |
	b8\noBeam b''16 fis\stopped d b\stopped d,( dis) |
	e8.( d16 cis b a gis) |
	a8\noBeam a''16 e\stopped cis a\stopped a,( cis) |
	b8.( a''16 gis\ff fis e dis) |
	fis4( e16) r\fermata e,( d) |
	cis8\noBeam a''16 e\stopped cis a\stopped a,( e') |
%61
	fis8\noBeam a'16 fis\stopped d a\stopped a' fis\stopped |
	a e\stopped cis' e,\stopped b' e,\stopped gis e\stopped |
	a e\stopped cis a\stopped a,8
}
\repeat volta 2 {
	e''8\f |
	cis32-. a-. b-. cis-. d-. e-. fis-. gis-. a-. gis-. fis-. e-. d-. cis-. b-. a-. |
	gis a b cis d b gis' e b' a gis fis e d cis b |
	cis e a gis fis e dis cis b cis dis cis b a gis fis |
	e16-. fis32( gis) a b cis dis e fis gis fis e d cis b |
	cis a' gis fis e d cis b a gis fis e d cis b a |
	dis b cis dis e fis gis ais b cis dis e fis gis a b |
	gis fis e dis e dis cis b cis16-. a'32( gis) gis fis e dis |
%71
	fis e dis cis b a gis fis e8
}
\repeat volta 2 {
	e' |
	fis,32( cis') e( cis) e( cis) e( cis) fis,( cis') ais'( cis,) fis,( cis') e( cis) |
	d b cis d e fis gis ais b16 fis,-. d-. b-. |
	e32( b') e( b) e( b) e( b) e,( b') gis'( b,) e,( b') e( b) |
	cis a b cis d e fis gis a16 e,-. cis-. a-. |
	b cis32 dis e fis gis a b cis dis e fis gis a b |
	gis e dis cis b a gis fis e8 r16\fermata e' |
	cis32 a b cis d e fis gis a b cis b a gis fis e |
	fis d e fis gis a b cis d cis b a b a gis fis |
	e16 a32( gis) fis e d cis b16 gis'32( fis) e d cis b |
%81
	a16 gis32 fis e d cis b a8
}
	a'-\dolce |
	g'8.( e16) cis a b cis |
	d4( fis8) r |
	<e d'>16\ff cis'32 b a gis fis e dis( e) fis e d cis d b |
	a8 r r a,-\dolce |
	g'8. e16 cis a b cis |
	d4( fis8) r |
	<e d' b'>16\ff a'32 gis fis e d cis b( a) gis fis e d cis b |
	a8 r16 ais''\p( b8. e16) |
	cis8.( a16) \acciaccatura cis8 b16( ais) b cis |
%91
	a!8 r16 ais,, b8.( e16) |
	cis8 r <e b' gis'>\ff r |
	<a, e' cis' a'> r r4\fermata |
}>>

violin = <<\global \relative c' {
	\partial 4 <e cis'>8\f r |
	<e d'> r gis4( |
	a8)\p r d,16( a' d, a') |
	cis,( a' cis, a') fis4(-\rf |
	gis8) r a,4(\p |
	gis16) gis'-. e-. b-. gis8 r |
	r16 gis''-. e-. b-. gis8 r |
	gis r d'16.( cis32) d16.( cis32) |
	b16.( ais32) b16.( a32) <<{gis16.( a32) gis16.( a32)} \\ {b,8 b}>> |
	<b gis'>4 s8*12 r8\fermata s8*5 s16
\repeat volta 2 {
	\set Timing.measurePosition = #(ly:make-moment -1/8)
	r8 |
	cis( e cis e) |
%11
	b( e d gis) |
	e-. fis-. fis4 |
	dis( e8) r |
	cis( e cis fis) |
	fis r dis-. e16-. fis-. |
	b,8 b' cis dis |
	r16 dis-. e-. b-. e,8
}
\repeat volta 2 {
	r |
	ais r e4( |
	d8) r r4 |
	gis8 r d4( |
%21
	cis8) r r4 |
	<fis a>2( |
	gis8) r r\fermata r |
	a r <e a>4( |
	<fis a>8) r q r |
	cis r r d |
	r16 gis-. a-. e-. a,8
}
\repeat volta 2 {
	r8 |
	<cis e> q r q |
	<d e> q r gis |
	a r fis dis |
%31
	dis4( e8) r |
	<cis e> q r fis |
	fis dis' fis fis |
	b, r e, dis |
	r dis( e)
}
\repeat volta 2 {
	r |
	ais, r ais'4( |
	b8) b b, r |
	gis r gis'4( |
	a8) a a, r |
	dis r dis' dis |
%41
	e r r\fermata r |
	cis r e, e |
	<fis a> q q4( |
	cis8) r gis' r |
	r gis( a)
}
\repeat volta 2 {
	r |
	r16 e'-. e-. d-. cis8 r |
	r16 b-. b-. gis-. b8 r |
	e, r a4 |
	r16 a-. a-. a-. gis8 r |
	r16 e-. e-. d-. cis8 r |
%51
	r16 fis fis b, dis8 r |
	b' gis fis a |
	<<{gis gis gis} \\ b,4.>>
}
\repeat volta 2 {
	r8 |
	ais'16( cis ais cis) ais8( cis) |
	b r r4 |
	gis16( b gis b) gis8( b) |
	a r r4 |
	dis,16( fis dis fis) a4( |
	gis8) r r\fermata r |
	e cis' r <a e> |
%61
	<a fis> q r q |
	cis r gis r |
	<e cis> q q
}
\repeat volta 2 {
	r |
	q q q q |
	<d e> q q q |
	<cis e> <cis fis> r <dis fis> |
	<b gis'> q r4 |
	<cis e>8 q q <cis fis> |
	<dis fis> r q r |
	b e e dis |
%71
	e <gis b,> q
}
\repeat volta 2 {
	r |
	ais16 fis cis ais ais' fis cis ais |
	b8 r r4 |
	gis'16 e b gis gis' e b gis |
	a8 r r4 |
	<dis fis>8 q q4( |
	e8) r r r\fermata |
	<cis e> q r <e a> |
	<fis a> q r q |
	<e a> r gis r |
%81
	a r r
}
	r |
	cis,16( e cis e) g4 |
	fis16( a fis a d a fis d) |
	<b g'>2 |
	cis16( e cis e a e' cis a') |
	cis,( e cis e) g4 |
	fis16( d a fis' d a fis d) |
	<gis b>2 |
	r8 <e cis'>-\pizz r <e d'> |
	r <e cis'> r gis |
%91
	r e r <d e>-\arco |
	<cis e> r <b gis'>\ff r |
	<a e' a> r r4\fermata
}>>

cello = <<\global\clef "bass" \relative c' {
	\partial 4 a8\ff r |
	e r e,4( |
	a8) r a a |
	a a b4( |
	e8) r b4(\p |
	e,16-.) e'-. b-. gis-. e8 r |
	r16 e''-. b-. gis-. e8-. r |
	e r e r |
	e, r e16.( fis32) e16.( fis32) |
	e4 s8*12 r8\fermata s8*5 s16
\repeat volta 2 {
	\set Timing.measurePosition = #(ly:make-moment -1/8)
	r8 |
	a r a r |
%11
	gis r gis r |
	a-. a-. b-. b-. |
	e-. b-. e, r |
	a r a a |
	b r b-. cis16 dis |
	e8 gis a b |
	r16 b-. cis dis e8
}
\repeat volta 2 {
	r |
	fis, cis fis,4( |
	b8) r r4 |
	e8 b e,4( |
%21
	a8) r r4 |
	b8 b' b,4( |
	e8) r r\fermata r |
	cis r cis4( |
	d8) r d r |
	e e r e |
	r16 e-. fis-. gis-. a8-.
}
\repeat volta 2 {
	r |
	a a r a |
	e e r e |
	a, r b b |
%31
	b4( e,8) r |
	a a r a |
	b b dis dis |
	e r a, b |
	r b( e,)
}
\repeat volta 2 {
	r |
	fis r fis'4( |
	b,8) b b' r |
	gis, r e'4( |
	a,8) a a' r |
	fis r b, b |
%41
	e r r\fermata r |
	a' r a, a |
	d d d4 |
	e8 r e r |
	r e( a,)
}
\repeat volta 2 {
	r |
	r16 a-. a-. e-. a8 r |
	r16 gis-. gis-. b-. gis8 r |
	a r b4 |
	r16 b-. cis-. dis-. e8 r |
	r16 a,,-. a-. e-. a8 r |
%51
	r16 b b dis b8 r |
	e e b b |
	e, e e
}
\repeat volta 2 {
	r |
	fis' fis fis4( |
	b8) r r4 |
	e,8 e e4( |
	a8) r r4 |
	b8 b b,4( |
	e8) r r\fermata r |
	a a r cis, |
%61
	d d r d |
	e r e r |
	a, a a
}
\repeat volta 2 {
	r |
	a a' a, a' |
	e, e' e, e' |
	a, a' r b |
	e, e, r e' |
	a, a' a, a' |
	b b, b' b, |
	e gis, a b |
%71
	e, e' e,
}
\repeat volta 2 {
	r |
	fis'16 cis ais fis fis' cis ais fis |
	b8 r r4 |
	e16 b gis e e' b gis e |
	a8 r r4 |
	b8 b b4( |
	e,8) r r r\fermata |
	a a r cis |
	d d r d |
	e r e, r |
%81
	a r r
}
	r |
	a2 ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a |
	a8-\pizz r gis' r |
	a r e e |
%91
	a r gis,-\arco r |
	a r e\ff r |
	<a e' a> r r4\fermata
}>>
