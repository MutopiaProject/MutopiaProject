\version "2.18.0"

pPiece = "No. 5. Recitativ."

Markings = {\time 4/4 \mark "Recit." s1*2 \bar "||" \time 6/8 \tempo "Andante" \key bes \major s2. \mark "Recit." s2. \mark "a tempo" s2. \mark "Recit." s2. \mark "a tempo" s2.*20 \bar "||"}
incmidi = "midi5.ily"

flautoI = \relative c''' {\key f \major
	c1\p ~|
	c4 r r2 |
	R2.*8 |
%11
	c,2.\p |
	bes4 r8 r4 r8 |
	c2.\fermata |
	g'4(\pp f8) es4( d8) |
	es4( d8) c4. ~|
	c b4.\trill |
	c16( g)\< g( c) c( es) es(\> g) g( es) es(\! c) |
	es4( d8) cis4( a8) |
	d4( c8) bes4( a8) |
	g4. ~ g4 fis8 |
%21
	d16( g) g( bes) bes( d) d4\! r8 |
	R2.*5 |
}

flautoII = \relative c''' {\key f \major
	a1\p ~|
	a4 r r2 |
	R2.*8 |
%11
	a,2.\p |
	bes4 r8 r4 r8 |
	a2.\fermata |
	R2.*10
}

oboeI = \relative c'' {\key f \major
	c1\p ~|
	c4 r r2 |
	R2.*6 |
}

oboeII = \relative c'' {\key f \major
	a1\p ~|
	a4 r r2 |
	R2.*6 |
}

clarinettoI = \relative c'' {\key g \major
	b1\p ~|
	b4 r r2 |
	R2.*6 |
}

clarinettoII = \relative c'' {\key g \major
	g1\p ~|
	g4 r r2 |
	R2.*6 |
}

fagottoI = \relative c' {\key f \major \clef "bass"
	c1\p ~|
	c4 r r2 |
	R2.*6 |
}

fagottoII = \relative c' {\key f \major \clef "bass"
	a1\p ~|
	a4 r r2 |
	R2.*6 |
}

cornoI = \relative c {\key c \major \clef "bass"
	c1\p ~|
	c4 r r2 |
	R2.*6 |
}

cornoII = \relative c, {\key c \major \clef "bass"
	c1\p ~|
	c4 r r2 |
	R2.*6 |
}

violinI = \relative c' {\key f \major
	R1*2 |
	r16 d\p d( fis) fis(\cresc a) a( fis) fis( a) a( c) |
	c4\f r8 r4 r8 |
	r16 g\p g( bes) bes( d) d(\cresc bes) bes( d) d( g) |
	g2.\fp |
	r16 a,\pp a( d) d( fis) r fis, fis( a) a( d) |
	r d d( g) g( bes) bes( g) g( d) d( bes) |
	r16 c c( d) d( fis) a( fis) fis( d) d( a) |
	bes( d) g4 ~ g4. |
%11
	r16 a, a( c)\< c( fis) a(\> f) f(\! d) d( a) |
	bes( d) g4 ~ g4. |
	r16 a, a(\pp c) c( es) a4.\fermata |
	g4(\pp f8) es4( d8) |
	es4( d8) c4. ~|
	c b4.\trill |
	c16( g)\< g( c) c( es) es(\> g) g( es) es(\! c) |
	es4( d8) cis4( a8) |
	d4( c8) bes4( a8) |
	g4. ~ g4 fis8 |
%21
	d16( g) g( bes) bes( d) d4\! r8 |
	r8 r8.. <cis e,>32\f q4 r8 |
	r r8.. d32\f d4 r8 |
	bes4\p r8 r4 r8 |
	g2.\dim |
	a\!\fermata |
}

violinII = \relative c' {\key f \major
	R1*2 |
	c8\p c c\cresc c16( d) d( fis) fis( a) |
	a4\f r8 r4 r8 |
	d,8\p d d as'\cresc as as |
	g2.\fp |
	a!4.(\pp c4.) |
	bes( d) |
	c2. |
	bes |
