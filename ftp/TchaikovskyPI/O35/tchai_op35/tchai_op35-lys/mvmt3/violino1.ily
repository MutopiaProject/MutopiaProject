\version "2.18.2"

theFirstViolins =  \relative d'' {
	\clef "treble"
	\key d \major
	
	< a a' >8\ff[ a'16( gsharp] a8)[ a,,]
	bflat2
	bflat'2
	bflat,4 a8 r
	< a' a' >8\ff[ a'16( gsharp] a8)[ a,,]
	bflat4 b
	csharp d
	csharp8 r r4
	
	R1*2/4*2
	
	g'8-.\f[ g16( fsharp] g8)[ g,-.]
	asharp4~ asharp8 r
	
	R1*2/4*3
	
	r4 < a e' csharp' a' >8\ff r
	
	R1*2/4*36
	
	r8 a\p r b
	r csharp r csharp
	r csharp r csharp
	r < g e' > d' r
	< b' fsharp' >\f r r4
	< b e >8_\markup { \italic dim. } r r4
	< b e >8 r < a e' > r
	r < e a > r < e a >
	a\p r gsharp r
	g! r csharp, r
	a\< r b r
	csharp r d\! r
	bflat'\f r r d,\p
	csharp r r4
	
	R1*2/4*2
	
	gsharp'8\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r e r e\!
	gsharp\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r d r csharp\!
	gsharp'\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p r d
	r e r e
	d2\mf
	e
	fsharp
	< g, g' >
	g'_\cr
	< f a >4 bflat
	b!2
	c4 < f, d' >
	< d d' >2\f
	csharp'8 r r4
	< d, d' >2
	csharp'8 r r4
	d,2\mf
	d
	d4\< d
	e e\!
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 f'^\markup {pizz.} r < csharp e >
	r d r csharp
	r < d, b' > r < e a >
	r < f a > r < e a >
	< fsharp! a >8\p r r4
	< e a >8 r r4
	< e a >8 r r4
	< e a >8 r < fsharp a > r
	b'8\f r r4
	< e,, b' g' >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< b' e >8^\markup {arco} r csharp r
	b r asharp r
	< d, b' >\f r r b'
	a r a r
	asharp-.\p[ asharp-.] b-.[ a-.]
	e'-.[ a,-.] b[( a])
	d\f r r d
	csharp r a-.\p[ a-.]
	a-.[\< b-. csharp-. csharp-.]
	d-.[ a-.]\! a-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d,\mf^\markup {pizz.} r r4
	csharp8 r d r
	e[ g b d]
	e[ e,] r4
	d8 r r4
	csharp8 r d r
	e[ g b d]
	e[ e,] r4
	< d b' fsharp' >8\f r r4
	< d b' >8 r r4
	< d b' fsharp' >8 r r4
	< d b' >8 r r4
	< d b' fsharp' >8 r r4
	< d b' fsharp' >8 r r4
	< e b' e >8 r < d b' fsharp' > r
	< d b' g' > r < d b' gsharp' > r
	dsharp r r4
	e8 r r4
	esharp8 r r4
	f8 r f r
	f r r4
	f8 r r4
	f8\> r f\! r
	gsharp\p r r4
	
	R1*2/4*4
	
	%%% POCO MENO MOSSO %%%
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< a, e' csharp' a' >8\ff^\markup {arco} r r4
	
	R1*2/4*10
	
	r4 d8\pp r8
	r4 d8 r
	r4 d8 r
	r4 csharp8 r
	r4 csharp8 r
	r4 d8 r
	r4 d8 r
	r4 csharp8 r
	
	R1*2/4*8
	
	r4 fsharp'8\p-.[~ fsharp-.]
	fsharp4-> e8[( d])
	csharp[( b]) fsharp'-.[~ fsharp-.]
	fsharp4-> e8[( d])
	csharp4 fsharp8-.[~ fsharp-.]
	fsharp4-> e8[( d])
	csharp[( b]) fsharp'-.[~ fsharp-.]
	fsharp4-> e8[( d])
	csharp4 r
	gsharp2\mf~
	gsharp4 gsharp8-.[ d'-.]
	csharp4.( b8
	a) r r4
	gsharp2~
	gsharp4 gsharp8-.[ d'-.]
	csharp4.( b8
	a) r r4
	r4 gsharp4\mf~
	gsharp8[ d] d'4~
	d gsharp
	fsharp8[( gsharp] a4)
	d,4 b
	gsharp8[( d]) b'4
	e8[ b a b]
	csharp r r4
	r8 a\p r4
	r8 gsharp r4
	r8 fsharp8 r4
	r8 fsharp r4
	r8 a r4
	r8 gsharp r4
	r8 fsharp r4
	r8 fsharp r4
	r8 fsharp r4
	r8 fsharp r4
	r8 a r dsharp,
	r e r4
	r8 gsharp4.
	r8 fsharpsharp r asharp
	r b r fsharpsharp
	r gsharp r4
	r8 gsharp4.
	r8 fsharpsharp r asharp
	r b r fsharpsharp
	r gsharp r4
	r8 gsharp4.\pp
	r8 fsharp!4.
	r8 esharp4.
	r8 d!4.
	r8 e!4.
	r8 csharp4.
	r8 csharp4.
	r8 csharp4.
	r8 d4.~
	d2
	r8 d4.
	r8 e4.
	r8 e4.~
	e2
	r8 d4.~
	d8 r r4
	r8 csharp4.~
	csharp8 r r4
	
	R1*2/4*8
	
	r8 a\p r b
	r csharp r csharp
	r csharp r csharp
	r < g e' > d' r
	< b' fsharp' >\f r r4
	< b e >8_\markup { \italic dim. } r r4
	< b e >8 r < a e' > r
	r < e a > r < e a >
	a\p r gsharp r
	g! r csharp, r
	a\< r b r
	csharp r d\! r
	bflat'\f r r d,\p
	csharp r r4
	
	R1*2/4*2
	
	gsharp'8\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r e r e\!
	gsharp\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r d r csharp\!
	gsharp'\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r e r e\!
	d2\mf
	e
	fsharp
	< g, g' >
	g'_\cr
	< f a >4 bflat
	b!2
	c4 < f, d' >
	< d d' >2\f
	csharp'8 r r4
	< d, d' >2
	csharp'8 r r4
	e,2\f~
	e4 r
	r16 b[ csharp dsharp] e[ b csharp dsharp]
	e[ b csharp dsharp] e8 r
	e2~
	e4 r
	r16 b[ csharp dsharp] e[ b csharp dsharp]
	e[ b csharp dsharp] e8 r
	r16 b\f[ csharp dsharp] e8 r
	r16 c[ d! dsharp] e8 r
	r16 b[ d! dsharp] e8 r
	r16 c[ d! dsharp] e8 r
	R1*2/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8 bflat''\p^\markup {pizz.}
	bflat[ g g e]
	e[ f d < csharp e >]
	< a f' > r r4
	r4 r8 bflat'
	bflat[ g g e]
	e[ e a a]
	a r r4
	r4 r8 g
	g[ e] e[ b!]
	csharp[ d b csharp]
	d r r4
	r4 r8 g
	g[ e e b]
	csharp[ a a e]
	e[ b csharp a]
	a[ a] r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< bflat f' d' bflat' >8\ff[^arco bflat''16( a] bflat8)[ f]
	< a, a' >[ < a c' >] < dflat bflat' > r
	
	R1*2/4*2
	
	< bflat, f' d' bflat' >8[ bflat''16( a] bflat8)[ f]
	< a, a' >[ < a c' >] < d! bflat' > r
	
	R1*2/4*2
	
	< g,, g' eflat' bflat' >8[ bflat''16( a] bflat8)[ g]
	< a, c' >[ < a eflat'' >] < eflat' bflat' >8 r
	
	R1*2/4*2
	
	e'8[ e16( dsharp] e8)[ c]
	d[ g] c, r
	r4 r8 c
	d[ g] c, r
	r4 r8 c
	d[ g] c,[ c]
	d[ g] c,[ c]
	d[ g] c,[ g']
	< a,, a'' >[ a\p] r a_\cr
	r a r a
	r a\< r a
	r a[ a a]\!
	a\f[ a\p] r a\<
	r a r a
	r a r a
	r a[ a a]\!
	a\f[ a\p]\< r a
	r a[ a a]\!
	a\f[ a\p] r a\<
	r a[ a a]\! a\f r r4
	
	R1*2/4*3
	
	< g, d' b' g' >8\ff r r4
	
	R1*2/4*26
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8 < a' fsharp' >8\mf^\markup {pizz.}
	r < a fsharp' > r < a fsharp' >
	r < a fsharp' > r < a fsharp' >
	r < g, d' b' g' > r < g d' b' g' >
	r < g d' b' g' > r < g d' b' g' >
	r < a' fsharp' > r < a fsharp' >
	r < a fsharp' > r < a fsharp' >
	r < g, d' b' g' > r < g d' b' g' >
	r < g d' b' g' > r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	fsharp'2\mf~^arco
	fsharp4 fsharp8-.[ c'-.]
	b4.( a8
	g) r r4
	fsharp2~
	fsharp4 fsharp8-.[ c'-.]
	b4.( a8
	g4) r
	
	R1*2/4*8
	
	r8 e\p r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 d r4
	r8 esharp r4
	r8 gsharp r4
	r8 a r4
	r8 d, r4
	r8 esharp r4
	r8 gsharp r4
	r8 a r4
	r8 e\pp r4
	r8 dsharp r4
	r8 < a e' > r4
	r8 < a e' > r4
	r8 < a e' > r4
	r8 < a e' > r4
	r8 < a f' > r4
	r8 < a fsharp'! > r4
	r8 e' r4
	r8 dsharp r4
	r8 < a e' > r4
	r8 < a e' > r4
	r8 < a e' > r4
	r8 < a e' > r4
	r8 < a f' > r4
	r8 < a fsharp'! >\< r4
	r8 < a fsharp' > r4
	r8 < a fsharp' > r4
	r8 g'\! r4
	
	R1*2/4*24
	
	%%% TEMPO 1 %%%
	
	r8 a,\p r b
	r csharp r csharp
	r csharp r csharp
	r < g e' > d' r
	< b' fsharp' >\f r r4
	< b e >8_\markup { \italic dim. } r r4
	< b e >8 r < a e' > r
	r < e a > r < e a >
	a\p r gsharp r
	g! r csharp, r
	a\< r b r
	csharp r d\! r
	bflat'\f r r d,\p
	csharp r r4
	
	R1*2/4*2
	
	gsharp'8\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r e r e\!
	gsharp\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p\< r d
	r d r csharp\!
	gsharp'\mf r r4
	a8_\markup { \italic dim. } r r4
	r8 bflat,\p r d
	r e r e
	d2\mf
	e
	fsharp
	< g, g' >
	g'_\cr
	< f a >4 bflat
	b!2
	c4 < f, d' >
	< d d' >2\f
	csharp'8 r r4
	< d, d' >2
	csharp'8 r r4
	d,2\mf
	d
	d4\< d
	e e\!
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 f'^\markup {pizz.} r < csharp e >
	r d r csharp
	r < d, b' > r < e a >
	r < f a > r < e a >
	< fsharp! a >8\p r r4
	< e a >8 r r4
	< e a >8 r r4
	< e a >8 r < fsharp a > r
	b'8\f r r4
	< e,, b' g' >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< b' e >8^\markup {arco} r csharp r
	b r asharp r
	< d, b' >\f r r b'
	a r a r
	asharp-.\p[ asharp-.] b-.[ a-.]
	e'-.[ a,-.] b[( a])
	d\f r r d
	csharp r a-.\p[ a-.]
	a-.[\< b-. csharp-. csharp-.]
	d-.[ a-.]\! a-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d,\mf^\markup {pizz.} r r4
	csharp8 r d r
	e[ g b d]
	e[ e,] r4
	d8 r r4
	csharp8 r d r
	e[ g b d]
	e[ e,] r4
	< d b' fsharp' >8\f r r4
	< d b' >8 r r4
	< d b' fsharp' >8 r r4
	< d b' >8 r r4
	< d b' fsharp' >8 r r4
	< d b' fsharp' >8 r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< e b' e >8^arco r < d b' fsharp' > r
	< d b' g' > r < d b' gsharp' > r
	< d a' a' >[ d16(^\markup { \dynamic p \italic {poco a poco cresc.} } csharp] d8)[ d'-.]
	c,8-.[ c16( b] c8)[ c']
	b,16[ csharp! dsharp fsharp] gsharp[ asharp b csharp]
	dsharp[ e fsharp b,] r4
	e,8-.[^\cr e16( dsharp] e8)[ e'-.]
	d,![ d16( csharp] d8)[ d'-.]
	csharp,16[ dsharp esharp gsharp] a[ b csharp dsharp]
	esharp[ fsharp gsharp csharp,] r4
	fsharp,8-.[^\markup { \italic {sempre cresc.} } fsharp16( esharp] fsharp)[ csharp dsharp esharp]
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
	d8-.\ff[ d16( csharp] d8)[ a]
	b[ d] a r
	
	R1*2/4*2
	
	d8-.[ d16( csharp] d8)[ b]
	csharp[ e] b r
	
	R1*2/4*2
	
	d8-.[ d16( csharp] d8)[ b]
	e[ g] d r
	
	R1*2/4*2
	
	e8-.[ e16( dsharp] e8)[ b]
	c[ e] b r
	
	R1*2/4*2
	
	e8-.[ e16( dsharp] e8)[ b]
	c[ e] b r
	
	R1*2/4*2
	
	e8-.[ e16( dsharp] e8)[ b]
	R1*2/4
	e8-.[ e16( dsharp] e8)[ b]
	R1*2/4
	e8[ b] r4
	e8[ b] r4
	e8[ bflat] r4
	e8[ a,] r4
	< a, fsharp'' >8[ < a d' >] r4
	g''8[ d] r4
	gsharp8[ d] r8_\markup { \dynamic p \italic cresc.} < gsharp,, f' >8
	r8 < gsharp f' > r < gsharp f' >
	r < gsharp f' > r < gsharp f' >
	r < gsharp f' > r < gsharp f' >
	< a fsharp'! >8\f[ fsharp'] d[ asharp]
	b[ fsharp'] g[ dsharp]
	e[ b] csharp[ e]
	e[ asharp, b csharp]
	d r e,->\f[ e->]
	e4-> d8->[ csharp->]
	bflat->[( a]) e'4
	< e a > < e csharp' >
	< d d' >8 r e->[ e->]
	e4-> d8->[ csharp->]
	bflat->[( a]) e'4
	< e a > < e csharp' >
	< d d' >8 r csharp' r
	b r b r
	b r bflat4->~
	bflat8 r < a e' > r
	< d, d' > r csharp' r
	b r b r
	b r bflat4->~
	bflat8 r < a e' > r
	< d, d' >\f r < e csharp' > r
	< d d' > r < e csharp' > r
	< d d' > r < e csharp' > r
	< d d' > r < e csharp' > r
	< d d' > r d''4:16
	d: csharp8:16[ b8:16]
	a8 r d4:16
	d: csharp8:16[ b8:16]
	a8:[ d: csharp: b:]
	a:[ d: csharp: b:]
	a8 r r4
	< a, a' >8 r r4
	< d, d' b' >8 r r4
	< a' csharp' >8 r r4
	< a d' >8:16\ff[ < a csharp' >: < a d' >: < a csharp' >:]
	< a d' >8:16[ < a csharp' >: < a d' >: < a csharp' >:]
	< a d' >8:16[ < a csharp' >: < a d' >: < a csharp' >:]
	< a d' >8:16[ < a csharp' >: < a d' >: < a csharp' >:]
	< a d' >8-.[ d'16( csharp] d8)[ < a, a' >]
	< a csharp' >[ < a e'' >] d'[ fsharp]
	a r r4
	< d,,, a' fsharp' d' >8 r r4\fermata
}
