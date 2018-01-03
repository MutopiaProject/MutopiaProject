\version "2.18.2"

theViolas =  \relative d' {
	\clef "alto"
	\key d \major
	
	r1
	R1
	
	r2 r4 a4\p
	a a a r
	
	R1*2
	
	r4 fsharp r2
	
	R1*2
	
	< e g >1\p_\markup { \translate #(cons 4 0) \italic cresc. }
	f
	f
	< e a >\<
	csharp'8 r csharp2\mf\! \appoggiatura d8( csharp16)[(_\cr b csharp e])
	f,1\<
	gsharp8\f\! r gsharp2 \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8 r gsharp2 \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8\ff gsharp \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
		gsharp8 gsharp \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8[ < b d > < b d > < b d >] < b d >[ < b d > < b d > < b d >]
	< csharp e > r r4 r4 r8 b8\f(
	a) r r4 r4 r8 b8\mf(
	a) r r b\p( a) r r b(
	a) r r4 r2
	
	R1*3
	
	r2 r8 r4\fermata r8
	a1\pp
	a
	g
	fsharp2~ fsharp8 r fsharp4(
	e8) r e r a r fsharp4(
	e8) r e r a r fsharp4
	fsharp4 b e,2
	e4\< e~ e8\! r r4
	
	R1*5
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8\p^\markup { pizz. } r r4 r d8 r
	e r r4 r4 d8 r
	d8 r r4 r d8 r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	a'4.( gsharp8 a) r fsharp4(
	e8) r e r a r fsharp4(
	e8) r a r a r a\< r
	fsharp8\! r e r b' r r4
	a8 r r4 r2
	R1
	r8 e\pp r e r e r e
	r fsharp r fsharp r a[ fsharp fsharp]
	r e r e r e r e
	r fsharp r fsharp r a-.[ fsharp-. fsharp-.]
	r fsharp_\cr r fsharp r fsharp r fsharp
	r b r b r b r b
	r b r a r d r c
	d\f r bflat4~ bflat8 r r4
	f'8 r f4~ f8 r r4
	c8\f[ d16. e32] c8[ d16. e32] c8 r r4
	c8[ d16. e32] c8[ d16. e32] c8 r r4
	c8[ d16. eflat32] d8 r < g, g' >8[ < g g' >16. < g g' >32] < gsharp gsharp' >8 r
	e'8[ f16. g!32] f8 r gsharp8[ a16. b32] a8 r
	< e, csharp'! >8\ff r < e c' > r < e b' >4-> r
	< e csharp'! >8 r < e c' > r < e b' >4-> r
	r8 \noDynamic d'8\mf_\markup { \italic dim. } r4 r8 csharp r4
	d8 r r4 r2
	
	R1*2
	
	r4 b\pp r a
	r asharp r b
	r asharp r b
	r b r b
	r a r a
	d,( e) e2
	
	R1*2
	
	fsharp1_\markup { \dynamic pp \italic {poco cresc.} }
	f2 e
	fsharp! fsharp
	a a4~ a8 r
	
	\tuplet 3/2 { r8 e'8\p[( e,]) } \tuplet 3/2 { e'[( e, e']) } \tuplet 3/2 { r e[( e,]) } \tuplet 3/2 { e'[( e, e']) }
	\tuplet 3/2 { r8 fsharp8[( fsharp,]) } \tuplet 3/2 { fsharp'[( fsharp, fsharp']) } \tuplet 3/2 { r fsharp[(
		fsharp,]) } \tuplet 3/2 { fsharp'[( fsharp, fsharp']) }
	\tuplet 3/2 { r8 fsharp8[( fsharp,]) } \tuplet 3/2 { fsharp'[( fsharp, fsharp']) } \tuplet 3/2 { r fsharp[(
		fsharp,]) } \tuplet 3/2 { fsharp'[( fsharp, fsharp']) }
	\tuplet 3/2 { r8_\markup { "" \raise #-4 \italic {poco a poco cresc.} } fsharp8[( fsharp,]) } \tuplet 3/2 { fsharp'[(
		fsharp, fsharp']) } \tuplet 3/2 { r e[( e,]) } \tuplet 3/2 { e'[( e, e']) }
	\tuplet 3/2 { r e[( e,]) } \tuplet 3/2 { e'[( e, e']) } \tuplet 3/2 { r e[( e,]) } \tuplet 3/2 { e'[( e, e']) }
	\tuplet 3/2 { r b[( gsharp] } \tuplet 3/2 { b[ gsharp b]) } \tuplet 3/2 { r c[( a] } \tuplet 3/2 { c[ a c]) }
	\tuplet 3/2 { r e[( bflat]) } \tuplet 3/2 { r d[( b]) } \tuplet 3/2 { r e[( csharp]) } \tuplet 3/2 { r f[( d]) }
	\tuplet 3/2 { r asharp'\mf[( e] } \tuplet 3/2 { asharp[ e asharp]) } \tuplet 3/2 { r asharp[( e] }
		\tuplet 3/2 { asharp[ e asharp]) }
	bflat4\mf bflat~ bflat8 bflat-.( bflat-.[ b-.])
	g-.[( a-.]) f-.[( g-.]) eflat-.[( d-.]) d-.[( c-.])
	bflat'4 bflat~ bflat8 bflat-.( bflat-.[ b-.])
	g-.[( a-.]) f-.[( g-.]) eflat-.[( d-.]) d-.[( c-.])
	c4 c~ c8[ d( f bflat])
	b,!4 b~ b8[ csharp!( e a])
	r8 a, a'4 a8 r r4
	R1
	r2 r4 \tuplet 3/2 { csharp,8\f[ d e] }
	r2 r4 \tuplet 3/2 { csharp8[ dsharp e] }
	r8 e r4 r8 e r4
	r8 e r4 r8 e r4
	f2\f fsharp
	e e
	d4 e f~ f8 r
	d4 e f~ f8 r
	gsharp,4_\markup { \italic {poco cresc.} } a d c
	b csharp! csharp16[( d e csharp]) b8 bsharp
	csharp8\mf r r4 r2
	
	R1*3
	
	r8 fsharp,16\pp[_\markup { \translate #(cons 4 -1) \italic {poco a poco cresc.} } r fsharp r gsharp] r
		a[ r fsharp r fsharp r gsharp] r
	a[ r e r fsharp r fsharp] r gsharp[ r e r fsharp r fsharp] r
	gsharp[ r e r fsharp r fsharp] r gsharp[ r gsharp r a r a] r
	b16\mf[ r b r b r b] r fsharp2\f\>
	b16\mf[\! r b r b r b] r f2\f
	a'16\mf[ r a r a r a] r a2\f\>
	f16\mf[\! r f r f r f] r eflat2\f\>
	eflat16\mf[\! r eflat r eflat r eflat] r dsharp2\f
	< bflat d >8\mf < bflat d > r < bflat d >[ < bflat d > < bflat d >] r < bflat d >
	< a d > < a d > r < a d >[ < a d > < a d >] r < a d >
	< d a' > < d a' > r < d a' >[ < d a' > < d a' >] r < d a' >
	< fsharp! a > < fsharp a > r < fsharp a >[ < fsharp a > < fsharp a >] r < fsharp a >
	
	R1*4
	
	< csharp e a >8\ff r csharp2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	< b d >8 r d2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	b8) csharp d[ csharp16( b] a8)[ gsharp16( fsharp] esharp)[ csharp( esharp gsharp])
	b8 csharp d[ csharp16( b] a8)[ gsharp16( fsharp] e!)[ fsharp( gsharp b])
	< csharp e a >8\ff r8 csharp2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	< b d >8 r d2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	bsharp8)[ dsharp\p]~ dsharp[ dsharp]~ dsharp r r4
	r4 r8 e8~ e[\< e16( dsharp]) csharp8\! r
	r8 dsharp\p[~ dsharp dsharp]~ dsharp r r4
	r4 r8 e8~ e[\< e16( dsharp]) csharp8\! r
	r fsharpsharp\mf~ fsharpsharp r r asharp,16[( b] csharp8)[ gsharp](
	asharp)[ fsharpsharp']~ fsharpsharp r r asharp,16[( b] csharp8)[ gsharp](
	asharp)[ fsharpsharp']~ fsharpsharp r r dsharp~ dsharp r
	r esharp~ esharp r r esharp,~ esharp r
	r fsharp'~\< fsharp[ fsharp] b, csharp4 e8(\!
	a\mf) c4 < d, a' >8~ < d a' > r r4
	r4 r8 bflat8\p~\< bflat[ bflat'16( a]) g4\!
	< fsharp a >8\mf c'4\p < d, a' >8~ < d a' > r r4
	r4 r8 bflat~\< bflat[ bflat'16( a]) g8\! r
	r a\mf~ a[ d,]~ d r r d(
	e)[ a]~ a[ d,]~ d r r d(
	e)[ csharp]~ csharp r r fsharp,~ fsharp r
	r b~ b r r d,~_\cr d[ d]
	g[ c]~ c r r g~ g[ bflat](
	eflat)[ f,]~ f[ gsharp]( csharp!)[ dsharp,]~ dsharp[ fsharp](
	b!\ff) r r4 r2
	< b f' >8\f r r4 r2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	g8\pp^\markup {pizz.} \noDynamic r\p g r r4 g'8 r
	g r g, r r4 a8 r
	a r a r r4 a'8 r
	< e a > r a, r r4 a8 r
	a r c r g r c r
	a r a r a r a r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d2\p(\>^\markup {arco} b8)\! r r4
	d2^>(\> b8)\! r
		\set Staff.midiInstrument = #"pizzicato strings"
		gsharp\pp^\markup {pizz.} r
	g!8 r g r r4 g'8 r
	g r g, r r4 a8 r
	a r a r r4 a'8 r
	< e a > r a, r r4 a8 r
	a r c r g r c r
	a r a r a r a r
	a r r4 a8 r r4
	< g g' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		g2^\markup {arco}
	fsharp8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		a8^\markup {pizz.} r r4
	< g g' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		g2^\markup {arco}
	g8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		g8^\markup {pizz.} r r4
	f8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		a2^\markup {arco}
	a8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		g8^\markup {pizz.} r r4
	f8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		a2\<^\markup {arco}
	b8\! r r4 r2
	b8 r r4 r2
	
	R1*2
	
	a8\ff r a2 \grace { g16[ a] } g16[( f a c])
	g4.( a8) g4 a
	bflat8 r bflat2 \grace { a16[ bflat] } a16[( g bflat d])
	a4.( bflat8) a4 a
	d8 e f[ e16( d] c8)[ e] f[ d16( c]
	bflat8)[ csharp!] d[ c16( b] a8)[ csharp] d[ bflat16( a])
	g16[ a bflat g] f[ a bflat f] eflat[ fsharp g eflat] d[ fsharp g d]
	csharp!8\ff r e4( f) fsharp(
	g8) e'4 d d gsharp8
	< e a > r e,4( f) fsharp(
	g8) e'4 d d gsharp8
	< e a > r f,4( fsharp) g(
	gsharp8) f'4 dsharp e b8
	c r fsharp,!4( g!) gsharp(
	a8) dsharp4 asharp b bsharp8
	csharp![ bsharp] csharp[ csharp] d![ d] dsharp[ dsharp]
	e[ e] f[ f] fsharp[ fsharp] g[ g]
	gsharp8\ff[ f16( g!] gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ f16( g]
	gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ g16( gsharp]
	a8) r r4 r r8 f16[( g!]
	gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ g16( gsharp]
	a8) r r4 r r8 f16[( g!]
	gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ f16( g] gsharp8)[ g16( gsharp]
	a8) r r4 r2
	
	s1*46
	
	a,2.\pp a4
	a2. a4
	g2. g4
	fsharp4. f8( fsharp) r\pp fsharp4(
	e8) r e r a r fsharp4(
	e8) r_\markup { \italic {poco cresc.}} e r a[( d]) fsharp,4
	fsharp4 b e,2\<
	e4 e~\! e8 r r4
	
	R1*3
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8\pp^\markup {pizz} r r4 r d8 r
	csharp_\cr r r4 r c8 r
	g' r r4 r g8 r
	r
		\set Staff.midiInstrument = #"string ensemble 1"
		fsharp4.^\markup {arco} r8 fsharp4.
	r8 e4. r8 e4.
	r8 d4. r8 d4.
	r8 g4. r8 g4.
	g2_\markup { \dynamic {mf} \italic {dim.} } a
	a2~\> a8\! r r4
	R1
	r8 a\pp r a r csharp r c
	r b r b r d-.[ b-. b-.]
	r a r a r csharp! r c
	r b r b r d-.[ b-. b-.]
	r b_\cr r b r b r b
	r e r e r e r e
	r a, r a r a r a
	eflat' r eflat4~ eflat8 r r4
	e!8 r e4~ e8 r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	< bflat f' >8\f^\markup {pizz.} r r4 r2
	< bflat f' >8 r r4 r2
	< bflat f' >8_\cr r < b g' > r < c g' > r < csharp g' > r
	g' r g r gsharp r gsharp r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< a, fsharp' a >8\ff^\markup {arco} r < a f' a > r e'4-> r
	< a, fsharp'! a >8 r < a f' a > r e'4-> r
	r8 g, r4 r8 g r4
	r8 g~ g4~ g8 r r4
	
	R1*4
	
	r4 dsharp'\p r e
	r e r e
	r d r d
	g,(\< a) a~\! a8 r
	
	R1*2
	
	r8\p b_\cr r b r b r b
	r bflat r bflat r a r a
	r b\pp r b r b r b
	r b r b r csharp r csharp
	r d r gsharp,_\cr r gsharp r a
	bflat4\mf c4~ c8[ fsharp!]( g)[ g](
	f)[ f]( eflat)[ eflat]( d)[ aflat-.( g-. a-.])
	bflat4 c~ c8[ fsharp!]( g)[ g](
	f)[ f]( eflat)[ eflat]( d)[ aflat]( g-.[ f-.])
	f4 f~ f8[ g bflat eflat]
	e,!4 e~ e8[ fsharp! a d]
	r8 f,\f f4 fsharp8 r r4
	R1
	r2 r4 \tuplet 3/2 { < d' fsharp >8\f[ < d fsharp > < d fsharp >] }
	r2 r4 \tuplet 3/2 { < d fsharp >8[ < d fsharp > < d fsharp >] }
	r8 < dsharp fsharp > r4 r8 e r4
	r8 < d! f >8 r4 r8 < c f! >8 r4
	
	R1*4
	
	csharp4\mf d a a
	a\< < a fsharp' > fsharp'16[( g a fsharp]) e8[ esharp]\!
	fsharp8 r r4 r2
	
	R1*3
	
	r8\pp fsharp,16_\markup { \italic {poco a poco cresc.}} r g[ r esharp] r
		fsharp[ r fsharp r g r esharp] r
	fsharp[ r fsharp r g r gsharp] r e[ r fsharp r g r gsharp] r
	e[ r fsharp r fsharp r g] r csharp[ r a r a r b] r
	< e, g >[\< r < e g > r < e g > r < e g >]\! r < d b' >2\f\>
	< e g >16[ r\mf\! < e g > r < e g > r < e g >] r < d bflat' >2\f\>
	< g d' >16[ r\mf\! < g e' > r < g d' > r < g e' >] r < bflat d >2\f\>
	< bflat d >16[ r\mf\! < bflat d > r < bflat d > r < bflat d >] r aflat2\f\>
	< aflat aflat' >8[\! < aflat aflat' > < aflat aflat' > < aflat aflat' >] < aflat aflat' >2\f
	< csharp! g'! >8\mf[ < csharp g' >] r < csharp g' >[ < csharp g' > < csharp g' >] r < csharp g' >
	< d bflat' >8[ < d bflat' >] r < d bflat' >[ < d bflat' > < d bflat' >] r < d bflat' >
	< d g >8[ < d g >] r < d g >[ < d g > < d g >] r < d g >
	< d b'! >[ < d b' >] r < d b' >[ < d b' > < d b' >] r < d b' >
	
	R1*4
	
	< d, a' fsharp' d' >8\f r a'\p r asharp r b r
	b_\cr r b r a r a r
	a r a r a r a r
	bflat r r4 r bflat8\f[ b]
	a r r4 r a8[ a]
	g r r4 r g8[ g]
	f r r fsharp e r r e
	d r < a' d >2 r4
	d,8 r < a' d >2 r4
	aflat'8[ aflat~ aflat aflat]~ aflat[ aflat~ aflat aflat]
	eflat\f[ e->] d[ f->] eflat[ e->] d[ f->]
	eflat8 eflat4 eflat eflat eflat8
	< b f' >8 < b f' >4 < b f' > < b f' > < b f' >8
	< a fsharp'! >\ff[ c\p](^\< b[ a]) gsharp[( g] fsharp[ e])
	d4( e8)[ esharp]^\! fsharp8 r e\f r
	d'[(^\< c] b[ a]) gsharp[( g] fsharp[ e])
	d4( e8)[ esharp]^\! fsharp8 r esharp!\f r
	g r r4 r8 csharp\ff[ csharp csharp]
	< g g' > r r4 r8 csharp[ csharp csharp]
	< g g' > r r csharp < g g' > r r csharp
	< g g' > r r < d' bflat' > < d b' > r r < d b' >
	< d a' >\ff[ < d d' >]~ < d d' >[ < d d' >]~ < d d' > < d d' >:16[ < d d' >: < d d' >:]
	< d d' >[ < d d' >]~ < d d' >[ < d d' >]~ < d d' > < d d' >:16[ < d d' >: < d d' >:]
	< d d' > d4 e8 d csharp4 d8
	d b4 g8 bflat-> r r < g' a >
	< fsharp a > < d d' >4 < d d' >8~ < d d' > < d d' >:16[ < d d' >: < d d' >:]
	< d d' >8[ < d d' >]~ < d d' >[ < d d' >]~ < d d' > < d d' >:16[ < d d' >: < d d' >:]
	< d d' >8 d4 e8 d csharp4 d8
	d b4 g8 bflat-> r r < g' a >
	< fsharp a >8 r < b, d > r < a d > r < a fsharp' a > r
	< a fsharp' a > r < b d > r < a d > r < a fsharp' a > r
	< a fsharp' a > r < b fsharp' > r < a fsharp' a > r < b fsharp' > r
	< a fsharp' a > r < b fsharp' > r < a fsharp' a > r < b fsharp' > r
	< a fsharp' a >[ fsharp < a d > < a d >] < a fsharp' >[ < a fsharp' > < a fsharp' > < a fsharp' >]
	< a fsharp' >4 < a fsharp' > < a fsharp' > < a fsharp' >
	fsharp1\fermata
}
