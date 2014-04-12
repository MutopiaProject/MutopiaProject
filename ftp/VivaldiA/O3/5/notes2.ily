\version "2.18.0"

pMarkings = {\tempo "Largo" \time 4/4 \key a \major s1*12 \bar "||"}
incmidi = "midi2.ily"

violinI = \relative c'' {
	r4 r8 cis16_"Solo e Cantabile" d e( fis e a) e( fis e a) |
	d,( e d b') d,( gis b d,) cis b a8 r a'16 a, |
	b32( cis b e) gis,( a gis b) e,( fis e gis) b( d e b) cis( b a e') cis( b a a') cis,( b a e') a( fis gis e) |
	dis4 ~ dis16 b dis fis a4 ~ a16 b, dis fis |
	gis8 fis16 e dis8.\trill e16 e4 r16 gis fis e |
	a32( cis, b cis) a'( cis, b cis) a'( e d cis) a'( e d cis) a'( d, cis d) a'( d, cis d) a'( d, cis d) a'( fis e d) |
	b'( dis, cis dis) b'( dis, cis dis) b'( dis, cis dis) b'( a gis fis) \tuplet 3/2 {gis16( fis e)} a16 cis, b8.\trill a16 |
	a4 r16 e'\p c b32( a) f'( d cis d) f( d cis d) gis( d cis d) gis( d cis d) |
	b'( d, cis d) b'( d, cis d) f( d cis d) e( d c b) c( a gis a) c( a gis a) d( a gis a) d( a gis a) |
	d( cis d d) d( cis d f) d( cis d f) d( cis d e) \appoggiatura d8 cis b16 a dis8. e16 |
%11
	e4\fermata r8 d! cis b16 a gis8. a16 |
	a1\fermata |
}

violinII = \relative c'' {
	cis8_"Piano e Spiccato" cis cis cis cis cis cis cis |
	b b b b cis cis, cis cis |
	b b b b cis cis cis cis' |
	fis, fis fis fis fis fis fis b |
	b cis fis, fis gis gis gis gis |
	e e e e fis fis fis fis |
	fis fis fis b b a a gis |
	a c\pp c c b b b b |
	b b b b e, e f f |
	f f f f e e fis fis' |
%11
	b,4 r8 b e, fis b, b |
	cis1\fermata |
}

violinIII = \violinII

violinIV = \violinII

violaI = \relative c'' {
	a8_"Piano e Spiccato" a a a a a a a |
	a a gis gis a a, a a |
	gis gis gis gis a a a a |
	\repeat unfold 8 {b} |
	e a, b b e e d d |
	cis cis cis cis d d d d |
	d d d d e cis16 d e8 e |
	a a\pp a a gis gis gis gis |
	gis gis gis gis, a a a a |
	gis gis gis gis a a a a' |
%11
	gis4\fermata r8 gis,8 a d, e e |
	a1\fermata |
}

violaII = \violaI

cello = R1*12

bass = R1*12