%11
	a8( fis a\< c\> a\! d,) |
	bes'2. |
	c\fermata |
	d4(\pp c8) bes4( a8) |
	bes4( a8) g4( as8) |
	g2. ~|
	g16( es)\< es( g) g( c) c(\> es) es( c) c(\! g) |
	bes4 bes8 a4. |
	bes4( a8) bes4. ~|
	bes4 r8 d,4. |
%21
	bes16( d) d(\cresc g) g( bes) bes4\! r8 |
	r8 r8.. <g bes>32\f q4 r8 |
	r r8.. <a c>32\f q4 r8 |
	g4\p r8 r4 r8 |
	g2.\dim |
	fis\!\fermata |
}

viola = \relative c' {\key f \major \clef "alto"
	R1*2 |
	a8\p a a\cresc a a16( c) c( d) |
	d4 r8 r4 r8 |
	bes\p bes bes bes\cresc bes' bes |
	bes4.(\fp c)\p |
	fis,4.(\pp a) |
	g( bes) |
	a4.
	<<{
	d4. ~|
	d es
	} \\ {
	fis, |
	g2.
	}>> |
%11
	<fis a>2.\sf |
	<g bes> |
	<fis a>\fermata |
	bes4(\pp a8) g4( fis8) |
	g4( fis8) es4( d8) |
	es4.
	<<{
	g4. |
	g2.\espressivo
	} \\ {
	f4. |
	es2.
	}>> |
	g |
	fis( |
	g4) r8 d4( c8) |
%21
	<bes d> q\cresc q q4\! r8 |
	r r8.. e32\f e4 r8 |
	r r8.. fis32\f fis4 r8 |
	g4 r8 r4 r8 |
	es2.\dim |
	d\!\fermata |
}

sopranosolo = \relative c'' {\key f \major \clef "soprano"
	r4 c4 es4. es8 |
	es a, a  bes c4 a8. g16 |
	fis4 r8 r4 fis8 |
	a a c16 es d4 c16 bes |
	bes4 r8 r4 r8 |
	r es es16 d c8 g g16 fis |
	a4 r8 r d, d |
	g4 g8 g fis g |
	bes8( a) r r4 a8 |
	bes a g es'4.\sf ~|
%11
	es4 d8 r4 a8 |
	bes a g es'4\sf es8 |
	es4.\fermata ~ es4 d8\fermata |
	g4 f8 es4 d8 |
	es4 d8 c bes as |
	g c es es4 d8 |
	c4. r4 r8 |
	es4 d8 cis4 a8 |
	d4 c!8 bes4. ~|
	bes8 g c bes4 a8 |
%21
	g4 r8 r4 d'8\f |
	g4. ~ g8 r cis, |
	d4. ~ d8 r c!\p |
	bes4 bes8 d4 d8 |
	d4. c4 g8 |
	a2.\fermata |
}

sopranosoloLyrics = \lyricmode {
	Mein Gott, be -- trübt ist mei -- ne See -- le in mir, be -- trübt ist
	mei -- ne See -- le in mir, dar -- um ge -- den -- ke ich an dich!
	Dei -- ne Flu -- then rau -- schen da -- her, dass hier ei -- ne
	Tie -- fe und dort ei -- ne Tie -- fe brau -- sen; al -- le dei -- ne
	Was -- ser -- wo -- gen und Wel -- le geh'n ü -- ber mich, al -- le
	dei -- ne Was -- ser -- wo -- gen geh'n ü -- ber mich. Mein Gott, mein
	Gott, be -- trübt ist mei -- ne See -- le in mir!
}

cello = \relative c {\key f \major \clef "bass"
	R1*2 |
	d8\p d d\cresc d d d |
	fis4\f r8 r4 r8 |
	g\p g g bes\cresc bes bes |
	e2.\fp |
	d2.\pp ~|
	d2. ~|
	d4. r4 r8 |
%10
	R2.*5 |
	r4 r8 r4 f,8\p |
	g2. |
	c |
	R |
	r4 r8 d4.( |
	es4) r8 d,4.( |
%21
	g8) g\cresc g g4\! r8 |
	R2.*5 |
}
