\version "2.18.2"

theCellos =  \relative c {
	\clef "bass"
	\key d \major
	
	a8\ff[ a'16( gsharp] a8)[ a,]
	bflat2
	bflat'
	bflat,4 a8 r
	a8[ a'16( gsharp] a8)[ a,]
	bflat4 b
	csharp d
	csharp8 r r4
	
	R1*2/4*2
	
	r4 r8 g8-.\f
	fsharp'8-.[ fsharp16( esharp] fsharp8)[ fsharp,-.]
	g4 gsharp
	a asharp
	b bflat
	a < a e' a >8\ff r
	
	R1*2/4*36
	
	r8 d\p r d
	r d r d
	r d r d
	r d d r
	< d b' >8\f r r4
	d8_\markup { \italic dim. } r r4
	d8 r < d a' > r
	r < d a' > r < d a' >
	fsharp\p r f r
	e r e r
	csharp\< r b r
	a r a\! r
	d\f r r d\p
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
	R1*2/4
	e2\mf
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
	
	R1*2/4*2
	
	fsharp4\< f
	e a,\!
	
	R1*2/4*3
	
	d16\f[( csharp d8]) a16[( gsharp a8])
	d8\p r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8^\markup {pizz.} r r4
	d8 r r4
	d8 r d r
	< d b' >\f r r4
	< d b' >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< d b' >8^arco r < d a' > r
	d r fsharp r
	b\f r r e,
	a r g r
	fsharp-.\p[\< e-. d-. csharp-.]
	b[ a] d4->\!
	fsharp8\f r r e
	a r e'\p[ d]
	csharp-.[\< b-. a-. g-.]
	fsharp-.[ e-.]\! d-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	b8\mf[^\markup {pizz.} asharp b d]
	b8 r b r
	b r fsharp' r
	e r r4
	b8[ asharp b d]
	b8 r b r
	b r fsharp' r
	e r r4
	b'8\f r r4
	g8 r r4
	b8 r r4
	g8 r r4
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
	< a e' a >8\ff^arco r < a e' >4\>
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' > < a e' >\p\!
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' > < a e' >
	< a e' >8 r a\pp r
	r4 a8 r
	r4 a8 r
	r4 a8 r
	r4 a8 r
	r4 a8 r
	r4 a8 r
	r4 a8 r
	
	R1*2/4*8
	
	r4 < a e' >4\p~
	< a e' > < a e' >~
	< a e' > < a e' >~
	< a e' > < a e' >~
	< a e' > < a e' >~
	< a e' > < a e' >~
	< a e' > < a e' >~
	< a e' > < a e' >~
	< a e' >8[ < a e' >] r < e a >\mf
	r < e a > r < e a >
	r < e a > r < e a >
	r < e a > r < e a >
	r < e a > r < e a >
	r < e a > r < e a >
	r < e a > r < e a >
	r < e a > r < e a >
	r a fsharp'\mf[ fsharp]
	fsharp4 e8[ d]
	csharp[( b]) fsharp'[ fsharp]
	fsharp4 e8[ d]
	csharp[( b]) a[ a']
	fsharp4 e8[ d]
	csharp[( b]) fsharp'[ fsharp]
	e[ d csharp b]
	a8 r r4
	fsharp'8\p r r4
	fsharp8 r r4
	fsharp8 r r4
	fsharp8 r r4
	fsharp8 r r4
	fsharp8 r r4
	fsharp8 r r4
	fsharp8 r r4
	c8 r r4
	b8 r r4
	e,2~
	e4 r
	e'2~
	e4 csharp8-.[(_\markup { \dynamic p \italic espress. } dsharp-.])
	e4 \grace { dsharp16[( e] } dsharp8[ csharp])
	\grace { c16[( d!] } c8[ b]) r4
	e2~
	e4 csharp8[( dsharp])
	e4 \grace { dsharp16[( e] } dsharp8[ csharp])
	\grace { c16[( d!] } c8[ b]) r4
	
	R1*2/4*7
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e8^\markup {pizz.} r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d2~^arco
	d8 r r4
	d8 r r4
	csharp8 r r4
	b8 r r4
	R1*2/4
	r8 bflat4.~
	bflat8 r r4
	r8 a4.~
	a8 r r4
	
	R1*2/4*8
	
	r8 d\p r d
	r d r d
	r d r d
	r d d r
	< d b' >8\f r r4
	d8_\markup { \italic dim. } r r4
	d8 r < d a' > r
	r < d a' > r < d a' >
	fsharp\p r f r
	e r e r
	csharp\< r b r
	a r a\! r
	d\f r r d\p
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
	r8 g\p\< r f
	r e r a\!
	R1*2/4
	e2\mf
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
	
	R1*2/4*17
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e8[^\markup {pizz.} d] r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	bflat8\ff^arco r bflat[ bflat]
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
	
	< g, d' b' >8\ff r < g d' >4\>
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' > < g d' >\p\!
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' > < g d' >
	< g d' >8 r < g d' >\pp r
	r4 < g d' >8 r
	r4 < g d' >8 r
	r4 < g d' >8 r
	r4 < g d' >8 r
	r4 < g d' >8 r
	r4 < g d' >8 r
	r4 < g d' >8 r
	r8 < g d' >\p[ < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' > < g d' > < g d' >]
	< g d' >[ < g d' >] r
		\set Staff.midiInstrument = #"pizzicato strings"
		< g d' a' >8\mf^\markup {pizz.}
	r < g d' a' > r < g d' a' >
	r < g d' a' > r < g d' a' >
	r < g d' b' > r < g d' b' >
	r < g d' b' > r < g d' b' >
	r < g d' a' > r < g d' a' >
	r < g d' a' > r < g d' a' >
	r < g d' b' > r < g d' b' >
	r < g d' b' > r < d g >8\mf
	r < d g > r < d g >
	r < d g > r < d g >
	r < d g > r < d g >
	r < d g > r < d g >
	r < d g > r < d g >
	r < d g > r < d g >
	r < d g > r < d g >
	r < d g > r4
	
	R1*2/4*8	
	
	e8\p^\markup {pizz.} r r4
	g8 r r4
	asharp8 r r4
	asharp8 r r4
	e8 r r4
	g8 r r4
	bflat8 r r4
	a8 r r4
	d8 r r4
	d8 r r4
	d8 r r4
	d8 r r4
	d8 r r4
	d8 r r4
	d8 r r4
	d8 r r4
	r8 c\pp r4
	r8 b r4
	r8 a r4
	r8 g r4
	r8 fsharp r4
	r8 e r4
	r8 eflat r4
	r8 d r4
	r8 c' r4
	r8 b r4
	r8 a r4
	r8 g r4
	r8 fsharp r4
	r8 e r4
	r8 eflat r4
	r8 d\< r4
	r8 c r4
	r8 b' r4
	r8 bflat\! r4
	a2\pp~
	a
	a~
	a
	
	R1*2/4*20
	
	r8 d\p r d
	r d r d
	r d r d
	r d d r
	< d b' >8\f r r4
	d8_\markup { \italic dim. } r r4
	d8 r < d a' > r
	r < d a' > r < d a' >
	fsharp\p r f r
	e r e r
	csharp\< r b r
	a r a\! r
	d\f r r d\p
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
	R1*2/4
	e2\mf
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
	
	R1*2/4*2
	
	fsharp4\< f
	e a,\!
	
	R1*2/4*3
	
	d16\f[( csharp d8]) a16[( gsharp a8])
	d8\p r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8^\markup {pizz.} r r4
	d8 r r4
	d8 r d r
	< d b' >\f r r4
	< d b' >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< d b' >8^arco r < d a' > r
	d r fsharp r
	b\f r r e,
	a r g r
	fsharp-.\p[\< e-. d-. csharp-.]
	b[ a] d4->\!
	fsharp8\f r r e
	a r e'\p[ d]
	csharp-.[\< b-. a-. g-.]
	fsharp-.[ e-.]\! d-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	b8\mf[^\markup {pizz.} asharp b d]
	b8 r b r
	b r fsharp' r
	e r r4
	b8[ asharp b d]
	b8 r b r
	b r fsharp' r
	e r r4
	b'8\f r r4
	g8 r r4
	b8 r r4
	g8 r r4
	b8 r r4
	a8 r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	g8^arco r fsharp r
	e r b r
	fsharp'2\f\>
	e2\!_\markup { \dynamic pp \italic {poco a poco cresc.}}
	dsharp4( csharp8[ b]
	a[ dsharp]) r4
	gsharp2^\cr
	fsharp
	esharp4( d!8[ csharp]
	b[ esharp]) r4
	fsharp2~^\markup { \italic {sempre cresc.}}
	fsharp4 esharp8[ fsharp]
	f2~
	f4 d8[ f]
	csharp'2~
	csharp4 csharp,8[ csharp']
	< d, b' >2~
	< d b' >4 < b d >8[ < d b' >]
	bflat'4->\f( a)
	bflat->( a)
	bflat->( < g a >)
	bflat->( < g a >)
	r8 < a, e' csharp' > r < a e' csharp' >
	r < a e' csharp' > r < a e' csharp' >
	r < a e' csharp' > r < a e' csharp' >
	r < a e' csharp' >[ < a e' csharp' > < a e' csharp' >]
	< d a' >\ff r < d a' >[ < d a' >]
	g[ g] < d a' > r
	
	R1*2/4*2
	
	< b fsharp' d' >8 r b[ b]
	e[ e] b r
	
	R1*2/4*2
	
	g'8 r g[ g]
	c,[ c] g' r
	
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
	< b g' >8[ < b g' >] r4
	< bflat gsharp' >8[ < bflat gsharp' >] r_\markup { \dynamic p \italic cresc. } bflat
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
	< f a >8 r r4
	e8 r r4
	a8 r r4
	d,8\ff[ a d a]
	d[ a d a]
	d[ a d a]
	d[ a d a]
	d8 r < d a' >[ < d a' >]
	a'[ a] d,[ fsharp]
	a r r4
	< d,, a' fsharp' d' >8 r r4\fermata
}
