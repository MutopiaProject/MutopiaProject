\version "2.18.2"

theClarinets =  \relative a' {
	\transposition a'
	
	\clef "treble"
	\key f \major
	
	r1
	
	R1*5
	
	r2 r4 < d f >\p
	< g, e' > < d' f > < g, e' >2
	
	R1*5
	
	<< { bflat,1\mf\< } \\ { R1 } >>
	<< { c'4\f\! aflat8( g f4) aflat8( c) } \\ { aflat,1 } >>
	<< { d'2 } \\ { aflat2 } >> r2
	<< { d2 } \\ { aflat2 } >> r2
	<< { d4 } \\ { aflat4\ff } >> r4 << { d4 } \\ { aflat4 } >> r4
	< aflat aflat' >8[ < aflat aflat' >8 < aflat aflat' >8 < aflat aflat' >8] < aflat aflat' >2:8
	< g g' >8 << { g'8[( g]) c,[( dflat]) aflat[( aflat]) } \\
		{ dflat\f[( c]) bflat[( aflat]) gflat[( f]) } >> r8
	r8 << { g'8[( g]) c,[( dflat]) aflat[( aflat]) } \\
		{ dflat\mf[( c]) bflat[( aflat]) gflat[( f]) } >> r8
	
	R1*35
	
	r4 < aflat dflat >4\f~ < aflat dflat >8 r r4
	r4 < aflat d! >4~ < aflat d >8 r r4
	< eflat eflat' >8\f[ < f f' >16. < g g' >32] < eflat eflat' >8[ < f f' >16. < g g' >32]
		< eflat eflat' >8 r r4
	< eflat eflat' >8[ < f f' >16. < g g' >32] < eflat eflat' >8[ < f f' >16. < g g' >32]
		< eflat eflat' >8 r r4
	< eflat eflat' >8[ < f f' >16. < gflat gflat' >32] < eflat eflat' >8 r
		<< { f'8[ g16. aflat32] g8 } \\ { f8[ f16. f32] f8 } >> r8
	<< { g8[ aflat16. bflat32] aflat8 } \\ { f8[ f16. f32] f8 } >> r8
		< eflat b' >8[ < eflat c' >16. < eflat d' >32] < eflat c' >8 r
	<< { e8 } \\ { e8\ff } >> r8 << { eflat8 } \\ { eflat8 } >> r
		<< { d4-> } \\ { d4-> } >> r4
	<< { e8 } \\ { e8 } >> r8 << { eflat8 } \\ { eflat8 } >> r
		<< { d4-> } \\ { d4-> } >> r4
		
	R1*16
		
	<< { r2 \tuplet 3/2 { r8 g^\mf^>[~ g]~( } \tuplet 3/2 { g8[ \tuplet 3/2 { g16 e c } \tuplet 3/2 { g e c] } } } \\ { R1 } >>
	<< { g8) r r4 \tuplet 3/2 { r8 a''^>[~ a]~ } \tuplet 3/2 { a8[ \tuplet 3/2 { a16( f d } \tuplet 3/2 { a f d] } } } \\ { R1 } >>
	<< { a8) } \\ { s8 } >> r8 r4 r2
	
	R1*2
	
	< d f >2_\markup { \dynamic pp \italic {poco cresc.} } < eflat a >
	<< { g4 f g aflat } \\ { dflat, d e! f } >>
	<< { dflat'2~ dflat8 } \\ { g,2\mf~ g8 } >> r8 r4
	\tuplet 3/2 { r16^\markup {I. Solo.} f\f[( aflat } \tuplet 3/2 { dflat f aflat] } dflat8) r8 r2
	R1
	\tuplet 3/2 { r16 f,,[( aflat } \tuplet 3/2 { dflat f aflat] } dflat8) r8 r2
	
	R1*5
	
	r2 r4 \tuplet 3/2 { < e, c' >8\f[ < e c' > < e c' >] }
	r2 r4 \tuplet 3/2 { < e c' >8[ < e c' > < e c' >] }
	r8 < e csharp' > r4 r8 < d d' > r4
	r8 < eflat c'! > r4 r8 < eflat bflat' > r4
	<< { aflat2^\fp a } \\ { R1 } >>
	<< { g2 g } \\ { R1 } >>
	<< { f4 g aflat~ aflat8 } \\ { R1 } >>
	<< { f4 g aflat~ aflat8 } \\ { R1 } >>
	
	R1*2
	
	< g, e' >16\pp[ r < a e' > r < a f' > r < b fsharp' >] r c16[ r < a e' > r < a f' > r < b fsharp' >] r
	c[ r < g e' > r < f d' > r < f d' >] r < e c' >[ r < e c' >] r < fsharp c' >4->
	< g e' >16\pp[ r < a e' > r < a f' > r < b fsharp' >] r c16[ r < a e' > r < a f' > r < b fsharp' >] r
	c[ r < g e' > r < f d' > r < f d' >] r < e c' >[ r < e c' >] r < fsharp c' >4->
	< g d' >16\pp r r8 r4 r2
	R1
	<< { r8 b16[\< r c r c] r d[ r d r e r e] r } \\ { R1 } >>
	<< { f16[ r f r f r f]\! r a8 } \\ { r2 c,8\f } >> r8 r4
	<< { f16\mf[ r f r f r f] r aflat8 } \\ { r2 c,8\f } >> r8 r4
	<< { c16\mf[ r d r c r d] r eflat8 } \\ { c16[ s c s c s c] s c8\f } >> r8 r4
	< c eflat >16\mf[ r < c f > r < c eflat > r < c f >] r < cflat gflat' >8->\f r r4
	<< { gflat'16\mf[ r aflat r gflat r aflat] r a8 } \\ { cflat,16[ s cflat s cflat s cflat] s c8\f } >> r8 r4
	<< { g'!8\f } \\ { f8 } >> r8 r4 r2
	<< { aflat8 } \\ { f8 } >> r8 r4 r2
	< f c' >8 r r4 r2
	< a c >8 r r4 r2
	r8 < a,, c >\mf~_\markup { \translate #(cons 4 -1) \italic cresc. } < a c >4 r8 < a c >8~ < a c >4
	r8 < a c >8~ < a c >4 r8 < a c >8~ < a c >4
	r8 < a c > r < a c > r < a c > r < a c >
	< c' dsharp >8\f[\< < c dsharp > < c dsharp > < c dsharp >] < c dsharp >[ < c dsharp > < c dsharp > < c dsharp >]\!
	< c e >8\ff[ \tuplet 3/2 { < c e >16 < c e > < c e >] } < c e >8[ < c e >] < c e >[ < c e > < c e > < c e >]
	< b d >8[ \tuplet 3/2 { < b d >16 < b d > < b d >] } < b d >8[ < asharp csharp >] < b d >[ < b d >] r < csharp! e >
	< d f >8[ \tuplet 3/2 { < d f >16 < d f > < d f >] } < d f >8[ < d f >] < d f >[ < d f > < d f > < d f >]
	< csharp e >[ \tuplet 3/2 { < csharp e >16 < csharp e > < csharp e >] } < csharp e >8[ < bsharp dsharp >]
		< csharp e >[ < csharp e >] r < csharp e >
	< c! f > r r4 < c g' >8 r r4
	< f, a >8 r r4 < e a >8 r r4
	< f a >8 r r4 < d a' >8 r < gsharp b > r
	< f a > r r4 < d a' >8 r < g b > r
	< c e >8\ff[ \tuplet 3/2 { < c e >16 < c e > < c e >] } < c e >8[ < c e >] < c e >[ < c e > < c e > < c e >]
	< b d >8[ \tuplet 3/2 { < b d >16 < b d > < b d >] } < b d >8[ < asharp csharp >] < b d >[ < b d >] r < csharp! e >
	< d f >8[ \tuplet 3/2 { < d f >16 < d f > < d f >] } < d f >8[ < d f >] < d f >[ < d f > < d f > < d f >]
	< csharp e >[ \tuplet 3/2 { < csharp e >16 < csharp e > < csharp e >] } < csharp e >8[ < bsharp dsharp >]
		< csharp e >[ < csharp e >] r < csharp e >
	< c! f > r r4 < c g' >8 r r4
	< f, a >8 r r4 < e a >8 r r4
	<< { fsharp8 r r d'!^>^\p( dsharp) r r4 } \\ { dsharp,8 r r4 r2 } >>
	r2 r4 << { e4 } \\ { e4\p\< } >>
	<< { fsharp8 r r d'!^>^\p( dsharp) r r4 } \\ { dsharp,8\mf\! r r4 r2 } >>
	r2 r4 << { s4 } \\ { \stemUp < g, e' >\p\< } >>
	<< { e'8 r r fsharp'^>( g) r r4 } \\ { csharp,,8\mf\! r r4 r2 } >>
	<< { r4 r8 fsharp'^>( g) r r4 } \\ { R1 } >>
	<< { r4 r8 b^>( c) r r dsharp,,( } \\ { r2 r4 r8 b~ } >>
	<< { e8) r r g'!^>( gsharp) r r gsharp,( } \\ { b,8 r r4 r r8 gsharp'( } >>
	<< { a8) } \\ { a8) } >> r8 r < d, fsharp >( < d g >) < g g' >4 < e' c' >8\f(
	< f! c' >) r8 << { r8 aflat,^>^\p( a) r r4 } \\ { r4 r2 } >>
	r2 r4 << { bflat'4 } \\ { bflat4\p\< } >>
	<< { c8 r r aflat,^>^\p( a) r r4 } \\ { a'8\mf\! r r4 r2 } >>
	r2 r4 << { bflat4^>^\< } \\ { dflat,4 } >>
	<< { bflat'8^\mf^\! r r c,^>^\mf( dflat)[ dflat]~ dflat r } \\ { g8 r r4 r8 dflat,\mf~ dflat r } >>
	<< { r4 r8 c'8^>( dflat)[ dflat]~ dflat r } \\ { r2 r8 dflat,~ dflat r } >>
	<< { r4 r8 f^>( gflat) r r a,( } \\ { r2 r4 r8 f~ } >>
	<< { bflat8) r r dflat^>( d) } \\ { f,8 s4 dflat'8_>( d) } >> r8 r4
	r4 r8 << { c8( dflat) r r bflat'( } \\ { aflat,8~_\cr aflat s4 gflat'8~ } >>
	<< { cflat8) r r gsharp( a!) } \\ { gflat8 s4 e!8~ e } >> r r < d fsharp >8(
	< d g >\ff) r < d g >2\mf < d g >8 r
	< f aflat >8\f r < f aflat >2\mf\> < f aflat >8\! r
	
	R1*14
	
	<< { r2 r8 fsharp8^\p[^( a d] } \\ { R1 } >>
	<< { g8^) r r4 r2 } \\ { R1 } >>
	<< { r2 r8 fsharp,8[^( a d] } \\ { R1 } >>
	<< { g8^) r r4 r2 } \\ { R1 } >>
	<< { r2 r8 e,[^( g c] } \\ { R1 } >>
	<< { f8^) r r4 r2 } \\ { R1 } >>
	<< { r2 r8 e,[^( g c] } \\ { R1 } >>
	<< { f8^) r r4 r2 } \\ { R1 } >>
	r2 < f, d' >\p_\markup { \translate #(cons 4 -1) \italic cresc. }
	r < f d' > < f d' >\< < f d' >
	< g d' > < aflat d >4\! < b aflat' >
	< c aflat' >8\ff[ \tuplet 3/2 { < aflat, c >16 < aflat c > < aflat c >] } < aflat c >8 < aflat c > < aflat c >
		< aflat c > < aflat c > < aflat c >
	< g bflat >8[ \tuplet 3/2 { < g bflat >16 < g bflat > < g bflat >] } < g bflat >8 < fsharp a! > < g bflat > < g bflat > r < a! c >
	r8 \tuplet 3/2 { < bflat dflat >16[ < bflat dflat > < bflat dflat >] } < bflat dflat >8 < bflat dflat >
		< bflat dflat > < bflat dflat > < bflat dflat > < bflat dflat >
	< a c >8[ \tuplet 3/2 { < a c >16 < a c > < a c >] } < a c >8 < gsharp b > < a c > < a c > r < a c >
	< aflat dflat >8 r r4 < aflat eflat' >8 r r4
	< bflat dflat >8 r r4 < c f >8 r r4
	< gflat' dflat' >8 r < aflat dflat >8 r < gflat eflat' > r < bflat, bflat' > r
	< e! c' >\ff r < e, g >4( < f aflat > < fsharp a >
	< g bflat >8) r r4 r r8 << { b'8 } \\ { b8 } >>
	<< { c8 } \\ { c8 } >> r8 < e,, g >4( < f aflat > < fsharp a >
	< g bflat >8) r r4 r r8 << { b'8 } \\ { b8 } >>
	<< { c8 } \\ { c8 } >> r8 < f,,! aflat >4( < fsharp a > < g bflat >
	< gsharp b >8) r8 r4 << { r8 bflat'!8~ bflat[ aflat'] } \\ { r4 r8 d, } >>
	< eflat gflat >8 r  < fsharp,, a >4( < g! bflat! > < gsharp b >
	< a c >8) r r < dflat g >4 < d aflat' > << { eflat8 } \\ { eflat8 } >>
	<< { e8 } \\ { e!8 } >> r8 < bflat' c >4 < b d > < c eflat >
	< dflat e! > < d f > < eflat fsharp > < e g >
	< f aflat >8\ff r < f, d' > r < f d' > r < f d' > r
	< f d' > r < f d' > r < f d' > r < f d' > r
	< g c > r r4 r2
	< f d' >8 r < f d' > r < f d' > r < f d' > r
	< g c > r r4 r2
	< f d' >8 r < f d' > r < f d' > r < f d' > r
	< g c > r r4 r2
	
	s1*46
	
	s1*11
	
	< c, a' >1\pp
	< c c' >2._\cr < c a' >4
	< bflat bflat' >1
	< a g' >2 < a fsharp' >
	< g f'! > < g e' >
	< f eflat' > < f d' >
	< bflat eflat > < bflat e >
	< bflat f' >8\mf r r4 r2
	
	R1*11
	
	< aflat' f' >8\f[ < bflat f' >16. < c f >32] < aflat f' >8[ < bflat f' >16. < c f >32] < aflat gflat' >8 r r4
	< aflat f' >8[ < bflat f' >16. < c f >32] < aflat f' >8[ < bflat f' >16. < c f >32] < aflat gflat' >8 r r4
	<< { f'8[ f16. f32] f8 } \\ { aflat,8[_\cr bflat16. cflat32] bflat8 } >> r8
		< bflat bflat' >8[ < c bflat' >16. < dflat bflat' >32] < c bflat' >8 r
	< c bflat' >8[ < dflat bflat' >16. < eflat bflat' >32] < dflat bflat' >8 r
		<< { e8[ f16. g32] f8 } \\ { aflat,8[ aflat16. aflat32] aflat8 } >> r
	< f' a! >8\ff r < f aflat > r << { g4^> } \\ { f8[( e]) } >> r4
	< f a! >8 r < f aflat > r << { g4^> } \\ { f8[( e]) } >> r4
	
	R1*14
	<< { fsharp,2(^\markup { \dynamic pp \italic cresc. } g } \\ { d1~ } >>
	<< { a'2 gsharp) } \\ { d2 e } >>
	< f a >2._\cr < fsharp a >4
	<< { \tuplet 3/2 { bflat16[( bflat, dflat } \tuplet 3/2 { gflat! bflat dflat] } gflat8) r8 r4 r4 } \\
		{ gflat,8\f r r4 r2 } >>
	R1
	<< { \tuplet 3/2 { r16 bflat,\f[( dflat } \tuplet 3/2 { gflat bflat dflat] } gflat8) r8 r4 r4 } \\ { R1 } >>
	R1
	<< { \tuplet 3/2 { r16\f aflat,,[( cflat } \tuplet 3/2 { gflat' aflat cflat] } f!8) r r4 r4 } \\ { R1 } >>
	<< { \tuplet 3/2 { r16 g,,[( bflat } \tuplet 3/2 { f' g bflat] } e8) r8 r4 r4 } \\ { R1 } >>
	
	R1*2
	
	r2 r4 \tuplet 3/2 { < f a >8\f[ < f a > < f a >] }
	r2 r4 \tuplet 3/2 { < f a >8[ < f a > < f a >] }
	r8 < fsharp a > r4 r8 < c g' > r4
	r8 < f! aflat > r4 r8 < eflat aflat! > r4
	r8 < dflat aflat' >4->\pp < dflat aflat' >8 r8 < d g >4-> < d g >8
	r8 < c g' >4-> < c g' >8 r < c f >4-> < c f >8
	r8\< < bflat f' >8 r < c f > r < dflat f >~ < dflat f >\! r
	r8\< < bflat f' >8 r < c f > r < dflat f >~ < dflat f >\! r
	
	R1*2
	
	< f, c' >16\pp[ r < fsharp d' > r < g d' > r < gsharp e' >] r << { a16[ r d r d r e] r } \\ { a,16[ s fsharp s g s gsharp] s } >>
	<< { a16[ r a r g r g] } \\ { a16[ s c, s bflat s bflat] } >> r16 < a f' >[ r < d a' >] r < d b' >4^>
	< e c' >16[ r < fsharp d' > r < g! d' > r < gsharp e' >] r << { a16[ r d r d r e] r } \\ { a,16[ s fsharp s g s gsharp] s } >>
	<< { a16[ r a r g r g] } \\ { a16[ s c, s bflat s bflat] } >> r16 < a f' >[ r < d a' >] r < d b' >4^>
	< e c' >16 r r8 r4 r2
	
	R1*2
	
	r2 < f d' >8\f r r4
	r2 < f dflat' >8\f r r4
	r2 < aflat f' >8 r r4
	r2 < b e! >8\f r r4
	r2 < b b' >8\f r r4
	< bflat! bflat'! >8\f r r4 < bflat bflat' >8 r r4
	< bflat bflat' >8 r r4 < bflat bflat' >8 r r4
	< g' bflat >8 < g bflat > r < g bflat >[ < g bflat > < g bflat >] r < g bflat >
	< f d' >[ < f d' >] r < f d' >[ < f d' > < f d' >] r < f d' >
	r8 < bflat, f' >\mf~ < bflat f' >4_\cr r8 < bflat f' >8~ < bflat f' >4
	r8 < bflat f' >8~ < bflat f' >4 r8 < bflat f' >8~ < bflat f' >4
	r8 < bflat f' > r < bflat f' > r < bflat f' > r < bflat f' >
	< bflat f' >2:8 < bflat f' >2:
	< c a' >8\f r r4 r2
	
	R1*2
	
	r4 < dflat aflat' >2\f r4
	r < c g' >2 r4
	r < bflat f' >2 r4
	r4 < eflat, aflat >8[ < d fsharp >] < d g > r < d g >[ < c eflat >]
	< c f! > r r4 r2
	< c f >8 r r4 r2
	< cflat f >8 r r4 r2
	< dflat gflat >8\f r < c f > r < dflat gflat > r < c f > r
	< dflat gflat >1
	< f aflat' >1
	< f a'! >8\ff r r4 r2
	
	R1*3
	
	r8 < c' e >\f[ < dflat f > < c e >] < dflat f >[ < c e >\ff < c e > < c e >]
	< dflat f >[ < c e >\f < dflat f > < c e >] < dflat f >[ < c e >\ff < c e > < c e >]
	< dflat f >[ < c e >\f < dflat f > < c e >\ff] < dflat f >[ < c e >\f < dflat f > < c e >\ff]
	< dflat f >[ < c e > < dflat f > < dflat g >] < d gsharp >[ < bflat d > < bflat d > < d gsharp >]
	< c a' >\ff < f, f' >4 < f f' >8~ < f f' >[ < g g' > < a a' > < bflat bflat' >]
	< c c' > < f, f' >4 < f f' >8~ < f f' >[ < g g' > < a a' > < bflat bflat' >]
	< c c' > << { f4 g8 f e4 f8 } \\ { gsharp,,8[ a bflat] b[ c csharp d] } >>
	<< { e'8 d4 bflat8 dflat8^> r r c } \\ { e,8[ f fsharp g] gflat_> s s bflat } >>
	<< { c8 } \\ { a8 } >> < f f' >4 < f f' >8~ < f f' >[ < g g' > < a a' > < bflat bflat' >]
	< c c' > < f, f' >4 < f f' >8~ < f f' >[ < g g' > < a a' > < bflat bflat' >]
	< c c' > << { f4 g8 f e4 f8 } \\ { gsharp,,8[ a bflat] b[ c csharp d] } >>
	<< { e'8 d4 bflat8 dflat8^> r r c } \\ { e,8[ f fsharp g] gflat_> s s bflat } >>
	< a c >8 r < a f' > r < c a' > r < c a' > r
	< c a' > r < a f' > r < c a' > r < c a' > r
	< c a' > r < d a' > r < c a' > r < d a' > r
	< c a' > r < d a' > r < c a' > r < d a' > r
	< a a' >[ < a, f' > < f' a > < f c' >] < a f' >[ < a f' > < c f > < c f >]
	< c f >4 < c f > < c f > < c f >
	< a, c >1\fermata
}
