\version "2.18.2"

theCellos =  \relative c {
	\clef "bass"
	\key d \major
	
	r1
	R1
	
	r2 r4 d\p
	csharp d a r
	R1
	r4 a( b csharp)
	r4 b r2
	R1
	a2:8\p a2:
	a2: a2:_\cr
	a2: a2:
	a2: a2:
	a2: a2:
	a2:\mf a2:
	a2:\< a2:
	a2:\f\! a2:
	a2: a2:
	a4\ff r a r
	a2: a2:
	a8 r r4 r r8 e'8\f(
	< e a >) r r4 r4 r8 e8\mf(
	< e a >) r r e8\p( < e a >) r r e(
	< e a >) r r4 r2
	
	R1*3
	
	r2 r8 r4\fermata r8
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a,8[^\markup { pizz. } d, a' d] a' r r4
	a,8[ d, a' d] a' r r4
	g,8[ d g d'] g r r4
	g,8[ d g d'] fsharp r
		\set Staff.midiInstrument = #"string ensemble 1"
		fsharp^\markup { arco } r
	csharp r a r d r fsharp r
	csharp r a r d r csharp4
	b e d2
	csharp4\< b( a8)\! r8 r4
	
	R1*5
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a8\p[^\markup { pizz. } a d a'] d r a, r
	a8[ a e' a] e' r a,, r
	g[ g] d'[ g] d' r g,, r
	< a d >[ a] d r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		fsharp8^\markup {arco} r
	csharp r a r d r fsharp r
	csharp r a r d r d\< r
	dsharp\! r e r e r r4
	e8 r r4 r2
	R1
	r8 a,\pp r a r a r a
	r a r a r a r a
	r a r a r a r a
	r a r a r a r a
	r asharp_\cr r b r csharp r d
	r dsharp r e r fsharp r g
	r gsharp r a r b r c
	d\f r d,4~ d8 r8 r4
	dflat'8 r dflat,4~ dflat8 r r4
	c8\f r c r c r r4
	c8 r c r c r r4
	< f a >8[ < f a >16. < f a >32] < fsharp a >8 r d'8[ e16. f32] e8 r
	a,8[ a16. a32] gsharp8 r c8[ c16. c32] c8 r
	< e, a >8\ff r < e a > r < e a >8->[( gsharp]) r4
	< e a >8 r < e a > r < e a >8->[( gsharp]) r4
	r8 \noDynamic e\mf_\markup { \italic dim. } r4 r8 e r4
	e8 r r4 r2
	
	R1*2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e4\pp^\markup { pizz. } r e r
	e r e r
	e r d r
	csharp r d r
	dsharp r e r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d!4(\<^\markup { arco } csharp)\! csharp8(\> b gsharp4)\!
	r2 a8\pp[( csharp e a])
	g!4( fsharp8 e) d[( csharp d fsharp])
	e2_\markup { \italic {poco cresc.} } d
	d d
	csharp b
	dsharp e4~ e8 r
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e4\p^\markup { pizz. } r e r
	e r d r
	csharp r b r
	a_\markup { \italic {poco a poco cresc.} } r gsharp r
	g! r fsharp r
	f' r eflat r
	csharp! b! asharp gsharp
	fsharp\mf r
		\set Staff.midiInstrument = #"string ensemble 1"
		fsharp'2^\markup {arco}
	f4\mf f4~ f8[ f-.]( f-.[ f-.])
	f-.[( f-.]) f-.[( f-.]) f-.[( fsharp-.]) g-.[( gflat-.])
	f4 f4~ f8[ f-.]( f-.[ f-.])
	f-.[( f-.]) f-.[( f-.]) f-.[( fsharp-.]) g-.[( g-.])
	r8 gflat4 f r8 r4
	r8 f4 e! r8 r4
	r8 dsharp8 dsharp4 e8 r r4
	R1
	r2 r4 \tuplet 3/2 { e8\f[ e e] }
	r2 r4 \tuplet 3/2 { fsharp8[ fsharp fsharp] }
	r8 fsharpsharp r4 r8 gsharp r4
	r8 a r4 r8 bflat r4
	a8\f r r4 a8\p r r4
	gsharp8 r r4 g8 r r4
	f8 r e r d r r4
	f8 r e r d r r4
	d4_\markup { \italic {poco cresc.} } c b a
	gsharp g fsharp fsharp'8 f
	e\mf r r4 r2
	
	R1*3
	
	r8 e16\pp[_\markup { \translate #(cons 4 -1) \italic {poco a poco cresc.} } r e r e]
		r e[ r e r e r e] r
	e[ r < e a > r < e a > r e] r e[ r < e a > r < e a > r e] r
	e[ r e r e r e] r e[ r e r e r e] r
	e\mf[ r e r e r e] r d2\f\>
	e16\mf[\! r e r e r e] r d2\f
	d'16\mf[ r d r d r d] r c2\f\>
	c16\mf[\! r c r c r c] r c2\f\>
	c16\mf[\! r c r c r c] r b2\f
	e8\mf e r e[ e e] r e
	f f r f[ f f] r f
	f, f r f[ f f] r f
	< d bsharp' > < d bsharp' > r < d bsharp' >[ < d bsharp' > < d bsharp' >] r < d bsharp' >
	
	R1*4
	
	< a e' csharp' >8\ff r8 csharp'2 b16[( a csharp e])
	e,4 r d csharp
	b8 r d'2 csharp16[( b d fsharp]) fsharp,4 r8 d'8( csharp) r e,4
	d8 r r4 csharp8 r r4
	< b fsharp' d' >8 r r4 < a fsharp' csharp' >8 r r4
	gsharp8 r r4 d'8 r csharp r
	gsharp8 r r4 d'8 r e r
	< a, e' csharp' >8\ff r8 csharp'2 b16[( a csharp e])
	e,4 r d csharp
	b8 r d'2 csharp16[( b d fsharp]) fsharp,4 r8 d'8( csharp) r e,4
	d8 r r4 csharp8 r r4
	< b fsharp' d' >8 r r4 < a fsharp' csharp' >8 r r4
	gsharp8 r r4 r8 dsharp'16\p[( e] fsharp8)[ asharp,16( bsharp]
	csharp8)[ e16( dsharp] e8)[ b16( asharp] csharp8)[\< gsharp a! fsharpsharp]\!
	
	gsharp8\mf r r4 r8 dsharp'16\p[( e] fsharp8)[ asharp,16( bsharp]
	csharp8)[ e16( dsharp] e8)[ csharp16( bsharp] csharp8)[\< gsharp a! gsharp]\!
	fsharpsharp8\mf r r gsharp'8~ gsharp[ asharp,16( b] csharp8)[ asharp16( gsharp]
	fsharpsharp8) r r gsharp'8~ gsharp[ asharp,16( b] csharp8)[ asharp16( gsharp]
	fsharpsharp8)[ dsharp'']~ dsharp r r fsharp,!16[( gsharp] a!8)[ gsharp16( fsharp]
	esharp8)[ csharp']~ csharp r8 r b,16[( csharp] d!8)[ csharp16( b]
	a!8) a'16[( b] c8)[\< b16( a] g!8)[ g16( a] bflat8)[ a16( g]\!
	fsharp8\mf) r8 r4 r8 a,16\p[( bflat] c8)[ e16( fsharp]
	g8)[ bflat16(\< a] bflat8)[ g16( fsharp] g8)[ d] eflat[ csharp]\!
	d8\mf r8 r4 r8 a16\p[( bflat] c8)[ e16( fsharp]
	g8)[ bflat16(\< a] bflat8)[ g16( fsharp] g8)[ d] eflat[ d]\!
	csharp8\mf r8 r4 r8 e16[( fsharp] g8)[ e16( d]
	csharp8) r r4 r8 e16[( fsharp] g8)[ e16( d]
	csharp8)[ a']~ a r r8 c,16[( d] eflat8)[ d16( c]
	b8)[ g'8]~ g r r8 f16[(_\cr g] aflat8)[ g16( f]
	eflat8)[ eflat16( f] gflat8)[ f16( eflat] d8)[ dflat16( eflat!] fflat8)[ eflat16( dflat]
	c8)[ b!16( csharp] d8)[ csharp16( b] a!8)[ a16( b] c8)[ b16( a]
	gsharp8\ff) r r4 r2
	< g! g'! >8\f r r4 r2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	csharp8\pp^\markup {pizz.} r csharp r r4 c'8 r
	g r < g, d' > r r4 e'8 r
	d r d r r4 d'8 r
	a r a, r r4 g'8 r
	f r f r e r e r d r d r c r c r
	b\p r r4 e8 r r4
	b8 r r4 e8 r d\pp r
	c r c r r4 c'8 r
	g r < g, d' > r r4 e'8 r
	d r d r r4 d'8 r
	a r a r r4 g8 r
	f r f r e r e r
	d r d r c r c r
	b r r4 b8 r r4
	b8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		b2^\markup {arco}
	b8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		b8^\markup {pizz.} r r4
	b8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		b2^\markup {arco}
	a8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		a8^\markup {pizz.} r r4
	< a d >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		a2^\markup {arco}
	a8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		a8^\markup {pizz.} r r4
	< a d >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		a2\<^\markup {arco}
	gsharp8\! r r4 r2
	
	R1*3
	
	< c, c' >4\ff r r2
	< c c' >4 r bflat' a
	g r r2
	d'4 r d c
	< bflat f' d' >8 r r4 < a f'! c' >8 r r4
	< g d' bflat' >8 r r4 < f d' a' >8 r f' r
	eflat r d r c r bflat r
	a\ff r csharp!4( d) dsharp(
	e8)[ a] bflat[ e,] f[ bflat,] b[ e,]
	a r csharp!4( d) dsharp(
	e8)[ a] bflat[ e,] f[ bflat,] b[ e,]
	a8 r d!4( dsharp) e(
	f8)[ b!] c[ f,] fsharp[ c] csharp[ gsharp]
	a r dsharp!4( e) esharp(
	fsharp!8)[ b!] c[ f,] g![ csharp,!] d![ gsharp,]
	a1~
	a~
	a8\ff r < a d a' >8 r < a d a' >8 r < a d a' >8 r
	< a d a' >8 r < a d a' >8 r < a d a' >8 r < a d a' >8 r
	< a d a' >8 r r4 r2
	< a d a' >8 r < a d a' >8 r < a d a' >8 r < a d a' >8 r
	< a d a' >8 r r4 r2
	< a d a' >8 r < a d a' >8 r < a d a' >8 r < a d a' >8 r
	< a d a' >8 r r4 r2
	
	s1*46
	
	\set Staff.midiInstrument = #"pizzicato strings"
	d8\pp[^\markup {pizz.} d,] a'[ d] a'[ d,] d r
	r d,[ a' e'] a[ d,] d r
	r d,[ g d'] g[ d] d r
	r d, a' r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		fsharp'8\pp^\markup {arco} r
	csharp r a r d r fsharp r
	csharp r_\markup { \italic {poco cresc.}} a r d r csharp4
	b e d2\<
	csharp4 b(\! a8) r r4
	
	R1*3
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a8\pp[^\markup {pizz.} a d a'] d r a, r
	a[ a] e'[ a] e'_\cr r a,, r
	b[ d] g[ b] d r b, r
	asharp4 r a r
	gsharp r g r
	fsharp r f r
	e e' eflat r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d2^\markup {arco}_\markup { \dynamic {mf} \italic {dim.} } d
	d2~\> d8\! r r4
	R1
	r8 d\pp r d r < d a' > r < d a' >
	r d r d r d-.[ d-. d-.]
	r d r d r < d a' > r < d a' >
	r d r d r d-.[ d-. d-.]
	r dsharp_\cr r e r fsharp r g
	r gsharp r a r b r c
	r csharp! r d r e r f
	g, r g4~ g8 r r4
	gflat8 r gflat4~ gflat8 r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	f8\f^\markup {pizz.} r r4 r2
	f8 r r4 r2
	f8_\cr r f r e r eflat r
	d r d r b r bflat r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< a fsharp' d' >8\ff^\markup {arco} r < a f' d' > r d'( csharp) r4
	< a, fsharp' d' >8 r < a f' d' > r d'( csharp) r4
	r8 a,8 r4 r8 a r4
	r8 a8~ a4~ a8 r r4
	
	R1*2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	a'4\pp^\markup {pizz.} r a r
	a r a r
	a\p r g r
	fsharp r g r
	gsharp r a r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	g!4(\<^\markup {arco} fsharp) e8[(\! d] csharp) r
	b4\pp a2.~
	a1
	a'2_\markup { \dynamic p \italic cresc. } g
	g g
	fsharp\pp e
	d csharp
	b4 b2_\cr b4
	bflat1\mf~
	bflat2~ bflat8[ b-.( c-. cflat-.])
	bflat1~
	bflat2~ bflat8[ b-.]( c-.[ c-.])
	r8 cflat4 bflat8~ bflat[ bflat bflat bflat]
	r8 bflat4 a!8~ a[ a a a]
	r8 < gsharp d' >8\f < d' b' >4 < d a' >8 r r4
	R1
	r2 r4 \tuplet 3/2 { a'8\f[ a a] }
	r2 r4 \tuplet 3/2 { b8[ b b] }
	r8 bsharp r4 r8 csharp8 r4
	r8 d, r4 r8 eflat r4
	d2\pp d
	csharp! c
	bflat4\< a g8[ g']~ g\! r
	bflat,4\< a g8[ g']~ g\! r
	g4\mf f e d
	csharp\< c b b'8[ bflat]\!
	a8 r r4 r2
	
	R1*3
	
	r8\pp dsharp,16_\markup { \italic {poco a poco cresc.}} r16  e[ r a,] r a[ r dsharp r e r a,] r
	a[ r a r a r a] r a[ r a r a r a] r
	a[ r a r a r a] r a[ r a r a r a] r
	a[\< r a r a r a]\! r < g g' >2\f\>
	a16[ r\mf\! a r a r a] r < g g' >2\f\>
	bflat'16[ r\mf\! bflat r bflat r bflat] r f2\f\>
	f16[ r\mf\! f r f r f] r f2\f\>
	f8[\! f f f] e2\f
	< e a >8\mf[ < e a >] r < e a >[ < eflat a > < eflat a >] r < eflat a >
	< d bflat' >[ < d bflat' >] r < d bflat' >[ < d bflat' > < d bflat' >] r < d bflat' >
	bflat[ bflat] r bflat[ bflat bflat] r bflat
	g[ g] r g[ g g] r g
	
	R1*4
	
	< d a' fsharp' d' >8\f r d'\p r csharp r b r
	a'_\cr r gsharp r g r fsharp r
	f r e r d r eflat r
	d r r4 r d8\f[ d]
	csharp r r4 r csharp8[ c]
	b r r4 r b8[ bflat]
	a r r a gsharp r r g
	fsharp r fsharp4 fsharp'8[( d a fsharp])
	f r f4 f'8[( d a f])
	f'8[ f~ f f]~ f[ f~ f f]
	g\f[ g->] fsharp![ aflat->] g[ g->] fsharp[ aflat->]
	g8 g4 g g g8
	gsharp8 gsharp4 gsharp gsharp gsharp,8
	<< { a1^> } \\ { s2\p s2_\cr } >>
	d8[(\< c] b)[ bflat]\! a r a\f r
	<< { a1\p } \\ { s2 s2_\cr } >>
	d8[(\< c] b)[ bflat]\! a r a\f r
	g r r4 r8 a'8\ff[ a a]
	g r r4 r8 a[ a a]
	g r r a g r r a
	g r r g g r r g
	d\ff[ d' csharp b] bflat4 a8[ g]
	fsharp[ d' csharp b!] bflat4 a8[ g]
	fsharp[ esharp fsharp g] gsharp[ a asharp b]
	csharp[ d dsharp e] eflat-> r r a,
	< d, a' >[ d' csharp b] bflat4 a8[ g]
	fsharp[ d' csharp b!] bflat4 a8[ g]
	fsharp[ esharp fsharp g] gsharp[ a asharp b]
	csharp[ d dsharp e] eflat-> r r a,
	< d, a' > r b' r a r < fsharp a > r
	< d a' > r b' r a r < fsharp a > r
	< d a' > r b r < d a' > r b r
	< d a' > r b r < d a' > r b r
	d[ d d d] d[ d d d]
	< d, a' fsharp' d' >4 < d a' fsharp' d' > < d a' fsharp' d' > < d a' fsharp' d' >
	d'1\fermata
}
