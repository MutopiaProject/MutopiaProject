\version "2.6.0"

mVViola =  \relative csharp {
	\clef "alto"
	\key a \major
	\time 4/4
	
	R1*2
	
	e4-.\p^arco gsharp-. gsharp-. e-.
	e gsharp gsharp gsharp'
	fsharp e dsharp csharp
	b b csharp dsharp
	e e fsharp gsharp
	a a a a
	dsharp,\f bsharp' bsharp bsharp
	bsharp gsharp,\p gsharp gsharp
	gsharp-. gsharp'-. gsharp-. e-.
	e b'! gsharp e
	fsharp e dsharp csharp
	b b' b b
	b e e b
	csharp csharp csharp csharp
	bsharp\f bsharp bsharp bsharp
	bsharp gsharp,\p gsharp gsharp
	gsharp-. bsharp-. bsharp-. gsharp-.
	
\repeat volta 2 {	
	gsharp bsharp bsharp gsharp
	\setTextCresc
		gsharp\< csharp csharp gsharp
	a csharp csharp a
	b! dsharp dsharp b
	b dsharp dsharp b
	
	R1*2
	
	r4 fsharp4( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	r2 dsharp4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	r2 dsharp4 b
	gsharp b b gsharp
	gsharp' b b b
	asharp gsharp dsharp dsharp
	fsharpsharp gsharp asharp asharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	a4-. csharp,-. csharp-. a-.
	a csharp csharp a
	b! a gsharp! fsharp
	e e' fsharp gsharp
	b gsharp a b
	csharp e, e csharp
	dsharp fsharp fsharp fsharp
	dsharp dsharp b gsharp'
	gsharp fsharp fsharp fsharp
	b, a'\p gsharp fsharp
	gsharp b, b e
	e csharp csharp fsharp
	fsharp_\cr fsharp fsharp fsharp
	dsharp dsharp b gsharp
	gsharp fsharp fsharp fsharp'
	b, gsharp gsharp' gsharp
	fsharp\f b, b b
	b\sf b b b
	e\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp fsharp > < b gsharp' > < b a' >
}
	\alternative { { < b gsharp' >4 gsharp-.\p gsharp-. bsharp-. |
		gsharp-. bsharp-. bsharp-. gsharp-. }
		{ < b gsharp' >4 r r2 } }
		
	r4 e\p b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, r r b'-.
	e,-. r r fsharp\pp
	e r r e
	dsharp r r dsharp
	csharp r r csharp'
	b r r2
	
	R1*3
	
	\setTextCresc
		gsharp2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	b2 e4) r
	\setTextCresc
		gsharp,,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	e) r r2
	\setTextCresc
		gsharp,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	b2 e4) r
	\setTextCresc
		gsharp,,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	e fsharp gsharp e)
	fsharp( gsharp a fsharp
	\setTextCresc
		e2\< a,
	
	%%% RITMO %%%
	
	csharp, e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4^(\< gsharp a fsharp
	e1
	csharp2 a'~
	a^) a(
	gsharp4 fsharp e d\!
	csharp2\> a'\!
	b\p gsharp
	b csharp)
	\setTextCresc
		d4-.\< d'-. csharp-. e,-.
	b r csharp csharp'
	< gsharp b > r csharp, a\!
	dsharp, dsharp'\> e e'\!
	fsharp,,_\markup { \dynamic p \italic cresc. } r esharp esharp'
	esharp, r fsharp c'
	a\p r gsharp gsharp'
	e,! r csharp'! csharp'!
	\setTextCresc
		gsharp,\< f' e a,
	< gsharp b > gsharp' a e'
	< gsharp, b > r csharp,, csharp'\!
	bsharp\> bsharp a a'\!
	fsharp,_\markup { \dynamic p \italic cresc. } r gsharp gsharp'
	fsharp, r fsharp' b,!
	< csharp, a' >\p a'' e d'
	e, b csharp, csharp'
	b r r d
	csharp r r csharp'
	gsharp r r gsharp
	csharp, r r e'
	gsharp, r r d
	csharp r r csharp'
	gsharp r r gsharp
	a r r e,
	\setTextCresc
		gsharp2(\< e')
	R1
	e2( d')
	r csharp,(
	dsharp, b')
	R1
	dsharp2( b')
	r gsharp(
	dsharp\f b')
	r2 gsharp(_\markup { \italic più \dynamic f }
	dsharp b'\ff)
	
	R1*3
	
	\set Staff.midiInstrument = #"pizzicato strings"
	dsharp,4^\markup {pizz.} r r2
	R1
	b'4 r r2
	
	R1*2
	
	gsharp4 r r2
	
	%%% THEME 1 %%%
	
	\set Staff.midiInstrument = #"viola"
	e,4-.\p^arco gsharp-. gsharp-. e-.
	e gsharp gsharp gsharp'
	fsharp e dsharp csharp
	b b csharp dsharp
	e e fsharp gsharp
	a a a a
	dsharp,\f bsharp' bsharp bsharp
	bsharp gsharp,\p gsharp gsharp
	gsharp-. gsharp'-. gsharp-. e-.
	e b'! gsharp e
	fsharp e dsharp csharp
	b b' b b
	b e e b
	csharp csharp csharp csharp
	bsharp\f bsharp bsharp bsharp
	bsharp gsharp,\p gsharp gsharp
	gsharp-. bsharp-. bsharp-. gsharp-.
	gsharp bsharp bsharp gsharp
	\setTextCresc
		gsharp\< csharp csharp gsharp
	a csharp csharp a
	b! dsharp dsharp b
	b dsharp dsharp b
	
	R1*2
	
	r4 fsharp4( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	r2 dsharp4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	r2 dsharp4 b
	gsharp b b gsharp
	gsharp' b b b
	asharp gsharp dsharp dsharp
	fsharpsharp gsharp asharp asharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	a4-.\f csharp,-. csharp-. a-.
	a csharp csharp a
	b! a gsharp! fsharp
	e e' fsharp gsharp
	b gsharp a b
	csharp e, e csharp
	dsharp fsharp fsharp fsharp
	dsharp dsharp b gsharp'
	gsharp fsharp fsharp fsharp
	b, a'\p gsharp fsharp
	gsharp b, b e
	e csharp csharp fsharp
	fsharp_\cr fsharp fsharp fsharp
	dsharp dsharp b gsharp
	gsharp fsharp fsharp fsharp'
	b, gsharp gsharp' gsharp
	fsharp\f b, b b
	b\sf b b b
	e\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp fsharp > < b gsharp' > < b a' >
	< b gsharp' > r r2
	r4 e\p b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b r
	r e b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, r r b'-.
	e,-. r r fsharp\pp
	e r r e
	dsharp r r dsharp
	csharp r r csharp'
	b r r2
	
	R1*3
	
	\setTextCresc
		gsharp2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	b2 e4) r
	\setTextCresc
		gsharp,,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	e) r r2
	\setTextCresc
		gsharp,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	b2 e4) r
	\setTextCresc
		gsharp,,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	e fsharp gsharp e)
	fsharp( gsharp a fsharp
	e2\setTextCresc
		a,\<
	
	%%% RITMO %%%
	
	csharp, e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4^(\< gsharp a fsharp
	e1
	csharp2 a'~
	a^) a(
	gsharp4 fsharp e d\!
	csharp2\> a'\!
	b\p gsharp
	b csharp)
	\setTextCresc
		d4-.\< d'-. csharp-. e,-.
	b r csharp csharp'
	< gsharp b > r csharp, a\!
	dsharp, dsharp'\> e e'\!
	fsharp,,_\markup { \dynamic p \italic cresc. } r esharp esharp'
	esharp, r fsharp c'
	a\p r gsharp gsharp'
	e,! r csharp'! csharp'!
	\setTextCresc
		gsharp,\< f' e a,
	< gsharp b > gsharp' a e'
	< gsharp, b > r csharp,, csharp'\!
	bsharp\> bsharp a a'\!
	fsharp,_\markup { \dynamic p \italic cresc. } r gsharp gsharp'
	fsharp, r fsharp' b,!
	< csharp, a' >\p a'' e d'
	e, b csharp, csharp'
	b r r d
	csharp r r csharp'
	gsharp r r gsharp
	csharp, r r e'
	gsharp, r r d
	csharp r r csharp'
	gsharp r r gsharp
	a r r e,
	\setTextCresc
		gsharp2(\< e')
	R1
	e2( d')
	r csharp,(
	dsharp, b')
	R1
	dsharp2( b')
	r gsharp(
	dsharp\f b')
	r2 gsharp(_\markup { \italic più \dynamic f }
	dsharp b'\ff)
	
	R1*3
	
	\set Staff.midiInstrument = #"pizzicato strings"
	dsharp,4^\markup {pizz.} r r2
	r2 fsharp4 r
	b r r2
	r gsharp4 r
	R1
	gsharp4 r r2
	
	\set Staff.midiInstrument = #"viola"
	e,4-.\p^arco gsharp-. gsharp-. e-.
	e gsharp gsharp gsharp'
	fsharp e dsharp csharp
	b b csharp dsharp
	e e fsharp gsharp
	a a a a
	dsharp,\f bsharp' bsharp bsharp
	bsharp gsharp,\p gsharp gsharp
	gsharp-. gsharp'-. gsharp-. e-.
	e b'! gsharp e
	fsharp e dsharp csharp
	b b' b b
	b e e b
	csharp csharp csharp csharp
	bsharp\f bsharp bsharp bsharp
	bsharp gsharp,\p gsharp gsharp
	gsharp-. bsharp-. bsharp-. gsharp-.
	gsharp bsharp bsharp gsharp
	\setTextCresc
		gsharp\< csharp csharp gsharp
	a csharp csharp a
	b! dsharp dsharp b
	b dsharp dsharp b
	
	R1*2
	
	r4 fsharp4( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	r2 dsharp4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	r2 dsharp4 b
	gsharp b b gsharp
	gsharp' b b b
	asharp gsharp dsharp dsharp
	fsharpsharp gsharp asharp asharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	a4-. csharp,-. csharp-. a-.
	a csharp csharp a
	b! a gsharp! fsharp
	e e' fsharp gsharp
	b gsharp a b
	csharp e, e csharp
	dsharp fsharp fsharp fsharp
	dsharp dsharp b gsharp'
	gsharp fsharp fsharp fsharp
	b, a'\p gsharp fsharp
	gsharp b, b e
	e csharp csharp fsharp
	fsharp_\cr fsharp fsharp fsharp
	dsharp dsharp b gsharp
	gsharp fsharp fsharp fsharp'
	b, gsharp gsharp' gsharp
	fsharp\f b, b b
	b\sf b b b
	e\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp fsharp > < b gsharp' > < b a' >
	< b gsharp' >4 gsharp-.\p gsharp-. bsharp-.
	gsharp-. bsharp-. bsharp-. gsharp-.
	gsharp bsharp bsharp gsharp
	\setTextCresc
		gsharp\< csharp csharp gsharp
	a csharp csharp a
	b! dsharp dsharp b
	b dsharp dsharp b
	
	R1*2
	
	r4 fsharp4( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	r2 dsharp4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	r2 dsharp4 b
	gsharp b b gsharp
	gsharp' b b b
	asharp gsharp dsharp dsharp
	fsharpsharp gsharp asharp asharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	a4-.\f csharp,-. csharp-. a-.
	a csharp csharp a
	b! a gsharp! fsharp
	e e' fsharp gsharp
	b gsharp a b
	csharp e, e csharp
	dsharp fsharp fsharp fsharp
	dsharp dsharp b gsharp'
	gsharp fsharp fsharp fsharp
	b, a'\p gsharp fsharp
	gsharp b, b e
	e csharp csharp fsharp
	fsharp_\cr fsharp fsharp fsharp
	dsharp dsharp b gsharp
	gsharp fsharp fsharp fsharp'
	b, gsharp gsharp' gsharp
	fsharp\f b, b b
	b\sf b b b
	e\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp fsharp > < b gsharp' > < b a' >
	< b gsharp' >4 gsharp\p b r
	r gsharp b r
	r gsharp b r
	r gsharp b r
	r b e, r\fermata
	R1
	\setTextCresc
		fsharp'4(\< gsharp a fsharp
	e2 a,)~
	a( csharp4)\! r\fermata
	
	R1*3
	
	r2 csharp4-.\p a-.
	\setTextCresc
		d\< b b b
	e a a2
	d,4 b b b\!
	R1
	e4\f csharp a csharp
	R1
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r2 e'4^\markup {pizz.} r
	R1
	b4 r r2
	R1
	r2 e,4 r
	
	%%% E MAJOR %%%
	
	\set Staff.midiInstrument = #"viola"
	r2 gsharp4\p^arco r
	e'-.\pp^\markup {sul ponticello} b-. gsharp-. b-.
	e e fsharp e
	fsharp e dsharp csharp
	b a gsharp fsharp
	gsharp gsharp a b
	b a gsharp fsharp
	fsharp asharp a a
	gsharp gsharp gsharp gsharp
	\noDynamic gsharp\pp(_\markup { \italic {semp.} \dynamic pp } a) fsharp'-. fsharp-.
	e( fsharp) fsharp-. fsharp-.
	e( fsharp) fsharp-. fsharp-.
	e b, b b
	e,( fsharp) gsharp-. fsharp-.
	e( fsharp) gsharp-. fsharp-.
	e( fsharp) gsharp-. fsharp-.
	e( fsharp) gsharp-. fsharp-.
	\setTextCresc
		e(\< fsharp) gsharp-. fsharp-.
	gsharp( a) b-. a-.
	b( dsharp) e-. fsharp,-.
	gsharp( a) e'-. dsharp-.
	gsharp( fsharp) e-. fsharp-.
	e( b) gsharp-. b-.
	gsharp( fsharp) e-. fsharp-.
	e( dsharp) csharp-. dsharp-.\!
	e\f r e r
	< e b' gsharp' >\ff r r2\fermata
	gsharp'4 r gsharp, r
	gsharp r r2\fermata
}