\version "2.18.2"

theSecondViolins =  \relative d' {
	\clef "treble"
	\key d \major
	
	r1
	R1
	
	r2 r4 d\p
	e d csharp r
	R1
	r4 csharp( b asharp)
	r4 b r2
	
	R1*2
	
	a1
	a1
	< b d >
	csharp\<
	csharp8 r csharp2\mf\! \appoggiatura d8( csharp16)[(_\markup { "" \raise #-2.5 \italic cresc. }
		 b csharp e])
	< d a' >1\<
	gsharp8\f\! r gsharp2 \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8 r gsharp2 \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8\ff gsharp \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
		gsharp8 gsharp \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8[ d f gsharp] < d b' >[ < d d' >] f'[ gsharp]
	< a, a' > r r4 r r8 d,\f(
	csharp) r r4 r r8 d\mf(
	csharp) r r d\p( csharp) r r d(
	csharp) r r4 r2
	
	R1*3
	
	r2 r8 r4\fermata r8
	d1\pp
	csharp
	b
	a2~ a8 r r4
	
	R1*3
	
	r2 r4 r8 e'\p
	g r r csharp, e r r4
	
	R1*4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a,8\p^\markup { pizz. } r r4 r a8 r
	a8 r r4 r a8 r
	< g d' > r r4 r < g d' >8 r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d'2~^\markup { arco } d8 r a4~
	a8[^\markup { \italic dolce } b( csharp e]) esharp[( fsharp] a,4)~
	a8[ b( csharp e]) esharp[( fsharp] d)\< r
	bsharp8\! r csharp r d r r4
	csharp8 r r4 r2
	R1
	r8 bflat\pp r a r gsharp r csharp
	r a r a r d[ d a]
	r bflat r a r gsharp r csharp
	r a r a r d-.[ d-. a-.]
	r csharp_\cr r b r asharp r4
	r8 fsharp' r e r dsharp r4
	r8 d! r c r e r e
	f\f r f4~ f8 r r4
	aflat8 r < b,! aflat' >4~ < b aflat' >8 r r4
	< f' a >8\f[ < f a >16. < f a >32] < f a >8[ < f a >16. < f a >32] < g bflat >8 r r4
	< f a >8[ < f a >16. < f a >32] < f a >8[ < f a >16. < f a >32] < g bflat >8 r r4
	< f a >8[ < f a >16. < f a >32] < fsharp a >8 r < d d' >8[ < d d' >16. < d d' >32] < d d' >8 r
	< d d' >8[ < d d' >16. < d d' >32] < d d' >8 r < dsharp c' >8[ < dsharp c' >16. < dsharp c' >32] < dsharp c' >8 r
	< e a >8\ff r < e a > r a^>( gsharp) r4
	< e a >8 r < e a > r a^>( gsharp) r4
	r8 gsharp_\markup { \italic dim. } r4 r8 gsharp r4
	gsharp8 r r4 r2
	
	R1*2
	
	r4 d4\pp r csharp
	r csharp r d
	r csharp r d
	r e r d
	r c r csharp
	gsharp(\< a)\! b8(\> csharp d4)\!
	
	R1*2
	
	asharp2_\markup { \dynamic pp \italic {poco cresc.} } b
	a! gsharp
	asharp b
	c csharp4~ csharp8 r
	
	\tuplet 3/2 { r8 d8\p[~ d]~ } d4 \tuplet 3/2 { r8 csharp8[~ csharp]~ } csharp4
	\tuplet 3/2 { r8 csharp8[~ csharp]~ } csharp4 \tuplet 3/2 { r8 d8\p[~ d]~ } d4
	asharp2 b~
	b_\markup { \italic {poco a poco cresc.} } b~
	b asharp
	\tuplet 3/2 { r8 d[( b] } \tuplet 3/2 { d[ b d]) } \tuplet 3/2 { r fsharp[( c] } \tuplet 3/2 { fsharp[ c fsharp]) }
	\tuplet 3/2 { r g[( e]) } \tuplet 3/2 { r gsharp[( d]) } \tuplet 3/2 { r g[( e]) } \tuplet 3/2 { r b'[( f]) }
	\tuplet 3/2 { r csharp'\mf[( asharp] } \tuplet 3/2 { csharp[ asharp csharp]) } \tuplet 3/2 { r csharp[( asharp] } \tuplet 3/2 { csharp[ asharp csharp]) }
	d4\mf csharp!4~ csharp8[ csharp-.]( d-.[ d-.])
	c-.[( c-.]) bflat-.[( bflat-.]) a-.[( a-.]) d,-.[( e!-.])
	d'4 csharp!4~ csharp8[ csharp-.]( d-.[ d-.])
	c-.[( c-.]) bflat-.[( bflat-.]) a-.[( a-.]) g-.[( eflat-.])
	eflat4 eflat~ eflat8[ f( bflat d])
	d,4 d~ d8[ e!( a csharp!])
	r8 c,!8 c'4 csharp8 r r4
	R1
	r2 r4 \tuplet 3/2 { < a csharp >8\f[ < a csharp > < a csharp >] }
	r2 r4 \tuplet 3/2 { < a csharp >8[ < a csharp > < a csharp >] }
	r8 csharp r4 r8 b r4
	r8 c r4 r8 g r4
	c2\fp b
	b a
	a4 a a~ a8 r
	a4 a a~ a8 r
	f4_\markup { \italic {poco cresc.} } e e e
	e a a a
	a8\mf r r4 r2
	
	R1*3
	
	r8 csharp,16\pp[_\markup { \translate #(cons 4 -1) \italic {poco a poco cresc.} } r d r dsharp] r
		e[ r csharp r d! r dsharp] r
	e16[ r csharp r d! r < b fsharp' >] r < b gsharp' >[ r csharp r d r < b fsharp' >] r
	< b gsharp' >[ r gsharp r a r a] r b[ r b r csharp r csharp] r
	d\mf[ r d r d r d] r < a d >2\f\>
	d16\mf[\! r d r d r d] r < a d >2\f
	f'16\mf[ r f r f r f] r f2\f\>
	a16\mf[\! r a r a r a] r aflat2\f\>
	< aflat eflat' >16[ r < aflat eflat' >\mf\! r < aflat eflat' > r < aflat eflat' >] r dsharp!2\f
	< gsharp, e'! >8\mf < gsharp e' > r < gsharp e' >[ < gsharp e' > < gsharp e' >] r < gsharp e' >
	< a f' > < a f' > r < a f' >[ < a f' > < a f' >] r < a f' >
	< b a' > < b a' > r < b a' >[ < b a' > < b a' >] r < b a' >
	< bsharp a' > < bsharp a' > r < bsharp a' >[ < bsharp a' > < bsharp a' >] r < bsharp a' >
	
	R1*4
	
	< e, csharp' e >8\ff r csharp'2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	< b, fsharp' d' b' >8 r d'2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	b8) csharp d[ csharp16( b] a8)[ gsharp16( fsharp] esharp)[ csharp( esharp gsharp])
	b8 csharp d[ csharp16( b] a8)[ gsharp16( fsharp] e!)[ fsharp( gsharp b])
	< e, csharp' e >8\ff r8 csharp'2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	< b, fsharp' d' b' >8 r d'2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	bsharp8)[ fsharp\p]~ fsharp[ gsharp,]~ gsharp r r4
	r8 gsharp4 gsharp8~ gsharp[\< csharp16( bsharp]) csharp[( dsharp e dsharp])\!
	gsharp8\mf[ fsharp\p]~ fsharp[ gsharp,]~ gsharp r r4
	r8 gsharp4 gsharp8~ gsharp[\< csharp16( bsharp]) csharp[( dsharp e csharp])\!
	dsharp8\mf[ asharp']~ asharp[ asharp,]~ asharp r r csharp~
	csharp asharp'[~ asharp] asharp,[~ asharp] r r csharp~
	csharp csharp'[~ csharp] r r bsharp,~ bsharp[ dsharp](
	gsharp)[ gsharp]~ gsharp r r gsharp,~ gsharp[ gsharp](
	csharp) dsharp4\< fsharp8 b csharp4 e8(\!
	a\mf) < a, g'! >4 a8~ a r r4
	r8 d,~\< d[~ d]~ d[ g16( fsharp]) g[( a bflat a])\!
	d8\mf < a g' >4\p a8~ a r r4
	r8 d,~\< d[~ d]~ d[ g16( fsharp]) g[( a bflat g])\!
	a8\mf[ < csharp e >]~ < csharp e >[ e,]~ e r r g~
	g8[ < csharp e >]~ < csharp e >[ e,]~ e r r g~
	g[ e]~ e r r a,~ a[ a](
	d)[ d]~ d r r b~_\cr b r
	r a~ a[ c]( f)[ g]~ g[ bflat](
	eflat)[ f,]~ f[ gsharp]( csharp!)[ dsharp,]~ dsharp[ fsharp](
	b!\ff) r r4 r2
	< d, b' f' >8\f r r4 r2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	c'8\pp^\markup {pizz.} \noDynamic r\p c r r4 c'8 r
	< d, b' > r b, r r4 csharp8 r
	d r d r r4 d'8 r
	csharp! r csharp, r r4 csharp8 r
	c r f r c r g' r
	d r f r a, r e' r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	f2\p(\>^\markup {arco} e8)\! r r4
	f2^>(\> e8)\! r
		\set Staff.midiInstrument = #"pizzicato strings"
		b\pp^\markup {pizz.} r
	c8 r c r r4 c'8 r
	< d, b' > r b r r4 csharp!8 r
	d r d r r4 d'8 r
	csharp r csharp, r r4 csharp8 r
	c r f r c r g' r
	d r f r a, r e' r
	dsharp r r4 dsharp8 r r4
	csharp!8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		csharp2^\markup {arco}
	b8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		dsharp8^\markup {pizz.} r r4
	csharp8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		csharp2^\markup {arco}
	csharp8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		csharp8^\markup {pizz.} r r4
	< a f' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		d2^\markup {arco}
	csharp8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		csharp8^\markup {pizz.} r r4
	< a f' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		d2\<^\markup {arco}
	d8\! r r4 r2
	d8 r r4 r2
	
	R1*2
	
	< a' a' >8\ff r < a a' >2 \grace { g16[ a] } g16[( f a c])
	g4.( a8) g4 a
	bflat8 r bflat2 \grace { a16[ bflat] } a16[( g bflat d])
	a4.( bflat8) a4 a
	d8 e f[ e16( d] c8)[ e] f[ d16( c]
	bflat8)[ csharp!] d[ c16( b] a8)[ csharp] d[ bflat16( a])
	g16[ a bflat g] f[ a bflat f] eflat[ fsharp g eflat] d[ fsharp g d]
	csharp!8\ff[ a'] bflat[ bflat,] b[ b] c[ c]
	csharp!8 g'4 gsharp gsharp < d' e >8
	< csharp e >[ a] bflat[ bflat,] b[ b] c[ c]
	csharp!8 g'!4 gsharp gsharp < d' e >8
	< csharp e >[ bflat] b[ b,] c[ c] csharp[ csharp]
	d8 gsharp4 a g b!8
	c[ b] c[ c,] csharp[ csharp] d[ d]
	dsharp < fsharp! a >4 e f c'8
	csharp![ bsharp] csharp[ csharp,] d![ d'!] dsharp[ dsharp,]
	e[ e'] f[ f,] fsharp[ fsharp'] g[ g,]
	gsharp8\ff[ f'16( g!] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ f,16( g]
	gsharp8)[ f'16( g] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ g,16( gsharp]
	a8) r r4 r r8 f16[( g!]
	gsharp8)[ f'16( g] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ g,16( gsharp]
	a8) r r4 r r8 f16[( g!]
	gsharp8)[ f'16( g] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ g,16( gsharp]
	a8) r r4 r2
	
	s1*46
	
	d,2.\pp d4
	csharp2. c4
	b2. b4
	a4. b8( a) r\pp a4~_\markup { \italic dolce }
	a8[ b( csharp e]) esharp[( fsharp] a,4)~
	a8[ b(_\markup { \italic {poco cresc.}} csharp e!]) esharp[( fsharp] e4)
	d4~( \tuplet 3/2 { d8[ e fsharp]) } b,2\<
	gsharp16[( a b csharp]) d4(\! csharp8) r r e'\p
	g r r csharp, e r r4
	
	R1*2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a,,8\pp^\markup {pizz.} r r4 r a8 r
	a_\cr r r4 r < a fsharp' >8 r
	d8 r r4 r d8 r
	r4
		\set Staff.midiInstrument = #"string ensemble 1"
		csharp8[(^\markup {arco} e]) r4 b8[( dsharp])
	r4 b8[( d!]) r4 a8[( csharp])
	r4 a8[( c]) r4 g8[( b])
	r4 c r bflat
	b!2_\markup { \dynamic {mf} \italic dim. } csharp
	c2~\> c8\! r r4
	R1
	r8 eflat\pp r d r e r fsharp
	r d r d r g-.[ g-. d-.]
	r8 eflat r d r e r fsharp
	r d r d r g-.[ g-. d-.]
	r fsharp_\cr r e r dsharp r b
	r b' r a r gsharp r a,
	r g' r d r < g a > r < f a >
	bflat r bflat4~ bflat8 r r4
	dflat8 r dflat4~ dflat8 r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	< d,! d'! >8\f^\markup {pizz.} r r4 r2
	< d d' >8 r r4 r2
	< d d' >8_\cr r < d d' > r g r < csharp! g' > r
	< d, d' g > r < d bflat' g' > r < f csharp'! gsharp' > r < f d' gsharp > r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< fsharp! d' a' >8\ff^\markup {arco} r < f d' a' > r << { e'4 } \\ { d8[( csharp]) } >> r4
	< fsharp,! d' a' >8 r < f d' a' > r << { e'4 } \\ { d8[( csharp]) } >> r4
	r8 csharp, r4 r8 csharp r4
	r8 csharp8~ csharp4~ csharp8 r r4
	
	R1*2
	
	r8 a4\pp a8 r a4 a8
	r8 b4 b8 r b4 b8
	r4 b4\p r b
	r c r b
	r bflat r a
	csharp(\< d) e8[(\! fsharp] a,) r
	
	R1*2
	
	r16_\markup { "" \raise #-1.0 \dynamic p \italic cresc. } b[( dsharp b]) r b[( dsharp b]) r b[( e b]) r b[( e b])
	r bflat[( d! bflat]) r bflat[( d bflat]) r a[( csharp a]) r a[( csharp a])
	r b![( dsharp b]) r b[( d b]) r b[( e b]) r b[( e b])
	r b[( fsharp' b,]) r b[( fsharp' b,]) r csharp![( esharp csharp]) r csharp[( esharp csharp])
	r d[( fsharp d]) r gsharp,[(_\cr d' gsharp,]) r gsharp[( d' gsharp,]) r a[( dsharp a])
	eflat'2\mf~ eflat8 eflat~ eflat e(
	f)[ d]( eflat)[ c]( d)[ d-.( eflat-. eflat-.])
	eflat2~ eflat8 eflat~ eflat e(
	f)[ d]( eflat)[ c]( d)[ d]( c-.[ aflat-.])
	aflat4 aflat~ aflat8[ bflat eflat g]
	g,4 g~ g8[ a d fsharp!]
	r8 b,\f f'4 fsharp8 r r4
	R1
	r2 r4 \tuplet 3/2 { fsharp8\f[ g a] }
	r2 r4 \tuplet 3/2 { fsharp8[ gsharp a] }
	r8 < dsharp fsharp >8 r4 r8 < a e' > r4
	r8 < d! f > r4 r8 < c f! > r4
	bflat4\pp( a) a16[( gsharp fsharpsharp a]) gsharp4
	a4( g!) g16[( fsharp! esharp g]) fsharp4
	g4(\< f) f16[( e dsharp f] e8)\! r
	g4(\< f) f16[( e dsharp f] e8)\! r
	bflat'4\mf a < g a > < f a >
	e\< < d d' > < d d' > < d d' >8 < d d' >\!
	< d d' >8 r r4 r2
	
	R1*3
	
	r4 r8 gsharp,16\pp r a_\markup { \italic {poco a poco cresc.}} r r8 r gsharp16 r
	a[ r a r b r b] r a[ r a r b r b] r
	a[ r csharp r < b d > r < b d >] r e[ r csharp r d r fsharp] r
	< b, g' >[\< r < csharp g' > r < b g' > r < csharp g' >]\! r < d b' >2\f\>
	< b g' >16[ r\mf\! < csharp g' > r < b g' > r < csharp g' >] r < d bflat' >2\f\>
	< d bflat' >16[ r\mf\! < d bflat' > r < d bflat' > r < d bflat' >] r < f d' >2\f\>
	< f d' >16[ r\mf\! < g d' > r < f d' > r < g d' >] r < dflat aflat' >2\f\>
	< dflat aflat' >8[\! < dflat bflat' > < dflat aflat' > < dflat bflat' >] < d b' >2\f
	< csharp' g'! >8\mf[ < csharp g' >] r < csharp g' >[ < csharp g' > < csharp g' >] r < csharp g' >
	< d, d' >[ < d d' >] r < d d' >[ < d d' > < d d' >] r < d d' >
	< d' e >[ < d e >] r < d e >[ < d e > < d e >] r < d e >
	d'[ d] r d[ d d] r d
	
	R1*4
	
	< d,, a' fsharp' >8\f r d\p r e r dsharp r
	dsharp_\cr r b r csharp r a r
	a r c r d r c r
	bflat r r4 r f'8\f e
	e r r4 r e8 d
	d r r4 r d8 c
	c r r b b r r a
	a r a'2 r4
	a,8 r a'2 r4
	< d, bflat' >8[ < d bflat' >~ < d bflat' > < d bflat' >]~ < d bflat' >[ < d bflat' >~ < d bflat' > < d bflat' >]
	bflat'\f[ a->] a[ bflat->] bflat[ a->] a[ bflat->]
	bflat8 bflat4 bflat4 bflat4 bflat8
	< d, b'! >8 < d b' >4 < d b' > < d b' > < d b' >8
	< d a' >8\ff[ eflat\p](^\< d[ csharp!]) b[( bflat] a4)
	a4( d8)[ d]^\! d r csharp\f r
	fsharp8\p[(^\< eflat] d[ csharp]) b![( bflat] a4)
	a( d8)[ d]^\! d r csharp\f r
	g' r r4 r8 < g a >\ff[ < g a > < g a >]
	< d bflat' > r r4 r8 < g a >[ < g a > < g a >]
	< d bflat' > r r < g a > < d bflat' > r r < g a >
	< d bflat' > r r < d' e > < d esharp > r r < d esharp >
	< d fsharp >\ff < d, d' >4 < d d' >8~ < d d' > e8:16[ fsharp: g:]
	a < d, d' >4 < d d' >8~ < d d' > e8:16[ fsharp: g:]
	a d4 e8 d csharp4 d8
	csharp b4 g8 bflat-> r r < g a >
	< fsharp a > < d d' >4 < d d' >8~ < d d' > e8:16[ fsharp: g:]
	a < d, d' >4 < d d' >8~ < d d' > e8:16[ fsharp: g:]
	a d4 e8 d csharp4 d8
	csharp b4 g8 bflat-> r r < g a >
	< fsharp a >8 r < b, fsharp' > r < a fsharp' d' > r < d a' fsharp' > r
	< d a' fsharp' > r < b fsharp' > r < a fsharp' d' > r < d a' fsharp' > r
	< d a' fsharp' > r < d b' fsharp' > r < d a' fsharp' > r < d b' fsharp' > r
	< d a' fsharp' > r < d b' fsharp' > r < d a' fsharp' > r < d b' fsharp' > r
	< d a' fsharp' >[ a d fsharp] < fsharp a >[ < fsharp a > < fsharp a > < a fsharp' >]
	< d, a' fsharp' >4 < d a' fsharp' > < d a' fsharp' > < d a' fsharp' >
	< a d >1\fermata
}
