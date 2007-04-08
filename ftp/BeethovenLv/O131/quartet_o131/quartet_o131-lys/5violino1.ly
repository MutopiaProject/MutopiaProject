\version "2.6.0"

mVViolinOne =  \relative csharp'' {
	\clef "treble"
	\key a \major
	\time 4/4
	
	R1*2
	
	b4-.\p gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	gsharp4\f gsharp gsharp gsharp
	gsharp r r2
	b4-.\p gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	gsharp4\f gsharp gsharp gsharp
	gsharp r r2
	dsharp,4-.\p bsharp-. gsharp-. bsharp-.

\repeat volta 2 { 
	dsharp2( gsharp)
	\setTextCresc
		e4-.\< csharp-. gsharp-. csharp-.
	e2( a)
	fsharp4 dsharp b! dsharp
	fsharp2( b)
	r4 fsharp( b2)~
	b4 r r2\!
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4)~ b~
	b r r2
	
	R1*3
	
	r2 dsharp,,4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	dsharp' b gsharp b
	dsharp2( gsharp)
	fsharpsharp4 gsharp asharp b
	csharp b asharp csharp
	b4-. gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp!-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	dsharp4-. e-. csharp-. dsharp-.
	b2( e)
	e4-. dsharp-. csharp-. dsharp-.
	e dsharp,\p e fsharp
	gsharp( fsharp) e-. dsharp-.
	csharp( dsharp) e-. fsharp-.
	dsharp(_\cr e) csharp-. dsharp-.
	b( csharp) dsharp-. e-.
	e( dsharp) csharp-. dsharp-.
	fsharp( e) dsharp-. e-.
	gsharp\f( fsharp) esharp-. fsharp-.
	a\sf( gsharp) fsharp-. gsharp-.
	b\f( a) gsharp-. a-.
	csharp\f( b) asharp-. b-.
	d\f( csharp) e-. dsharp-.
	}
	
	\alternative {{ e4 r r2 | dsharp,4-.\p bsharp-. gsharp-. bsharp-. } { e'4 e\p b r }}
	
	R1
	r2 r4 gsharp\p
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
	
	r4 csharp'\pp gsharp r
	r b fsharp r
	r a e r
	r gsharp dsharp r
	r
		\setTextCresc
		e'\< b r
	r e b r
	r\! e\p b r
	r e b r
	r
		\setTextCresc
		e\< b r
	r e b r
	r\! e\p b r
	r e b b
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
	b e b b
	\setTextCresc
		b\< e( a,,2
	
	%%% RITMO %%%
	
	csharp e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4(\< gsharp a fsharp
	e2 a,
	csharp e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		b(\< csharp
	d csharp
	d e\!
	fsharp\> e)\!
	b(_\markup { \dynamic p \italic cresc. } csharp
	b a)
	e\p( b'
	csharp a)
	\setTextCresc
		b(\< csharp
	d csharp d e\!
	fsharp\> e)\!
	b(_\markup { \dynamic p \italic cresc. } csharp
	b a
	e\p b'
	csharp a)
	d4-. b-. b2
	e4-. csharp-. csharp2
	d4 b b b
	e a a2
	d,4 b b2
	e4 csharp csharp2
	d4 b b b
	csharp a a2
	r
		\setTextCresc
		d4\< b
	r2 e4 csharp
	r2 d4 b
	r2 e4 a
	r2 a,4 fsharp
	r2 b4 gsharp
	r2 a4 fsharp
	r2 b4 e\!
	r2 a,4\f fsharp
	r2_\markup { \italic più \dynamic f } b4 e
	r2 a,4\ff fsharp
	
	R1*2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	fsharp,4^\markup {pizz.} r r2
	
	R1*4
	
	e4 r r2
	R1
	
	%%% THEME 1 %%%
	
	\set Staff.midiInstrument = #"violin"
	b'4-.\p^arco gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	gsharp4\f gsharp gsharp gsharp
	gsharp r r2
	b4-.\p gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	gsharp4\f gsharp gsharp gsharp
	gsharp r r2
	dsharp,4-.\p bsharp-. gsharp-. bsharp-.
	dsharp2( gsharp)
	\setTextCresc
		e4-.\< csharp-. gsharp-. csharp-.
	e2( a)
	fsharp4 dsharp b! dsharp
	fsharp2( b)
	r4 fsharp( b2)~
	b4 r r2\!
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4)~ b~
	b r r2
	
	R1*3
	
	r2 dsharp,,4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	dsharp' b gsharp b
	dsharp2( gsharp)
	fsharpsharp4 gsharp asharp b
	csharp b asharp csharp
	b4-.\f gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp!-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	dsharp4-. e-. csharp-. dsharp-.
	b2( e)
	e4-. dsharp-. csharp-. dsharp-.
	e dsharp,\p e fsharp
	gsharp( fsharp) e-. dsharp-.
	csharp( dsharp) e-. fsharp-.
	dsharp(_\cr e) csharp-. dsharp-.
	b( csharp) dsharp-. e-.
	e( dsharp) csharp-. dsharp-.
	fsharp( e) dsharp-. e-.
	gsharp\f( fsharp) esharp-. fsharp-.
	a\sf( gsharp) fsharp-. gsharp-.
	b\f( a) gsharp-. a-.
	csharp\f( b) asharp-. b-.
	d\f( csharp) e-. dsharp-.
	e4 e\p b r
	R1
	r2 r4 gsharp\p
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
	
	r4 csharp'\pp gsharp r
	r b fsharp r
	r a e r
	r gsharp dsharp r
	r
		\setTextCresc
		e'\< b r
	r e b r
	r\! e\p b r
	r e b r
	r
		\setTextCresc
		e\< b r
	r e b r
	r\! e\p b r
	r e b b
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
	b e b b
	\setTextCresc
		b\< e( a,,2
	
	%%% RITMO %%%
	
	csharp e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4(\< gsharp a fsharp
	e2 a,
	csharp e
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		b(\< csharp
	d csharp
	d e\!
	fsharp\> e)\!
	b(_\markup { \dynamic p \italic cresc. } csharp
	b a
	e\p b'
	csharp a)
	\setTextCresc
		b(\< csharp
	d csharp d e\!
	fsharp\> e)\!
	b(_\markup { \dynamic p \italic cresc. } csharp
	b a)
	e\p( b'
	csharp a)
	d4-. b-. b2
	e4-. csharp-. csharp2
	d4 b b b
	e a a2
	d,4 b b2
	e4 csharp csharp2
	d4 b b b
	csharp a a2
	r
		\setTextCresc
		d4\< b
	r2 e4 csharp
	r2 d4 b
	r2 e4 a
	r2 a,4 fsharp
	r2 b4 gsharp
	r2 a4 fsharp
	r2 b4 e\!
	r2 a,4\f fsharp
	r2_\markup { \italic più \dynamic f } b4 e
	r2 a,4\ff fsharp
	R1
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r2 a,4^\markup {pizz.} r
	fsharp r r2
	
	R1*2
	
	r2 b4 r
	R1
	e,4 r r2
	R1
	
	\set Staff.midiInstrument = #"violin"
	b'4-.\p^arco gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	gsharp4\f gsharp gsharp gsharp
	gsharp r r2
	b4-.\p gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	gsharp4\f gsharp gsharp gsharp
	gsharp r r2
	dsharp,4-.\p bsharp-. gsharp-. bsharp-.
	dsharp2( gsharp)
	\setTextCresc
		e4-.\< csharp-. gsharp-. csharp-.
	e2( a)
	fsharp4 dsharp b! dsharp
	fsharp2( b)
	r4 fsharp( b2)~
	b4 r r2\!
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p }
		r8 gsharp!8( b4)~ b~
	b r r2
	
	R1*2
	R1
	
	r2 dsharp,,4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	dsharp' b gsharp b
	dsharp2( gsharp)
	fsharpsharp4 gsharp asharp b
	csharp b asharp csharp
	
	b4-. gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp!-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	dsharp4-. e-. csharp-. dsharp-.
	b2( e)
	e4-. dsharp-. csharp-. dsharp-.
	e dsharp,\p e fsharp
	gsharp( fsharp) e-. dsharp-.
	csharp( dsharp) e-. fsharp-.
	dsharp(_\cr e) csharp-. dsharp-.
	b( csharp) dsharp-. e-.
	e( dsharp) csharp-. dsharp-.
	fsharp( e) dsharp-. e-.
	gsharp\f( fsharp) esharp-. fsharp-.
	a\sf( gsharp) fsharp-. gsharp-.
	b\f( a) gsharp-. a-.
	csharp\f( b) asharp-. b-.
	d\f( csharp) e-. dsharp-.
	e4 r r2
	dsharp,4-.\p bsharp-. gsharp-. bsharp-.
	dsharp2( gsharp)
	\setTextCresc
		e4-.\< csharp-. gsharp-. csharp-.
	e2( a)
	fsharp4 dsharp b! dsharp
	fsharp2( b)
	r4 fsharp( b2)~
	b4 r r2\!
	
	R1*2
	
	r4 g(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p } r8 gsharp!8( b4)~ b~
	b r r2
	
	R1*3
	
	r2 dsharp,,4-.\pp b-.
	gsharp-. b-. r2
	dsharp4 b gsharp b
	dsharp' b gsharp b
	dsharp2( gsharp)
	fsharpsharp4 gsharp asharp b
	csharp b asharp csharp
	b4-.\f gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp!-. gsharp-.
	a r r2
	gsharp4-. fsharp-. e-. dsharp-.
	csharp2( fsharp)
	dsharp4-. e-. csharp-. dsharp-.
	b2( e)
	e4-. dsharp-. csharp-. dsharp-.
	e dsharp,\p e fsharp
	gsharp( fsharp) e-. dsharp-.
	csharp( dsharp) e-. fsharp-.
	dsharp(_\cr e) csharp-. dsharp-.
	b( csharp) d-. e-.
	e( dsharp) csharp-. dsharp-.
	fsharp( e) dsharp-. e-.
	gsharp\f( fsharp) esharp-. fsharp-.
	a\sf( gsharp) fsharp-. gsharp-.
	b\f( a) gsharp-. a-.
	csharp\f( b) asharp-. b-.
	d\f( csharp) e-. dsharp-.
	e r r2
	gsharp,,2\p(^\markup { \italic piacevole } a
	b e)
	fsharp4( gsharp a fsharp)
	b2( e4) r\fermata
	fsharp,\p(
		\setTextCresc
		gsharp\< a fsharp
	e2 a,
	csharp e
	fsharp e4)\! r\fermata
	
	%%% A MAJOR %%%
	
	d'-.\p b-. b2
	e4-. csharp-. csharp2
	d4 b b b
	e a a2
	r2
		\setTextCresc
		d,4\< b
	r2 e4 csharp
	r2 d4 b\!
	
	R1*4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	csharp,4^\markup {pizz.} r r2
	r2 b4 r
	R1
	e,4 r r2
	
	%%% E MAJOR %%%
	
	\set Staff.midiInstrument = #"violin"
	b''4-.^\markup { \column { \line {sul ponticello} \line {arco}}}_\markup { \italic {dim.}}
		gsharp-. e-. gsharp-.
	b-.\pp gsharp-. e-. gsharp-.
	b2( e)
	dsharp4-. e-. fsharp-. gsharp-.
	a r r2
	gsharp4 fsharp e dsharp
	csharp dsharp e fsharp
	dsharp e csharp dsharp
	b csharp dsharp e
	\noDynamic e\pp(_\markup { \italic {semp.} \dynamic pp } dsharp) csharp-. dsharp-.
	e( dsharp) csharp-. dsharp-.
	e( dsharp) csharp-. dsharp-.
	e( a,) gsharp-. a-.
	b( a) gsharp-. a-.
	b( a) gsharp-. a-.
	b( a) gsharp-. a-.
	b( a) gsharp-. a-.
	\setTextCresc
		b(\<^\markup {da capo per l'ordinario} a) gsharp-. a-.
	gsharp( fsharp) e-. fsharp-.
	e( b) gsharp-. b-.
	gsharp( fsharp) e-. fsharp-.
	e( fsharp) gsharp-. fsharp-.
	gsharp( b) e-. b-.
	e( fsharp) gsharp-. fsharp-.
	gsharp( b) e-. b-.\!
	e\f r e,, r
	e''\ff r r2\fermata
	gsharp,4 r gsharp,, r
	gsharp'' r r2\fermata
}