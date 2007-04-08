\version "2.6.0"

mVViolinTwo =  \relative csharp' {
	\clef "treble"
	\key a \major
	\time 4/4
	
	R1*2
	
	gsharp4-.\p^arco b-. b-. gsharp-.
	gsharp b b b'
	a gsharp fsharp e
	dsharp dsharp e fsharp
	gsharp gsharp a b
	csharp e dsharp csharp
	bsharp\f dsharp dsharp dsharp
	dsharp gsharp,\p gsharp gsharp
	gsharp-. b!-. b-. gsharp-.
	gsharp gsharp' b, gsharp
	a gsharp fsharp e
	dsharp dsharp' e fsharp
	gsharp gsharp a b
	e, fsharp fsharp fsharp
	dsharp\f dsharp dsharp dsharp
	dsharp gsharp,\p gsharp gsharp
	bsharp,-. dsharp-. dsharp-. bsharp-.
	
\repeat volta 2 {
	bsharp dsharp dsharp bsharp
	\setTextCresc
		csharp\< e e csharp
	csharp e e csharp
	fsharp fsharp fsharp dsharp
	fsharp fsharp fsharp < dsharp fsharp >
	R1
	r4 fsharp( b2)~
	b4\! r4 r2
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	
	R1*2
	
	dsharp,4-.\pp b-. gsharp-. b-.
	r2 dsharp4 b
	gsharp b r2
	r2 dsharp4 b
	b' dsharp dsharp dsharp
	csharp b fsharpsharp gsharp
	asharp b fsharpsharp' fsharpsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	gsharp-. b,-. b-. gsharp-.
	gsharp b b gsharp
	a! gsharp fsharp! e
	dsharp dsharp' e fsharp
	e e e e
	e csharp csharp fsharp,
	fsharp b asharp a
	fsharp fsharp e b'
	b a' a a
	gsharp b,\p b b
	b b b b
	a fsharp fsharp csharp'
	b_\cr b asharp a
	fsharp fsharp fsharp gsharp
	b, a a' a
	e b b' b
	b\f b b b
	b\sf b b b
	a\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp e > < b e > < fsharp dsharp' >
}
	\alternative { { < e e' >4 gsharp-.\p gsharp dsharp | bsharp-. dsharp-. dsharp-. bsharp-. }
		{ < e e' >4 r r b''\p } }
	
	e,4 r r2
	r4 gsharp, e r
	gsharp,2(^\markup { \italic piacevole } a
	b e)
	fsharp4( gsharp a fsharp
	b2 e4) r
	gsharp,,2( a
	b e)
	fsharp4( gsharp a fsharp
	e) r r2
	gsharp,2( a
	b e)
	fsharp4( gsharp a fsharp
	b2 e4) r
	gsharp,,2( a
	b e)
	fsharp4( gsharp a fsharp
	e) e-. b-. r
	
	R1*4
	
	r2 r4 b''\pp
	a r r a
	gsharp r r gsharp
	fsharp r r fsharp
	\setTextCresc e\< r r b'
	e, r r b'\!
	e,\p r r b'
	e, r r b'
	\setTextCresc
		e,\< r r b'
	e, r r b'\!
	e,\p r r b'
	gsharp r r b,
	\setTextCresc
		e,\< e' b b
	e, e' b b\!
	e,\p e' b b
	e, e' b b
	\setTextCresc
		e,\< e' b b
	e, e' b b\!
	e,\p e' b b
	e, e' b b
	e, e' b b
	\setTextCresc
		b(\< e) a,,2(
	
	%%% RITMO %%%
	
	csharp e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4(\< gsharp a fsharp
	e) d-. csharp-. csharp'-.
	r b a a'
	r d, a a'
	r d,, a d'\!
	r d,\> csharp csharp'\!
	r fsharp,\p e e'
	r b a e'
	r
		\setTextCresc
		f\< e csharp
	r gsharp a e
	r b' a csharp,\!
	r bsharp\> a' a,\!
	r_\markup { \dynamic p \italic cresc. } fsharp' gsharp gsharp'
	r gsharp, fsharp fsharp'
	r\p fsharp, e e'
	r fsharp, e e'
	r
		\setTextCresc
		< gsharp,, d' >\< csharp csharp'
	r f e csharp
	r b, a a'\!
	dsharp,\> dsharp' e e,\!
	r_\markup { \dynamic p \italic cresc. } fsharp esharp esharp'
	r fsharp, b, b'
	r csharp,\p b b'
	r d,! e! e'!
	r fsharp e r
	r fsharp, e r
	r fsharp' e r
	r fsharp, e r
	r fsharp' e r
	r fsharp, e r
	r fsharp' e r
	r fsharp, e e
	R1
	\setTextCresc
		csharp2(\< a')
	R1
	csharp2( a')
	R1
	gsharp,,2( e')
	R1
	gsharp2( e')\!
	R1
	gsharp,2(_\markup { \italic più \dynamic f } e')
	b( a'\ff)
	R1
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a,4^\markup {pizz.} r r2
	
	R1*4
	
	gsharp4 r r2
	
	R1*2
	
	%%% THEME 1 %%%
	
	\set Staff.midiInstrument = #"violin"
	gsharp,4-.\p^arco b-. b-. gsharp-.
	gsharp b b b'
	a gsharp fsharp e
	dsharp dsharp e fsharp
	gsharp gsharp a b
	csharp e dsharp csharp
	bsharp\f dsharp dsharp dsharp
	dsharp gsharp,\p gsharp gsharp
	gsharp-. b!-. b-. gsharp-.
	gsharp gsharp' b, gsharp
	a gsharp fsharp e
	dsharp dsharp' e fsharp
	gsharp gsharp a b
	e, fsharp fsharp fsharp
	dsharp\f dsharp dsharp dsharp
	dsharp gsharp,\p gsharp gsharp
	bsharp,-. dsharp-. dsharp-. bsharp-.
	bsharp dsharp dsharp bsharp
	\setTextCresc
		csharp\< e e csharp
	csharp e e csharp
	fsharp fsharp fsharp dsharp
	fsharp fsharp fsharp < dsharp fsharp >
	R1
	r4 fsharp( b2)~
	b4\! r4 r2
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	
	R1*2
	
	dsharp,4-.\pp b-. gsharp-. b-.
	r2 dsharp4 b
	gsharp b r2
	r2 dsharp4 b
	b' dsharp dsharp dsharp
	csharp b fsharpsharp gsharp
	asharp b fsharpsharp' fsharpsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	gsharp-.\f b,-. b-. gsharp-.
	gsharp b b gsharp
	a! gsharp fsharp! e
	dsharp dsharp' e fsharp
	e e e e
	e csharp csharp fsharp,
	fsharp b asharp a
	fsharp fsharp e b'
	b a' a a
	gsharp b,\p b b
	b b b b
	a fsharp fsharp csharp'
	b_\cr b asharp a
	fsharp fsharp fsharp gsharp
	b, a a' a
	e b b' b
	b\f b b b
	b\sf b b b
	a\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp e > < b e > < fsharp dsharp' >
	< e e' >4 r r b''\p
	e,4 r r2
	r4 gsharp, e r
	gsharp,2(^\markup { \italic piacevole } a
	b e)
	fsharp4( gsharp a fsharp
	b2 e4) r
	gsharp,,2( a
	b e)
	fsharp4( gsharp a fsharp
	e) r r2
	gsharp,2( a
	b e)
	fsharp4( gsharp a fsharp
	b2 e4) r
	gsharp,,2( a
	b e)
	fsharp4( gsharp a fsharp
	e) e-. b-. r
	
	R1*4
	
	r2 r4 b''\pp
	a r r a
	gsharp r r gsharp
	fsharp r r fsharp
	\setTextCresc
		e\< r r b'
	e, r r b'\!
	e,\p r r b'
	e, r r b'
	\setTextCresc
		e,\< r r b'
	e, r r b'\!
	e,\p r r b'
	gsharp r r b,
	\setTextCresc
		e,\< e' b b
	e, e' b b\!
	e,\p e' b b
	e, e' b b
	\setTextCresc
		e,\< e' b b
	e, e' b b\!
	e,\p e' b b
	e, e' b b
	e, e' b b
	\setTextCresc
		b(\< e) a,,2(
	
	%%% RITMO %%%
	
	csharp e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4(\< gsharp a fsharp
	e) d-. csharp-. csharp'-.
	r b a a'
	r d, a a'
	r d,, a d'\!
	r d,\> csharp csharp'\!
	r fsharp,\p e e'
	r b a e'
	r
		\setTextCresc
		f\< e csharp
	r gsharp a e
	r b' a csharp,\!
	r bsharp\> a' a,\!
	r_\markup { \dynamic p \italic cresc. } fsharp' gsharp gsharp'
	r gsharp, fsharp fsharp'
	r\p fsharp, e e'
	r fsharp, e e'
	r
		\setTextCresc
		< gsharp,, d' >\< csharp csharp'
	r f e csharp
	r b, a a'\!
	dsharp,\> dsharp' e e,\!
	r_\markup { \dynamic p \italic cresc. } fsharp esharp esharp'
	r fsharp, b, b'
	r csharp,\p b b'
	r d,! e! e'!
	r fsharp e r
	r fsharp, e r
	r fsharp' e r
	r fsharp, e r
	r fsharp' e r
	r fsharp, e r
	r fsharp' e r
	r fsharp, e e
	R1
	\setTextCresc
		csharp2(\< a')
	R1
	csharp2( a')
	R1
	gsharp,,2( e')
	R1
	gsharp2( e')
	R1
	gsharp,2(_\markup { \italic più \dynamic f } e')
	b( a'\ff)
	R1
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a,4^\markup {pizz.} r r2
	r2 fsharp4 r
	r2 dsharp4 r
	
	R1*2
	
	gsharp4 r r2
	r2 e4 r
	r2 gsharp4 r
	
	\set Staff.midiInstrument = #"violin"
	gsharp,4-.\p^arco b-. b-. gsharp-.
	gsharp b b b'
	a gsharp fsharp e
	dsharp dsharp e fsharp
	gsharp gsharp a b
	csharp e dsharp csharp
	bsharp\f dsharp dsharp dsharp
	dsharp gsharp,\p gsharp gsharp
	gsharp-. b!-. b-. gsharp-.
	gsharp gsharp' b, gsharp
	a gsharp fsharp e
	dsharp dsharp' e fsharp
	gsharp gsharp a b
	e, fsharp fsharp fsharp
	dsharp\f dsharp dsharp dsharp
	dsharp gsharp,\p gsharp gsharp
	bsharp,-. dsharp-. dsharp-. bsharp-.
	bsharp dsharp dsharp bsharp
	\setTextCresc
		csharp\< e e csharp
	csharp e e csharp
	fsharp fsharp fsharp dsharp
	fsharp fsharp fsharp < dsharp fsharp >
	R1
	r4 fsharp( b2)~
	b4\! r4 r2
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	
	R1*2
	
	dsharp,4-.\pp b-. gsharp-. b-.
	r2 dsharp4 b
	gsharp b r2
	r2 dsharp4 b
	b' dsharp dsharp dsharp
	csharp b fsharpsharp gsharp
	asharp b fsharpsharp' fsharpsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	gsharp-. b,-. b-. gsharp-.
	gsharp b b gsharp
	a! gsharp fsharp! e
	dsharp dsharp' e fsharp
	e e e e
	e csharp csharp fsharp,
	fsharp b asharp a
	fsharp fsharp e b'
	b a' a a
	gsharp b,\p b b
	b b b b
	a fsharp fsharp csharp'
	b_\cr b asharp a
	fsharp fsharp fsharp gsharp
	b, a a' a
	e b b' b
	b\f b b b
	b\sf b b b
	a\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp e > < b e > < fsharp dsharp' >
	< e e' >4 gsharp-.\p gsharp dsharp
	bsharp-. dsharp-. dsharp-. bsharp-.
	bsharp dsharp dsharp bsharp
	\setTextCresc
		csharp\< e e csharp
	csharp e e csharp
	fsharp fsharp fsharp dsharp
	fsharp fsharp fsharp < dsharp fsharp >
	R1
	r4 fsharp( b2)~
	b4\! r4 r2
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4) b~
	b r r2
	
	R1*2
	
	dsharp,4-.\pp b-. gsharp-. b-.
	r2 dsharp4 b
	gsharp b r2
	r2 dsharp4 b
	b' dsharp dsharp dsharp
	csharp b fsharpsharp gsharp
	asharp b fsharpsharp' fsharpsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	gsharp-.\f b,-. b-. gsharp-.
	gsharp b b gsharp
	a! gsharp fsharp! e
	dsharp dsharp' e fsharp
	e e e e
	e csharp csharp fsharp,
	fsharp b asharp a
	fsharp fsharp e b'
	b a' a a
	gsharp b,\p b b
	b b b b
	a fsharp fsharp csharp'
	b_\cr b asharp a
	fsharp fsharp fsharp gsharp
	b, a a' a
	e b b' b
	b\f b b b
	b\sf b b b
	a\f < csharp e > < csharp e > < csharp e >
	< b e >\f < b e > < b e > < b e >
	< csharp e >\f < csharp e > < b e > < fsharp dsharp' >
	< e e' >4 r r2
	gsharp,2\p(^\markup { \italic piacevole} a
	b e)
	fsharp4( gsharp a fsharp)
	b2( e4) r\fermata
	R1
	\setTextCresc
		fsharp4(\< gsharp a fsharp
	e2 a,)~
	a( csharp4) r\fermata
	
	%%% A MAJOR %%%
	
	r2 gsharp'4-.\p e-.
	r2 a4-. e-.
	r2 gsharp4 e
	r2 a4 csharp,
	r2
		\setTextCresc
		d4\< b
	r2 e4 csharp
	r2 d4 b\!
	
	R1*3
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e4^\markup {pizz.} r r2
	r2 csharp4 r
	R1
	r2 gsharp4 r
	R1
	
	%%% E MAJOR %%%
	
	\set Staff.midiInstrument = #"violin"
	gsharp4\p^arco r r2
	gsharp'4-.\pp^\markup {sul ponticello} e-. b-. e-.
	gsharp gsharp a gsharp
	a gsharp fsharp e
	dsharp csharp b dsharp
	e e fsharp gsharp
	gsharp fsharp e dsharp
	dsharp csharp csharp fsharp
	fsharp e fsharp gsharp
	\noDynamic e\pp(_\markup { \italic {semp.} \dynamic pp } fsharp) a-. a-.
	gsharp( a) a-. a-.
	gsharp( a) a-. a-.
	gsharp( fsharp) e-. fsharp-.
	gsharp( fsharp) e-. fsharp-.
	gsharp( fsharp) e-. fsharp-.
	gsharp( fsharp) e-. fsharp-.
	gsharp( fsharp) e-. fsharp-.
	\setTextCresc
		gsharp(\< fsharp) e-. fsharp-.
	e( b) gsharp-. b-.
	gsharp( fsharp) b,-. fsharp'-.
	e( b) b-. b-.
	gsharp( b) e-. b-.
	e( fsharp) gsharp-. fsharp-.
	gsharp( b) e-. b-.
	e( fsharp) gsharp-. fsharp-.\!
	gsharp\f r e, r
	< e b' gsharp' >4\ff r r2\fermata
	gsharp4 r gsharp, r
	gsharp' r r2\fermata
}