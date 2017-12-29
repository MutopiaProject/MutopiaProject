\version "2.18.2"
theViolas =  \relative d' {
	\clef "alto"
	\key d \major

	a8\ff[ a16( gsharp] a8)[ a]
	bflat2
	bflat
	bflat4 a8 r
	a8[ a16( gsharp] a8)[ a]
	bflat4 b
	csharp, d
	csharp8 r r4
	
	R1*2/4*2
	
	g'8-.\f[ g16( fsharp] g8)[ g-.]
	
	R1*2/4*4
	
	r4 < csharp e a >8\ff r
	
	R1*2/4*36
	
	r8 fsharp,\p r f
	r < e g > r < e g >
	r < e g > r < e g >
	r a fsharp r
	fsharp\f r r4
	< g e' >8_\markup { \italic dim. } r r4
	< gsharp e' >8 r < g e' > r
	r g r g
	a\p r b r
	a r g r
	e\< r e r
	e r fsharp\! r
	bflat\f r r f\p
	e r r4
	R1*2/4
	r4 r8 csharp'
	d\mf r r4
	csharp8_\markup { \italic dim. } r r4
	R1*2/4
	r8 gsharp\< r a\!
	d\mf r r4
	csharp8_\markup { \italic dim. } r r4
	
	R1*2/4*2
	
	d8\mf r r4
	csharp8_\markup { \italic dim. } r r4
	R1*2/4
	r8 gsharp r a
	f2\mf
	a
	asharp2
	b
	g_\cr
	a4 bflat
	< aflat f' >2
	< aflat f' >4 < gsharp d' >
	gsharp2\f
	a8 r r4
	gsharp2
	a8 r r4
	f2\mf f
	fsharp!4\< g
	gsharp a\!
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 gsharp'^\markup {pizz.} r g
	r f r g
	r f r csharp
	r b r a
	d,8\p r r4
	a'8 r r4
	a8 r r4
	a8 r a r
	< b fsharp' >\f r r4
	< b g' >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	gsharp8^arco r g r
	fsharp r e' r
	fsharp,\f r r d'
	csharp r csharp r
	csharp-.\p[\< csharp-.] d-.[ e-.]
	e-.[ e-.] d4->\!
	d8\f r r < d b' >
	e r r4
	r8 a-.[\< a-. a-.]
	a-.[ g-.]\! fsharp-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	fsharp,\mf^\markup {pizz.} r r4
	e8[ g] fsharp r
	g r b r
	b r r4
	fsharp8 r r4
	e8[ g] fsharp r
	g r b r
	b r r4
	fsharp8\f r r4
	b8 r r4
	fsharp8 r r4
	b8 r r4
	fsharp8 r r4
	< d' b' >8 r r4
	b8 r < b d > r
	< b d > r < b gsharp' > r
	gsharp r r4
	gsharp8 r r4
	gsharp8 r r4
	gsharp8 r gsharp r
	a r r4
	bflat8 r r4
	b!8\> r b\! r
	b\p r r4
	
	R1*2/4*4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< csharp e a >8\ff^arco r r4
	
	R1*2/4*10
	
	r4 e,8\pp r8
	r4 e8 r
	r4 e8 r
	r4 e8 r
	r4 e8 r
	r4 e8 r
	r4 e8 r
	r4 e8 r
	
	R1*2/4*8
	
	r4 gsharp'8\p-.[( a-.])
	b4-> r
	d,4 csharp8-.[( d-.])
	e4-> a8[( f])
	e4 a8-.[~ a-.]
	b4-> r
	d,4 csharp8-.[( d-.])
	e4-> a8[( f])
	e4 r8 e,8\mf
	r e r e
	r e r e
	r e r e
	r e r e
	r e r e
	r e r e
	r e r e
	r e r4
	r4 gsharp\mf~
	gsharp8[ d] d'4~
	d gsharp,4
	fsharp8[( gsharp] a4)
	d4 b
	gsharp8[( d]) b'4
	e8[ e e d]
	csharp8 r r4
	r8 csharp\p r4
	r8 b r4
	r8 gsharp r4
	r8 a r4
	r8 csharp r4
	r8 b r4
	r8 gsharp r4
	r8 a r4
	r8 fsharp r4
	r8 fsharp r4
	r8 dsharp' r fsharp,
	r e r4
	r8 b'4.
	r8 asharp r asharp
	r b r fsharpsharp
	r a r4
	r8 b4.
	r8 asharp r asharp
	r b r fsharpsharp
	r gsharp r4
	r8 b4.\pp
	r8 gsharp4.
	r8 gsharp4.
	r8 f4.
	r8 g4.
	r8 e4.
	r8 fsharp!4.
	r8 g4.
	r8 g4.~
	g2
	r8 g4.
	r8 g4.
	r8 g4.~
	g2
	r8 e4.~
	e8 r r4
	r8 e4.~
	e8 r r4
	
	R1*2/4*8
	
	r8 fsharp\p r f
	r < e g > r < e g >
	r < e g > r < e g >
	r a fsharp r
	fsharp\f r r4
	< g e' >8_\markup { \italic dim. } r r4
	< gsharp e' >8 r < g e' > r
	r g r g
	a\p r b r
	a r g r
	e\< r e r
	e r fsharp\! r
	bflat\f r r f\p
	e r r4
	R1*2/4
	r4 r8 csharp'\mf
	d r r4
	csharp8_\markup { \italic dim. } r r4
	R1*2/4
	r8 gsharp\< r a\!
	d\mf r r4
	csharp8_\markup { \italic dim. } r r4
	
	R1*2/4*2
	
	d8\mf r r4
	csharp8_\markup { \italic dim. } r r4
	R1*2/4
	r8\< gsharp r a\!
	f2\mf
	a
	asharp2
	b
	g_\cr
	a4 bflat
	< aflat f' >2
	< aflat f' >4 < gsharp d' >
	gsharp2\f
	a8 r r4
	gsharp2
	a8 r r4
	e2\f~
	e4 r
	r8 g[ fsharp g]
	fsharp[ g] fsharp r
	e2~
	e4 r
	r8 fsharp[ e fsharp]
	e[ fsharp] e r
	e2\f
	fsharp2
	gsharp2
	a4( bflat8) r
	R1*2/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8^\markup {pizz.} f''\p
	e[ d c b!]
	bflat[ a aflat g]
	f r r4
	r4 r8 f'
	e[ d c bflat]
	a[ < g a > < f a > < e a >]
	< d a' > r r4
	r4 r8 d'
	csharp![ bflat] a[ gsharp]
	g![ f f e]
	d r r4
	r4 r8 d'
	csharp[ bflat a gsharp]
	g![ f e bflat]
	a[ gsharp g f]
	g[ f] r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< bflat f' >8\ff^arco r < bflat f' >[ < bflat f' >]
	< c f >[ < c f >] < dflat gflat > r
	
	R1*2/4*2
	
	< bflat f' >8 r < bflat f' >[ < bflat f' >]
	< f' a >[ < eflat a >] < d bflat' > r
	
	R1*2/4*2
	
	< bflat g' >8 r < bflat g' >[ < bflat g' >]
	< a fsharp'! >[ < a fsharp' >] < bflat g' > r
	
	R1*2/4*2
	
	< c g' >8 r < c g' >[ < c g' >]
	< b g' >[ < b g' >] < c g' > r
	r4 r8 < c g' >
	< b g' >[ < b g' >] < c g' > r
	r4 r8 < c g' >
	< b g' >[ < b g' >] < c g' > < c g' >]
	< b g' >[ < b g' >] < c g' > < c g' >]
	< b g' >[ < b g' >] < c g' > < c g' >]
	c'[ c,\p] r c_\cr
	r c r c
	r c\< r c
	r c[ c c]\!
	c\f[ c\p] r c\<
	r c r c
	r c r c
	r c[ c c]\!
	c\f[ c\p]\< r c
	r c[ c c]\!
	c\f[ c\p] r c\<
	r c[ c c]\!
	c\f r r4
	
	R1*2/4*3
	
	< g g' d' >8\ff r r4
	
	R1*2/4*10
	
	r4 fsharp8\pp r
	r4 fsharp8 r
	r4 fsharp8 r
	r4 g8 r
	r4 g8 r
	r4 fsharp8 r
	r4 fsharp8 r
	r4 g8 r
	
	R1*2/4*8
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 r8 c\mf^\markup {pizz.}
	r c r c
	r c r c
	r < g d' b' > r < g d' b' >
	r < g d' b' > r < g d' b' >
	r c r c
	r c r c
	r < g d' b' > r < g d' b' >
	r < g d' b' > r d\mf
	r d r d
	r d r d
	r d r d
	r d r d
	r d r d
	r d r d
	r d r d
	r d r4
	
	R1*2/4*8
	
	\set Staff.midiInstrument = #"string ensemble 1"
	r8 g\p^arco r4
	r8 g r4
	r8 g r4
	r8 g r4
	r8 g r4
	r8 g r4
	r8 g r4
	r8 g r4
	r8 fsharp r4
	r8 gsharp r4
	r8 b r4
	r8 d r4
	r8 fsharp, r4
	r8 gsharp r4
	r8 b r4
	r8 d r4
	r8 fsharp,\pp r4
	r8 fsharp r4
	r8 fsharp r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 f r4
	r8 fsharp! r4
	r8 fsharp r4
	r8 fsharp r4
	r8 fsharp r4
	r8 e r4
	r8 e r4
	r8 e r4
	r8 f r4
	r8 fsharp!\< r4
	r8 fsharp r4
	r8 fsharp r4
	r8 < g d' >\! r4
	
	R1*2/4*24
	
	r8 fsharp\p r f
	r < e g > r < e g >
	r < e g > r < e g >
	r a fsharp r
	fsharp\f r r4
	< g e' >8_\markup { \italic dim. } r r4
	< gsharp e' >8 r < g e' > r
	r g r g
	a\p r b r
	a r g r
	e\< r e r
	e r fsharp\! r
	bflat\f r r f\p
	e r r4
	R1*2/4
	r4 r8 csharp'
	d\mf r r4
	csharp8_\markup { \italic dim. } r r4
	R1*2/4
	r8 gsharp\< r a\!
	d\mf r r4
	csharp8_\markup { \italic dim. } r r4
	
	R1*2/4*2
	
	d8\mf r r4
	csharp8_\markup { \italic dim. } r r4
	R1*2/4
	r8 gsharp r a
	f2\mf
	a
	asharp2
	b
	g_\cr
	a4 bflat
	< aflat f' >2
	< aflat f' >4 < gsharp d' >
	gsharp2\f
	a8 r r4
	gsharp2
	a8 r r4
	f2\mf f
	fsharp!4\< g
	gsharp a\!
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8 gsharp'^\markup {pizz.} r g
	r f r g
	r f r csharp
	r b r a
	d,8\p r r4
	a'8 r r4
	a8 r r4
	a8 r a r
	< b fsharp' >\f r r4
	< b g' >8\mf r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	gsharp8^arco r g r
	fsharp r e' r
	fsharp,\f r r d'
	csharp r csharp r
	csharp-.\p[\< csharp-.] d-.[ e-.]
	e-.[ e-.] d4->\!
	d8\f r r < d b' >
	e r r4
	r8 a-.[\< a-. a-.]
	a-.[ g-.]\! fsharp-.\f r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	fsharp,\mf^\markup {pizz.} r r4
	e8[ g] fsharp r
	g r b r
	b r r4
	fsharp8 r r4
	e8[ g] fsharp r
	g r b r
	b r r4
	fsharp8\f r r4
	b8 r r4
	fsharp8 r r4
	b8 r r4
	fsharp8 r r4
	< d' b' >8 r r4
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< b e >8^arco r < b d > r
	< b d > r < d b' > r
	a2\f~\>
	a2\!_\markup { \dynamic pp \italic {poco a poco cresc.}}
	b8 r r4
	R1*2/4
	b2~^\cr
	b(
	csharp8) r r4
	R1*2/4
	csharp2~^\markup { \italic {sempre cresc.}}
	csharp4 csharp8[ csharp]
	d2~
	d4 b8[ d]
	< e, g >2~
	< e g >4 < e g >8[ < e g >]
	f2~
	f4
	gsharp8[ f]
	< e g! >2\f
	< e g >
	< g! d' >4->( csharp)
	< g d' >->( csharp)
	r8 < a g' a > r < a g' a >
	r < a g' a > r < a g' a >
	r < a g' a > r < a g' a >
	r < a g' a >[ < a g' a > < a g' a >]
	< a fsharp' a >\ff r < fsharp' a >[ < d d' >]
	< d d' >[ < d d' >] < d d' > r
	
	R1*2/4*2
	
	< d b' >8 r < d b' >[ < d b' >]
	< b g' >[ < b g' >] < b fsharp' > r
	
	R1*2/4*2
	
	< g d' b' >8 r < b g' >[ < b g' >]
	< g g' >[ < g g' >] < d' b' > r
	
	R1*2/4*2
	
	< b g' >8 r < b g' >[ < b g' >]
	< e a >[ < e a >] < b g' > r
	
	R1*2/4*2
	
	< b g' >8 r < b g' >[ < b g' >]
	< e a >[ < e a >] < b g' > r
	
	R1*2/4*2
	
	< b g' >8 r < b g' >[ < b g' >]
	R1*2/4
	< b g' >8 r < b g' >[ < b g' >]
	R1*2/4
	< b g' >8[ < b g' >] r4
	< b g' >8[ < b g' >] r4
	< bflat g' >8[ < bflat g' >] r4
	< a g' >8[ < a g' >] r4
	< d d' >8[ < d d' >] r4
	< d d' >8[ g] r4
	< f d' >8[ < f d' >] r_\markup { \dynamic p \italic cresc.} < gsharp, f'! >
	r < gsharp f' > r < gsharp f' >
	r < gsharp f' > r < gsharp f' >
	r < gsharp f' > r < gsharp f' >
	< a fsharp'! >\f[ fsharp' fsharp csharp]
	b[ < b fsharp' >] < b g' >[ fsharp']
	e[ e a, gsharp']
	a[ csharp, d < e a >]
	< fsharp a > r g,\f[ g]
	g2(
	e4) g
	g < e csharp' >
	< a d >8 r g[ g]
	g2(
	e4) e
	g < e csharp' >
	< a d >8 r fsharp' r
	d r dsharp r
	e r e4->~
	e8 r < a, e' > r
	< a d > r fsharp' r
	d r dsharp r
	e r e4->~
	e8 r < a, e' > r
	< a d >\f r csharp r
	< a d > r csharp r
	< a d > r csharp r
	< a d > r csharp r
	< a d > r < d fsharp >4:16
	< d fsharp >: fsharp8:[ g:]
	a r < d, fsharp >4:16
	< d fsharp >: fsharp8:[ g:]
	a8:[ < d, fsharp >: < d fsharp >: g:]
	a8:[ < d, fsharp >: < d fsharp >: g:]
	< d a' > r r4
	< d a' >8 r r4
	< b gsharp' >8 r r4
	< a e' csharp' >8 r r4
	< fsharp' d' >8\ff[ < e csharp' > < fsharp d' > < e csharp' >]
	< fsharp d' >[ < e csharp' > < fsharp d' > < e csharp' >]
	< fsharp d' >[ < e csharp' > < fsharp d' > < e csharp' >]
	< fsharp d' >[ < e csharp' > < fsharp d' > < e csharp' >]
	< fsharp d' > r < fsharp a >[ < d d' >]
	< e csharp' >[ < e a >] d[ fsharp]
	a r r4
	< d,, a' fsharp' d' >8 r r4\fermata
}
