\version "2.18.2"

theBass =  \relative d {
	\clef "bass"
	\key d \major
	
	a8\ff[ a'16( gsharp] a8)[ a,]
	bflat2
	bflat'
	bflat,4 a8 r
	a'8[ a16( gsharp] a8)[ a,]
	bflat4 b
	csharp d
	csharp8 r r4
	
	R1*2/4*3
	
	fsharp8-.\f[ fsharp16( esharp] fsharp8)[ fsharp,-.]
	g4 gsharp
	a asharp
	b bflat
	a a8\ff r
	
	R1*2/4*36
	
	r8 d\p r d
	r d r d
	r d r d
	r d d r
	d8\f r r4
	d8_\markup { \italic dim. } r r4
	d8 r d r
	r d r d
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 d\p^\markup {pizz.} r d
	r d r d
	r d\< r d
	r d r d\!
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r4 r8 d\p^\markup {arco}
	e r r4
	R1*2/4
	r4 r8 a
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p r f
	r e r a
	gsharp2\mf
	g!2
	fsharp
	f
	e_\cr
	eflat4 d
	dflat2
	c4 b
	bflat( bflat')
	a8 r r4
	bflat,( bflat')
	a8 r r4
	gsharp2\mf
	g!
	fsharp4\< f
	e a,\!
	
	R1*2/4*4
	d8\p r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8^\markup {pizz.} r r4
	d8 r r4
	d8 r d r
	d\f r r4
	d8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d8^arco r d r
	d' r csharp r
	b\f r r e,
	a r g r
	fsharp-.\p[\< e-. d-. csharp-.]
	b[ a] d4->\!
	fsharp8\f r r e
	a r e'\p[ d]
	csharp-.[\< b-. a-. g-.]
	fsharp-.[ e-.]\! d-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	b8\mf^\markup {pizz.} r r4
	b8 r b r
	b r b' r
	b r r4
	b,8 r r4
	b8 r b r
	b r b' r
	b r r4
	b8\f r r4
	R1*2/4
	b8 r r4
	R1*2/4
	b8 r r4
	a8 r r4
	gsharp8 r fsharp r
	f r e r
	dsharp r r4
	d!8 r r4
	csharp8 r r4
	b8 r bflat r
	a r r4
	aflat8 r r4
	g8\> r fsharp\! r
	e\p r r4
	
	R1*2/4*4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	a8\ff^arco r r4
	
	R1*2/4*34
	
	r4 r8 a8
	r a r a
	r a r a
	r a r a
	r a r a
	r a r a
	r a r a
	r a r a
	r a fsharp'\mf[ fsharp]
	fsharp4 e8[ d]
	csharp[( b]) fsharp'[ fsharp]
	fsharp4 e8[ d]
	csharp[( b]) a[ a']
	fsharp4 e8[ d]
	csharp[( b]) fsharp'[ fsharp]
	e[ d csharp b]
	a r r4
	
	R1*2/4*14
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e'8^\markup {pizz.} r r4
	e8 r r4
	
	R1*2/4*2
	
	e8 r r4
	e8 r r4
	e'8\pp r r4
	d8 r r4
	csharp8 r r4
	b8 r r4
	a8 r r4
	g8 r r4
	fsharp8 r r4
	e8 r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d2~^arco
	d8 r r4
	d8 r r4
	csharp8 r r4
	b8 r r4
	
	R1*2/4*13
	
	r8 d\p r d
	r d r d
	r d r d
	r d d r
	d8\f r r4
	d8_\markup { \italic dim. } r r4
	d8 r d r
	r d r d
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 d\p^\markup {pizz.} r d
	r d r d
	r d\< r d
	r d r d\!
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r4 r8 d\p^\markup {arco}
	e r r4
	R1*2/4
	r4 r8 a\mf
	bflat r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p r f
	r e r a
	gsharp2\mf
	g!2
	fsharp
	f
	e_\cr
	eflat4 d
	dflat2
	c4 b
	bflat\f( bflat')
	a8 r r4
	bflat,( bflat')
	a8 r r4
	g,2\f~
	g4 r
	r8 a[ g a]
	g[ a] g r
	gsharp2~
	gsharp4 r
	r8 a[ gsharp a]
	gsharp[ a] gsharp r
	gsharp2\f
	a
	b
	c4~ c8 r
	
	R1*2/4*18
	
	bflat8\ff r bflat[ bflat]
	f'[ f] e r
	
	R1*2/4*2
	
	bflat8 r bflat[ bflat]
	f'[ fsharp] g r
	
	R1*2/4*2
	
	eflat8 r eflat[ eflat]
	eflat[ eflat] eflat r
	
	R1*2/4*2
	
	g8 r g[ g]
	g[ g] g r
	r4 r8 g
	g[ g] g r
	r4 r8 g
	g[ g g g]
	g[ g g g]
	g[ g g g]
	fsharp![ fsharp\p] r fsharp_\cr
	r8 fsharp r fsharp
	r fsharp\< r fsharp
	r fsharp[ fsharp fsharp]\!
	f\f[ f\p] r f\<
	r f r f
	r f r f
	r f[ f f]\!
	e\f[ e\p]\< r e
	r e[ e e]\!
	eflat\f[ eflat\p] r eflat\<
	r eflat[ eflat eflat]\!
	d8\f r r4
	
	R1*2/4*3
	
	g,8\ff r r4
	
	R1*2/4*26
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8 g'\mf^\markup {pizz.}
	r g, r g
	r g r g
	r g r g
	r g r g
	r g r g
	r g r g
	r g r g
	r g r g\mf
	r g r g
	r g r g
	r g r g
	r g r g
	r g r g
	r g r g
	r g r g
	r8 g r4
	
	R1*2/4*30
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r8 eflat''^arco r4
	r8 d r4
	
	R1*2/4*6
	
	r8 eflat r4
	r8 d\< r4
	r8 c r4
	r8 b, r4
	r8 bflat\! r4
	a2\pp~
	a
	a2~
	a
	a~
	a
	a~
	a~
	a8 r r4
	R1*2/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a8\pp^\markup {pizz.} r r4
	R1*2/4
	a8 r r4
	
	R1*2/4*11
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r8 d\p^arco r d
	r d r d
	r d r d
	r d d r
	d8\f r r4
	d8_\markup { \italic dim. } r r4
	d8 r d r
	r d r d
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 d\p^\markup {pizz.} r d
	r d r d
	r d\< r d
	r d r d\!
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r4 r8 d\p^\markup {arco}
	e r r4
	R1*2/4
	r4 r8 a
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	bflat\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 g\p\< r f
	r e r a\!
	gsharp2
	g!2\mf
	fsharp
	f
	e_\cr
	eflat4 d
	dflat2
	c4 b
	bflat( bflat')
	a8 r r4
	bflat,( bflat')
	a8 r r4
	gsharp2\mf
	g!
	fsharp4\< f
	e a,\!
	
	R1*2/4*4
	d8\p r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8^\markup {pizz.} r r4
	d8 r r4
	d8 r d r
	d\f r r4
	d8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d8^arco r d r
	d' r csharp r
	b\f r r e,
	a r g r
	fsharp-.\p[\< e-. d-. csharp-.]
	b[ a] d4->\!
	fsharp8\f r r e
	a r e'\p[ d]
	csharp-.[\< b-. a-. g-.]
	fsharp-.[ e-.]\! d-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	b8\mf^\markup {pizz.} r r4
	b8 r b r
	b r b' r
	b r r4
	b,8 r r4
	b8 r b r
	b r b' r
	b r r4
	b8\f r r4
	R1*2/4
	b8 r r4
	R1*2/4
	b8 r r4
	a8 r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	g8^arco r fsharp r
	e r b r
	a2\f~\>
	a2~\!_\markup { \dynamic pp \italic {poco a poco cresc.}}
	a2~^\cr
	a2
	a2~^\cr
	a2~
	a2~
	a2
	a2~^\markup { \italic {sempre cresc.}}
	a2~
	a2~
	a2~
	a2~
	a2~
	a2~
	a2
	a2\f
	a
	a
	a
	r8 a r a
	r a r a
	r a r a
	r a[ a a]
	d\ff r d[ d]
	g[ g] d r
	
	R1*2/4*2
	
	b8 r b[ b]
	e[ e] b r
	
	R1*2/4*2
	
	g'8 r g[ g]
	c[ c] g r
	
	R1*2/4*2
	
	e8 r e[ e]
	a[ a] e r
	
	R1*2/4*2
	
	e8 r e[ e]
	a[ a] e r
	
	R1*2/4*2
	
	e8 r e[ e]
	R1*2/4
	e8 r e[ e]
	R1*2/4
	e8[ e] r4
	e8[ e] r4
	d8[ d] r4
	csharp8[ csharp] r4
	c8[ c] r4
	b8[ b] r4
	bflat8[ bflat] r_\markup { \dynamic p \italic cresc. } bflat
	r bflat r bflat
	r bflat r bflat
	r bflat r bflat
	a\f[ asharp b csharp]
	d[ dsharp] e[ fsharp]
	g[ gsharp a b]
	a[ g! fsharp e]
	d r d\f[ d]
	d2~
	d4 csharp8->[ csharp->]
	csharp4-> b8->[ a->]
	d8-> r d8[ d]
	d2~
	d4 csharp8->[ csharp->]
	csharp4-> b8->[ a->]
	d8 r fsharp r
	g r b r
	e, r d4->~
	d8 r csharp r
	d r fsharp r
	g r b r
	e, r d4->~
	d8 r csharp r
	d\f r a r
	d r a r
	d r a r
	d r a r
	d[ fsharp a asharp]
	b[ d a! g]
	fsharp[ d a'! asharp]
	b[ d a! g]
	fsharp[ b a g]
	fsharp[ b a g]
	fsharp r r4
	f8 r r4
	e8 r r4
	a8 r r4
	d,8\ff[ a'] d,[ a']
	d,[ a'] d,[ a']
	d,[ a'] d,[ a']
	d,[ a'] d,[ a']
	d,8 r d[ d]
	a'[ a] d,[ fsharp]
	a r r4
	d,8 r r4\fermata
	
}
