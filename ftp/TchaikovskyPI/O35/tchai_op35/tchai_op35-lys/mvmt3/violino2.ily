\version "2.18.2"

theSecondViolins =  \relative d'' {
	\clef "treble"
	\key d \major
	\time 2/4
	
	< a a' >8\ff[ a16( gsharp] a8)[ a,]
	bflat2
	bflat'
	bflat,4 a8 r
	< a' a' >8[ a16( gsharp] a8)[ a,]
	bflat4 b
	csharp d
	csharp8 r r4
	
	R1*2/4*2
	
	g'8-.\f[ g16( fsharp] g8)[ g,-.]
	asharp4~ asharp8 r
	
	R1*2/4*3
	
	r4 < e' a e' >8\ff r
	
	R1*2/4*36
	
	r8 a,\p r gsharp
	r a r a
	r a r a
	r csharp a r
	< b fsharp' >\f r r4
	< b g' >8_\markup { \italic dim. } r r4
	< b gsharp' >8 r g' r
	r csharp, r csharp
	d\p r d r
	csharp r a r
	a\< r g r
	a r a\! r
	f'8\f r r bflat,\p
	a r r4
	
	R1*2/4*2
	
	d8\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r d r csharp\!
	d\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r gsharp r a\!
	d\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p r a
	r d r csharp
	b!2\mf
	csharp
	csharp2
	d
	c_\cr
	c4 f
	< b,! aflat' >2
	< c aflat' >4 gsharp'
	gsharp2\f
	< csharp, a' >8 r r4
	gsharp'2
	< csharp, a' >8 r r4
	b2\mf
	b
	b4\< b
	d csharp\!
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 b'^\markup {pizz.} r a
	r a r < e a >
	r gsharp r g
	r d r csharp
	< a d >8\p r r4
	g'8 r r4
	g8 r r4
	g8 r d r
	< b' fsharp' >\f r r4
	< e, b' e >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	e8^arco r < e a > r
	< b fsharp' > r < csharp fsharp > r
	< b fsharp' >\f r r gsharp'
	e r e r
	fsharp-.\p[\< g!-.] g-.[ g-.]
	g-.[ g-.] fsharp4^>\!
	a8\f r r gsharp
	a r g!-.\p[ fsharp-.]
	e-.[\< e-. e-. e-.]
	d-.[ csharp-.]\! d-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	b\mf^\markup {pizz.} r r4
	b8 r b[ d]
	b r d r
	csharp r r4
	b8 r r4
	b8 r b[ d]
	b r d r
	csharp r r4
	< b fsharp' d' >8\f r r4
	g'8 r r4
	< b, fsharp' d' >8 r r4
	g'8 r r4
	< b, fsharp' d' >8 r r4
	< b fsharp' d' >8 r r4
	e8 r < b fsharp' d' > r
	< b g' d' > r < d d' > r
	b r r4
	b8 r r4
	csharp8 r r4
	d8 r d r
	d r r4
	d8 r r4
	d8\> r d\! r
	d\p r r4
	
	R1*2/4*4
	
	%%% POCO MENO MOSSO %%%
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< a e' csharp' e >8\ff^arco r r4
	
	R1*2/4*10
	
	r4 gsharp8\pp r
	r4 gsharp8 r
	r4 gsharp8 r
	r4 a8 r
	r4 a8 r
	r4 gsharp8 r
	r4 gsharp8 r
	r4 a8 r
	
	R1*2/4*8
	
	r4 d'8-.\p[~ d-.]
	d4-> asharp8[( b])
	e,4 fsharp8-.[( gsharp-.])
	a4-> csharp8[( b])
	a4 csharp8-.[~ csharp-.]
	d4-> asharp8[( b])
	e,4 fsharp8-.[( gsharp-.])
	a4-> csharp8[( b])
	a4 r
	gsharp,2\mf~
	gsharp4 gsharp8-.[ d'-.]
	csharp4.( b8
	a) r r4
	gsharp2~
	gsharp4 gsharp8-.[ d'-.]
	csharp4.( b8
	a) r r4
	
	R1*2/4*2
	
	r4 gsharp'4\mf
	fsharp8[( gsharp] a4)
	b gsharp
	e8[( d]) d4
	b'8[ gsharp e e]
	e8 r r4
	r8 fsharp\p r4
	r8 fsharp r4
	r8 b, r4
	r8 csharp r4
	r8 fsharp r4
	r8 fsharp r4
	r8 b, r4
	r8 csharp r4
	r8 a r4
	r8 a r4
	r8 fsharp' r b,
	r b r4
	r8 e4.
	r8 e r fsharpsharp
	r gsharp r e
	r e r4
	r8 e4.
	r8 e r fsharpsharp
	r gsharp r e
	r e r4
	r8 d!4.\pp
	r8 b4.
	r8 b4.
	r8 b4.
	r8 csharp4.
	r8 a4.
	r8 asharp4.
	r8 asharp4.
	r8 bflat4.~
	bflat2
	r8 bflat4.
	r8 asharp4.
	r8 b4.~
	b2
	r8 g4.~
	g8 r r4
	r8 g4.~
	g8 r r4
	
	R1*2/4*8
	
	r8 a\p r gsharp
	r a r a
	r a r a
	r csharp a r
	< b fsharp' >\f r r4
	< b g' >8_\markup { \italic dim. } r r4
	< b gsharp' >8 r g' r
	r csharp, r csharp
	d\p r d r
	csharp r a r
	a\< r g r
	a r a\! r
	f'8\f r r bflat,\p
	a r r4
	
	R1*2/4*2
	
	d8\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r d r csharp\!
	d\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r gsharp r a\!
	d\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r d r csharp\!
	b!2\mf
	csharp
	csharp2
	d
	c_\cr
	c4 f
	< b,! aflat' >2
	< c aflat' >4 gsharp'
	gsharp2\f
	< csharp, a' >8 r r4
	gsharp'2
	< csharp, a' >8 r r4
	b2\f~
	b4 r
	r8 b[ b b]
	b[ b] b r
	b2~
	b4 r
	r8 b[ b b]
	b[ b] b r
	b2\f
	c2
	d
	e4~ e8 r
	R1*2/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8 g'8\p^\markup {pizz.}
	g[ f e d]
	c[ c b! bflat]
	c r r4
	r4 r8 g'
	g[ f e d]
	csharp![ csharp d e]
	f r r4
	r4 r8 e
	e[ d] csharp![ gsharp]
	a[ a a < g! a >]
	< f a > r r4
	r4 r8 e'
	e[ d csharp gsharp]
	a[ f g! d]
	csharp[ gsharp a] r
	R1*2/4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< d bflat' f' >8\ff[^arco bflat'16( a] bflat8)[ < d, bflat' >]
	< a' f' >[ < a f' >] < bflat gflat' > r
	
	R1*2/4*2
	
	< d, bflat' f' >8[ bflat'16( a] bflat8)[ < d, bflat' >]
	eflat'[ eflat] < bflat g'! > r
	
	R1*2/4*2
	
	< eflat, bflat' g' >8[ bflat'16( a] bflat8)[ < eflat, bflat' >]
	< eflat c' >[ < eflat c' >] < eflat bflat' g' >8 r
	
	R1*2/4*2
	
	< e c' e >8[ e'16( dsharp] e8)[ < c e >]
	< d b' >8[ < d b' >] < c e > r
	r4 r8 < c e >
	< d b' >[ < d b' >] < c e > r
	r4 r8 < c e >
	< d b' >[ < d b' >] < c e >[ < c e >]
	< d b' >[ < d b' >] < c e >[ < c e >]
	< d b' >[ < d b' >] < c e >[ < c e >]
	eflat[ eflat,\p] r eflat_\cr
	r eflat r eflat
	r eflat\< r eflat
	r eflat[ eflat eflat]\!
	eflat\f[ eflat\p] r eflat\<
	r eflat r eflat
	r eflat r eflat
	r eflat[ eflat eflat]\!
	eflat\f[ eflat\p]\< r eflat
	r eflat[ eflat eflat]\!
	f\f[ f\p] r f\<
	r f[ f f]\!
	fsharp!8\f r r4
	
	R1*2/4*3
	
	< g, d' b' g' >8\ff r r4
	
	R1*2/4*10
	
	r4 c8\pp r
	r4 c8 r
	r4 c8 r
	r4 b8 r
	r4 b8 r
	r4 c8 r
	r4 c8 r
	r4 b8 r
	
	R1*2/4*8
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8 < fsharp c' >8\mf^\markup {pizz.}
	r < fsharp' c' > r < fsharp c' >
	r < fsharp c' > r < fsharp c' >
	r < b, g' d' > r < b g' d' >
	r < b g' d' > r < b g' d' >
	r < fsharp' c' > r < fsharp c' >
	r < fsharp c' > r < fsharp c' >
	r < b, g' d' > r < b g' d' >
	r < b g' d' > r4
	R1*2/4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r4 r8 c8-.\mf^arco
	b4.( a8
	g) r r4
	R1*2/4
	r4 r8 c8
	b4.( a8
	g4) r
	
	R1*2/4*8
	
	r8 b8\p r4
	r8 c r4
	r8 asharp r4
	r8 asharp r4
	r8 b r4
	r8 c r4
	r8 bflat r4
	r8 a r4
	r8 a r4
	r8 b r4
	r8 esharp r4
	r8 fsharp r4
	r8 a, r4
	r8 b r4
	r8 esharp r4
	r8 fsharp r4
	r8 a,\pp r4
	r8 a r4
	r8 c r4
	r8 c r4
	r8 c r4
	r8 c r4
	r8 c r4
	r8 d r4
	r8 a r4
	r8 a r4
	r8 c r4
	r8 c r4
	r8 c r4
	r8 c r4
	r8 c r4
	r8 d\< r4
	r8 d r4
	r8 dsharp r4
	r8 e\! r4
	
	R1*2/4*24
	
	r8 a,\p r gsharp
	r a r a
	r a r a
	r csharp a r
	< b fsharp' >\f r r4
	< b g' >8_\markup { \italic dim. } r r4
	< b gsharp' >8 r g' r
	r csharp, r csharp
	d\p r d r
	csharp r a r
	a\< r g r
	a r a\! r
	f'8\f r r bflat,\p
	a r r4
	
	R1*2/4*2
	
	d8\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r d r csharp\!
	d\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p\< r a
	r gsharp r a\!
	d\mf r r4
	e8_\markup { \italic dim. } r r4
	r8 bflat\p r a
	r d r csharp
	b!2\mf
	csharp
	csharp2
	d
	c_\cr
	c4 f
	< b,! aflat' >2
	< c aflat' >4 gsharp'
	gsharp2\f
	< csharp, a' >8 r r4
	gsharp'2
	< csharp, a' >8 r r4
	b2\mf
	b
	b4\< b
	d csharp\!
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 b'^\markup {pizz.} r a
	r a r < e a >
	r gsharp r g
	r d r csharp
	< a d >8\p r r4
	g'8 r r4
	g8 r r4
	g8 r d r
	< b' fsharp' >\f r r4
	< e, b' e >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	e8^arco r < e a > r
	< b fsharp' > r < csharp fsharp > r
	< b fsharp' >\f r r gsharp'
	e r e r
	fsharp-.\p[\< g!-.] g-.[ g-.]
	g-.[ g-.] fsharp4^>\!
	a8\f r r gsharp
	a r g!-.\p[ fsharp-.]
	e-.[\< e-. e-. e-.]
	d-.[ csharp-.]\! d-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	b\mf^\markup {pizz.} r r4
	b8 r b[ d]
	b r d r
	csharp r r4
	b8 r r4
	b8 r b[ d]
	b r d r
	csharp r r4
	< b fsharp' d' >8\f r r4
	g'8 r r4
	< b, fsharp' d' >8 r r4
	g'8 r r4
	< b, fsharp' d' >8 r r4
	< b fsharp' d' >8 r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< e b' e >8^arco r < b fsharp' d' > r
	< b g' d' > r < gsharp' esharp' > r
	< d a' fsharp' >[ d16(^\markup { \dynamic p \italic {poco a poco cresc.}}
		csharp] d8)[ d'-.]
	c,8-.[ c16( b] c8)[ c']
	b,16[ csharp! dsharp fsharp] gsharp[ asharp b csharp]
	dsharp[ e fsharp b,] r4
	e,8-.[^\cr e16( dsharp] e8)[ e'-.]
	d,!8[ d16( csharp] d8)[ d'-.]
	csharp,16[ dsharp esharp gsharp] a[ b csharp dsharp]
	esharp[ fsharp gsharp csharp,] r4
	fsharp,8-.[^\markup { \italic {sempre cresc.}} fsharp16( esharp] fsharp)[ csharp dsharp e]
	fsharp[ gsharp a b] csharp[ b a8]
	r8 gsharp16[( fsharpsharp] gsharp)[ b, d e!]
	f[ g! gsharp b] f'[ d b g]
	r8 bflat16[( a] bflat)[ e, g! a]
	bflat[ b csharp e] g[ e csharp bflat]
	r8 b!16[( asharp] b)[ d, f gsharp]
	b[ csharp d f] gsharp[ fsharp d b]
	csharp\f[ d e d] csharp[ a e g!]
	csharp[ d e d] csharp[ a e e']
	e[ fsharp g fsharp] e[ a, e a]
	e'[ fsharp g fsharp] e[ a, e a]
	csharp[ d e d] csharp[ b a b]
	csharp[ b csharp d] e[ dsharp e fsharp]
	e[ fsharp g fsharp] e[ d! csharp d]
	e[ dsharp e fsharp] g[ a b csharp]
	d8-.\ff[ d,16( csharp] d8)[ < a fsharp' >]
	< b g' >[ < b g' >] < a fsharp' > r
	
	R1*2/4*2
	
	< b, fsharp' d' >8-.[ d'16( csharp] d8)[ b]
	< csharp e >8[ < csharp e >] < d, d' > r
	
	R1*2/4*2
	
	< d d' >8[ d'16( csharp] d8)[ < d, b' >]
	< c' e >[ < c e >] < d, d' > r
	
	R1*2/4*2
	
	< e b' e >8-.[ e'16( dsharp] e8)[ < b e >]
	< c e >[ < c e >] < e, b' e > r
	
	R1*2/4*2
	
	< e b' e >8-.[ e'16( dsharp] e8)[ < b e >]
	< c e >[ < c e >] < e, b' e > r
	
	R1*2/4*2
	
	< e b' e >8-.[ e'16( dsharp] e8)[ < b e >]
	R1*2/4
	< e, b' e >8-.[ e'16( dsharp] e8)[ < b e >]
	R1*2/4
	< b e >8[ < b e >] r4
	< b e >8[ < b e >] r4
	< bflat e >8[ < bflat e >] r4
	< a e' >8[ < a e' >] r4
	< a fsharp' >8[ < a fsharp' >] r4
	g'8[ d] r4
	gsharp8[ d] r8_\markup { \dynamic p \italic cresc.} < d, d' >
	r < d d' > r < d d' >
	r < d d' > r < d d' >
	r < d d' > r < d d' >
	< d d' >\f[ csharp' b fsharp]
	fsharp[ b] < b e >[ b]
	b[ b] < e, a >[ d']
	csharp[ e, fsharp g]
	a r bflat,\f[ bflat]
	bflat2(
	g4) a
	< a g' >4 < g g' >
	< fsharp' a >8 r bflat,[ bflat]
	bflat2(
	g4) a
	< a g' >4 < g g' >
	< fsharp' a >8 r asharp r
	< d, b' > r fsharp r
	g8 r g4->~
	g8 r < a, g' > r
	< fsharp' a > r asharp r
	< d, b' > r fsharp r
	g r g4->~
	g8 r < a, g' > r
	< fsharp' a >\f r < e a > r
	< fsharp a > r < e a > r
	< fsharp a > r < e a > r
	< fsharp a > r < e a > r
	< fsharp a > r d'4:16
	d: csharp8:[ b:]
	a r d4:
	d4: csharp8:[ csharp:]
	a8:[ d: csharp: b:]
	a8:[ d: csharp: b:]
	< d, a' > r r4
	< d d' >8 r r4
	< d b' gsharp' >8 r r4
	< a' g'! >8 r r4
	< a fsharp' >8:\ff[ < a e' >: < a fsharp' >: < a e' >:]
	< a fsharp' >8:[ < a e' >: < a fsharp' >: < a e' >:]
	< a fsharp' >8:[ < a e' >: < a fsharp' >: < a e' >:]
	< a fsharp' >8:[ < a e' >: < a fsharp' >: < a e' >:]
	< a fsharp' >8-.[ d16( csharp] d8)[ < a fsharp' >]
	< a e' >[ e'] d[ fsharp]
	a r r4
	< fsharp, d' a' >8 r r4\fermata
}
