\version "2.6.0"

mVCello =  \relative csharp {
	\clef "bass"
	\key a \major
	\time 4/4
	
	b4-.\f^arco gsharp-. e-. gsharp-.
	R1
	
	\clef "tenor"
	e''4\p r r2
	e4 r r2
	b4 r r2
	b4 r r2
	e4 r r2
	a,4 r r2
	gsharp4\f gsharp' gsharp gsharp
	gsharp r r2
	e4\p r r2
	e4 r r2
	b4 r r2
	b4 b csharp dsharp
	e e fsharp gsharp
	a a a a
	gsharp\f gsharp gsharp gsharp gsharp r r2
	gsharp4\p r r2
	
\repeat volta 2 {
	gsharp,4 r r2
	\setTextCresc
		csharp4\< r r2
	csharp,4 r r2
	dsharp'4 r r2
	dsharp,4 r r2
	
	R1*3
	
	\clef "bass"
	r4 fsharp,( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p }^\markup { \italic {un poco più adagio}}
		r8 gsharp!8( b4) b(
	dsharp-.\pp) b-. gsharp-. b-.
	dsharp r gsharp r
	b r dsharp r
	gsharp r gsharp r
	gsharp r r2
	gsharp4 r r2
	dsharp4 r r2
	dsharp4 dsharp dsharp dsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	\clef "tenor"
	e4 r r2
	e4 r r2
	b4 r r2
	b4 b csharp d
	e e fsharp gsharp
	a
		\clef "bass"
		a, asharp r
	b r fsharp r
	a! r gsharp r
	b r b, r
	e
		\clef "tenor"
		fsharp'\p e dsharp
	e a, gsharp r
	a r asharp r
	b_\cr r fsharp r
	a! r gsharp r
	
	\clef "bass"
	b b, b b
	gsharp' gsharp, gsharp gsharp
	dsharp'\f dsharp, dsharp dsharp
	e'\sf e, e e
	csharp''\f csharp, csharp csharp
	gsharp'\f gsharp, gsharp gsharp
	a\f asharp b b
}
	
	\alternative { { e4 r r \clef "tenor" gsharp'\p gsharp r r2 }
		{ \clef "bass" e,4 r r2 } }
		
	r2 r4 b'\p
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, r r b'-.
	e,-. gsharp'\pp dsharp r
	r fsharp csharp r
	r e b r
	r dsharp asharp r
	
	R1*4
	
	\setTextCresc
		gsharp2(\< a!
	b e)\!
	fsharp4\p( gsharp a fsharp
	b2 e4) r
	\setTextCresc
		gsharp,,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	e) r r2
	\setTextCresc
		gsharp,2(\< a!
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
	
	csharp e,
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4^(\< gsharp a fsharp
	e2 a
	e csharp
	d csharp^)
	d4^( e fsharp gsharp\!
	a2\> fsharp\!
	gsharp\p e
	gsharp a^)~
	\setTextCresc
		a1~\<
	a2 a~
	a1~\!
	a2(\> csharp,)\!
	d(_\markup { \dynamic p \italic cresc. } csharp
	d dsharp
	e\p e'
	a,) a~
	\setTextCresc
		a1~\<
	a2 a~
	a1~\!
	a2\> csharp,(\!
	\setTextCresc
		d!\< csharp
	d dsharp\!
	e\p gsharp
	a csharp)
	e( gsharp
	e a)
	e( d')
	e,( csharp')
	e,( gsharp
	e a)
	e( d')
	e,( csharp')
	\setTextCresc
		d,4\< b b2
	e4 csharp csharp2
	d4 b b b
	e a a2
	a,4 fsharp fsharp2
	b4 gsharp gsharp2
	a4 fsharp fsharp fsharp
	b e e2
	a,4\f fsharp fsharp fsharp
	b e_\markup { \italic più \dynamic f } e2
	a,4\ff fsharp fsharp fsharp
	
	R1*4
	
	\clef "tenor"
	\set Staff.midiInstrument = #"pizzicato strings"
	fsharp''4^\markup {pizz.} r r2
	
	R1*2
	
	\clef "bass"
	\set Staff.midiInstrument = #"cello"
	b,,4-.\f^arco gsharp-. e-. gsharp-.
	R1
	
	%%% THEME 1 %%%
	
	\clef "tenor"
	e''4\p r r2
	e4 r r2
	b4 r r2
	b4 r r2
	e4 r r2
	a,4 r r2
	gsharp4\f gsharp' gsharp gsharp
	gsharp r r2
	e4\p r r2
	e4 r r2
	b4 r r2
	b4 b csharp dsharp
	e e fsharp gsharp
	a a a a
	gsharp\f gsharp gsharp gsharp gsharp r r2
	gsharp4\p r r2
	gsharp,4 r r2
	\setTextCresc
		csharp4\< r r2
	csharp,4 r r2
	dsharp'4 r r2
	dsharp,4 r r2
	
	R1*3
	
	\clef "bass"
	r4 fsharp,( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p }^\markup { \italic {un poco più adagio}}
		r8 gsharp!8( b4) b(
	dsharp-.\pp) b-. gsharp-. b-.
	dsharp r gsharp r
	b r dsharp r
	gsharp r gsharp r
	gsharp r r2
	gsharp4 r r2
	dsharp4 r r2
	dsharp4 dsharp dsharp dsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	\clef "tenor"
	e4\f r r2
	e4 r r2
	b4 r r2
	b4 b csharp d
	e e fsharp gsharp
	a
		\clef "bass"
		a, asharp r
	b r fsharp r
	a! r gsharp r
	b r b, r
	e
		\clef "tenor"
		fsharp'\p e dsharp
	e a, gsharp r
	a r asharp r
	b_\cr r fsharp r
	a! r gsharp r
	
	\clef "bass"
	b b, b b
	gsharp' gsharp, gsharp gsharp
	dsharp'\f dsharp, dsharp dsharp
	e'\sf e, e e
	csharp''\f csharp, csharp csharp
	gsharp'\f gsharp, gsharp gsharp
	a\f asharp b b
	
	\clef "bass"
	e4 r r2
	r2 r4 b'\p
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b'
	e, r r b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, e' b b
	e, r r b'-.
	e,-. gsharp'\pp dsharp r
	r fsharp csharp r
	r e b r
	r dsharp asharp r
	
	R1*4
	
	\setTextCresc
		gsharp2(\< a!
	b e)\!
	fsharp4\p( gsharp a fsharp
	b2 e4) r
	\setTextCresc
		gsharp,,2(\< a
	b e)\!
	fsharp4\p( gsharp a fsharp
	e) r r2
	\setTextCresc
		gsharp,2(\< a!
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
	
	csharp e,
	fsharp e)
	fsharp4( gsharp a b\!
	csharp2\> a\!
	b\p e
	d csharp)
	\setTextCresc
		fsharp,4^(\< gsharp a fsharp
	e2 a
	e csharp
	d csharp)
	d4( e fsharp gsharp\!
	a2\> fsharp\!
	gsharp\p e
	gsharp a)~
	\setTextCresc
		a1~\<
	a2 a~
	a1~\!
	a2(\> csharp,)\!
	d(_\markup { \dynamic p \italic cresc. } csharp
	d dsharp
	e\p e'
	a,) a~
	\setTextCresc
		a1~\<
	a2 a~
	a1~\!
	a2\> csharp,(\!
	\setTextCresc
		d!\< csharp
	d dsharp\!
	e\p gsharp
	a csharp)
	e( gsharp
	e a)
	e( d')
	e,( csharp')
	e,( gsharp
	e a)
	e( d')
	e,( csharp')
	\setTextCresc
		d,4\< b b2
	e4 csharp csharp2
	d4 b b b
	e a a2
	a,4 fsharp fsharp2
	b4 gsharp gsharp2
	a4 fsharp fsharp fsharp
	b e e2
	a,4\f fsharp fsharp fsharp
	b e_\markup { \italic più \dynamic f } e2
	a,4\ff fsharp fsharp fsharp
	
	R1*4
	
	\clef "tenor"
	\set Staff.midiInstrument = #"pizzicato strings"
	
	a''4^\markup {pizz.} r r2
	
	R1*2
	
	\set Staff.midiInstrument = #"cello"
	\clef "bass"
	
	b,,4-.\f^arco gsharp-. e-. gsharp-.
	R1
	
	\clef "tenor"
	e''4\p r r2
	e4 r r2
	b4 r r2
	b4 r r2
	e4 r r2
	a,4 r r2
	gsharp4\f gsharp' gsharp gsharp
	gsharp r r2
	e4\p r r2
	e4 r r2
	b4 r r2
	b4 b csharp dsharp
	e e fsharp gsharp
	a a a a
	gsharp\f gsharp gsharp gsharp gsharp r r2
	gsharp4\p r r2
	gsharp,4 r r2
	\setTextCresc
		csharp4\< r r2
	csharp,4 r r2
	dsharp'4 r r2
	dsharp,4 r r2
	
	R1*3
	
	\clef "bass"
	r4 fsharp,( b2)~
	b4\! r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p }^\markup { \italic {un poco più adagio}}
		r8 gsharp!8( b4) b(
	dsharp-.\pp) b-. gsharp-. b-.
	dsharp r gsharp r
	b r dsharp r
	gsharp r gsharp r
	gsharp r r2
	gsharp4 r r2
	dsharp4 r r2
	dsharp4 dsharp dsharp dsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	\clef "tenor"
	e4 r r2
	e4 r r2
	b4 r r2
	b4 b csharp d
	e e fsharp gsharp
	a
		\clef "bass"
		a, asharp r
	b r fsharp r
	a! r gsharp r
	b r b, r
	e
		\clef "tenor"
		fsharp'\p e dsharp
	e a, gsharp r
	a r asharp r
	b_\cr r fsharp r
	a! r gsharp r
	
	\clef "bass"
	b b, b b
	gsharp' gsharp, gsharp gsharp
	dsharp'\f dsharp, dsharp dsharp
	e'\sf e, e e
	csharp''\f csharp, csharp csharp
	gsharp'\f gsharp, gsharp gsharp
	a\f asharp b b
	e4 r r
		\clef "tenor" 
		gsharp'\p
	\setTextCresc
		gsharp4\< r r2
	gsharp,4 r r2
	csharp4 r r2
	csharp,4 r r2
	dsharp'4 r r2
	dsharp,4\! r r2
	
	R1*3
	
	\clef "bass"
	r4 fsharp,( b2)~
	b4 r r2
	
	R1*2
	
	r4 g4(_\markup { \italic dim. } b2)~
	b4 r r2
	
	R1*2
	
	r4_\markup { \italic più \dynamic p }^\markup { \italic {un poco più adagio}}
		r8 gsharp!8( b4) b(
	dsharp-.\pp) b-. gsharp-. b-.
	dsharp r gsharp r
	b r dsharp r
	gsharp r gsharp r
	gsharp r r2
	gsharp4 r r2
	dsharp4 r r2
	dsharp4 dsharp dsharp dsharp
		\mark \markup { \musicglyph #"scripts.ufermata" }
	
	\clef "tenor"
	e4\f r r2
	e4 r r2
	b4 r r2
	b4 b csharp d
	e e fsharp gsharp
	a
		\clef "bass"
		a, asharp r
	b r fsharp r
	a! r gsharp r
	b r b, r
	e
		\clef "tenor"
		fsharp'\p e dsharp
	e a, gsharp r
	a r asharp r
	b_\cr r fsharp r
	a! r gsharp r
	
	\clef "bass"
	b b, b b
	gsharp' gsharp, gsharp gsharp
	dsharp'\f dsharp, dsharp dsharp
	e'\sf e, e e
	csharp''\f csharp, csharp csharp
	gsharp'\f gsharp, gsharp gsharp
	a\f asharp b b
	e r r b'\p
	e, r r b'
	e, r r b'
	e, r r b'
	e, b e, r\fermata
	
	\clef "tenor"
	fsharp''\p(
		\setTextCresc
		gsharp\< a fsharp
	e2 a,
	csharp e
	fsharp e4)\! r\fermata
	
	R1*3
	
	\clef "bass"
	r2 csharp,4-.\p a-.
	\setTextCresc
		d\< b b b
	e a a2
	d,4 b b b\!
	R1
	e4\f csharp a csharp
	
	R1*4
	
	\clef "tenor"
	\set Staff.midiInstrument = #"pizzicato strings"
	gsharp''4^\markup {pizz.} r r2
	
	\clef "treble"
	b'4-.\f^\markup { \column { \line {sul ponticello} \line {arco}}} gsharp-._\markup {\italic {dim.}}
		e-. gsharp-.
	
	%%% E MAJOR %%%
	
	b-. gsharp-. e-.\p gsharp-.
	b\pp gsharp e gsharp
	b b b b
	b b b b
	b b b b
	b b b b
	b b b b
	b b b b
	b b b b
	\noDynamic b\pp_\markup { \italic {semp.} \dynamic pp } b b b
	b b b b
	b b b b
	b b b b
	b b b b
	b b b b
	b b b b
	b b b b
	\setTextCresc
		b\<
		\clef "bass"
		e,,,, e e
	e( fsharp) gsharp-. fsharp-.
	gsharp( b) e-. b-.
	e( fsharp) gsharp-. b-.
	e( b) gsharp-. b-.
	gsharp( fsharp) e-. fsharp-.
	e( b) gsharp-. b-.
	gsharp( fsharp) e-. fsharp-.\!
	e\f r e'' r
	e,,\ff r r2\fermata
	gsharp4 r gsharp'' r
	gsharp,,_\markup { \italic attacca } r r2\fermata
}