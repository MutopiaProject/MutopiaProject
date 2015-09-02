\version "2.18.0"

pMarkings = {\tempo "Largo e Spiccato" \time 3/4 \key d \major s2.*43 \bar "||"}
incmidi = "midi2.ily"

violinI = \relative c'' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis |
	fis'16(_"Soli" e) fis( g) fis( e) fis( g) fis( g) e( fis) |
	g( fis) g( a) g( fis) g( a) g( a) g( fis) |
	e( d) e( fis) e( d) e( fis) e( fis) d( e) |
%11
	fis( e) fis( g) fis( e) fis( g) fis( g) fis( e) |
	d( cis) d( e) d( cis) d( e) d( e) cis( d) |
	e( d) e( fis) e( d) e( fis) e( fis) e( d) |
	cis( b) cis( d) cis( b) cis( d) cis( d) b( cis) |
	d4_"Tutti" b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4\fermata r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	a''16(_"Soli" g) a( b) a( g) a( b) a( g) a( fis) |
%21
	g( fis) g( a) g( fis) g( a) g( fis) g( e) |
	fis( e) fis( g) fis( e) fis( g) fis( e) fis( d) |
	e( d) e( fis) e( d) e( fis) e( d) e( cis) |
	d8 fis fis16( e) fis( gis) fis( gis) e( fis) |
	gis( fis) gis( a) gis( fis) gis( a) gis( a) fis( gis) |
	ais( gis) ais( b) ais( gis) ais( b) ais( b) gis( ais) |
	b( ais) b( d) b( ais) b( d) b( ais) b( d) |
	b( ais) b( d) b( ais) b( d) b( ais) b( d) |
	b( ais) b( d) b( ais) b( d) ais( b) cis( ais) |
	b8 b, b16( cis b) fis' b,( cis b) fis' |
%31
	b,( cis b) g' b,( cis b) g' b,( cis b) g' |
	c,( b c) g' c,( b c) g' c,( b c) g' |
	ais,( fis) fis( cis') cis( ais) ais( e') e( cis) cis( ais') |
	ais4. fis8 b fis |
	e d cis4.\trill b8 |
	b4_"Tutti" b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis |
	b,2.\fermata
}

violinII = \relative c'' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a'16 |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis'16 d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16  fis4 fis |
	d'8_"Soli" d d d d d |
	e16( d) e( fis) e( d) e( fis) e( fis) e( d) |
	cis8 cis cis cis cis cis |
%11
	d16( cis) d( e) d( cis) d( e) d( e) d( cis) |
	b8 b b b b b |
	cis16( b) cis( d) cis( b) cis( d) cis( d) cis( b) |
	ais8 ais ais ais ais ais |
	b4_"Tutti" b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4\fermata r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	fis'16(_"Soli" e) fis( g) fis( e) fis( g) fis( e) fis( d) |
%21
	e( d) e( fis) e( d) e( fis) e( d) e( cis) |
	d( cis) d( e) d( cis) d( e) d( cis) d( b) |
	cis( b) cis( d) cis( b) cis( d) cis( b) cis( ais) |
	b4 r r |
	R2.*11 |
	b4_"Tutti" b, r8 r16 b' |
	ais4 ais, r8 r16 a'16 |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis'16 d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16  fis4 fis |
	b,2.\fermata
}

violinIII = \relative c'' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis |
	b, r r |
%9
	R2.*6 |
	b'4 b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4\fermata r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	fis r r |
%21
	R2.*15 |
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a'16 |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis'16 d8. ais16 |
	b8. eis,16 fis4 fis |
	b,2.\fermata
}

violinIV = \relative c'' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis |
	b, r r |
%9
	R2.*6 |
	b'4 b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4\fermata r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	fis r r |
%21
	R2.*15 |
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis |
	b,2.\fermata
}

violaI = \relative c'' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis, |
	b' b4. b8 |
	e,4 e4. e8 |
	a4 a4. a8 |
%11
	d,4 d4. d8 |
	g4 g4. g8 |
	cis,4 cis4. cis8 |
	fis4 fis4. fis8 |
	b4 b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4\fermata r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	fis fis4. b8 |
%21
	e,4 e4. a8 |
	d,4 d4. g8 |
	cis,4 cis4. fis8 |
	b,4 b4. d8 |
	e4 e4. e8 |
	fis4 fis4. e8 |
	d4 d4. d8 |
	e4 e4. e8 |
	fis4 fis4. fis8 |
	b,4 d4. d8 |
%31
	e4 e4. e8 |
	e4 e4. e8 |
	fis4 fis4. fis8 |
	fis4. e8 d4 |
	e fis fis, |
	b' b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis, |
	b2.\fermata
}

violaII = \relative c'' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. d16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis, |
	b' b4. b8 |
	e,4 e4. e8 |
	a4 a4. a8 |
%11
	d,4 d4. d8 |
	g4 g4. g8 |
	cis,4 cis4. cis8 |
	fis4 fis4. fis8 |
	b4 b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4\fermata r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	fis fis4. b8 |
%21
	e,4 e4. a8 |
	d,4 d4. g8 |
	cis,4 cis4. fis8 |
	b,4 b4. d8 |
	e4 e4. e8 |
	fis4 fis4. e8 |
	d4 d4. d8 |
	e4 e4. e8 |
	fis4 fis4. fis8 |
	b,4 d4. d8 |
%31
	e4 e4. e8 |
	e4 e4. e8 |
	fis4 fis4. fis8 |
	fis4. e8 d4 |
	e fis fis, |
	b' b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. d16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis, |
	b2.\fermata
}

cello = \relative c' {
	b4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis, |
	b r r |
%9
	R2.*6 |
	b'4 b, r8 r16 b' |
	b4 b, r8 r16 b' |
	d8. gis,16 b8. eis,16 gis8. b,16 |
	b4 r8 r16 a' gis8. eis16 |
	fis8. bis16 cis4 cis, |
	fis, r r |
%21
	R2.*15 |
	b'4 b, r8 r16 b' |
	ais4 ais, r8 r16 a' |
	gis4 gis, r8 r16 g' |
	fis4 r8 r16 cis' d8. e16 |
	ais,8. cis16 e,8. g16 cis,8. e16 |
%41
	ais,4\fermata r8 r16 cis' d8. ais16 |
	b8. eis,16 fis4 fis, |
	b2.\fermata
}

bass = <<

\cello

\figuremode {
	s2 s8 s16 <6> |
	<7>4 s s8 s16 <6> |
	<7>4 s s8 s16 <6> |
	<7_+>4 s2 |
	s2. |
	<6 5>4 s2 |
	s8. <7 5>16 <5 4>4 <_+> |
	s2.*10 |
	<4\+ 2>4 s8 s16 <6> s4 |
	s8. <7 5>16  <5 4>4 <_+> |
	s2.*16 |
	s2 s8 s16 <6> |
	<7>4 s s8 s16 <6> |
	<7>4 s s8 s16 <6> |
	<7_+>4 s2 |
	s2. |
	<6 5>4 s2 |
	s8. <7 5>16 <5 4>4 <_+> |
	s2.
}
>>
