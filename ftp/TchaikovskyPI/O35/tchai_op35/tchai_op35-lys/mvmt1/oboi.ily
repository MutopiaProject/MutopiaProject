\version "2.18.2"

theOboes =  \relative d' {
	
	\clef "treble"
	\key d \major
	
	r1
	
	R1*5
	
	r2 r4 < fsharp fsharp' >\p
	< a e' > < gsharp e' > < a e' >2
	
	R1*2
	
	<< { a4^\mf^\<^\markup { \italic marcato } f8( e d4) f8( a } \\ { b,1\rest } >>
	<< { d'8)\! r8 r4 r2 } \\ { R1 } >>
	<< { e4(^\markup { \italic piu \dynamic f } csharp8 b a4) csharp8( e } \\ { R1 } >>
	<< { a8) r8 r4 r2 } \\ { R1 } >>
	< a, a' >4\f < f f' >8( < e e' > < d d' >4) < f f' >8( < a a' >)
	< f' b >2 r
	< f b > r
	< f b >4\ff r < f b > r
	< f b >8[ < f b > < f b > < f b >] < f b >2:8
	< e a >8 << { gsharp8[( a]) a[( bflat]) c,[( f]) } \\ { d8\f[( csharp]) csharp[( d]) a[( bflat]) } >> r8 
	r8 << { gsharp'8[( a]) a[( bflat]) c,[( f]) } \\ { d8\mf[( csharp]) csharp[( d]) a[( bflat]) } >> r8
	
	R1*35
	
	r4 < f' bflat >4\f~ < f bflat >8 r r4
	r4 < aflat, aflat' >4~ < aflat aflat' >8 r r4
	< f' a >8\f[ < f a >16. < f a >32] < f a >8[ < f a >16. < f a >32] < g bflat >8 r r4
	< f a >8[ < f a >16. < f a >32] < f a >8[ < f a >16. < f a >32] < g bflat >8 r r4
	< f a >8[ < f a >16. < f a >32] < fsharp a >8 r < g d' >8[ < g d' >16. < g d' >32] < gsharp d' >8 r
	< a d >8[ < a d >16. < a d >32] < b d >8 r < dsharp, c' >8[ < dsharp c' >16. < dsharp c' >32] < dsharp c' >8 r
	< a' csharp! >8\ff r < a c > r << { b4-> } \\ { a8_>[( gsharp]) } >> r4
	< a csharp! >8 r < a c > r << { b4-> } \\ { a8_>[( gsharp]) } >> r4
	
	R1*21
	
	gsharp,2_\markup { \dynamic pp \italic {poco cresc.} } a
	<< { bflat4 b csharp d } \\ { g,4\p gsharp g b } >>
	<< { e2~ e8 } \\ { csharp2\mf~ csharp8 } >> r8 r4
	
	R1*8
	
	r2 r4 \tuplet 3/2 { < csharp csharp' >8\f[ < d csharp' > < e csharp' >] }
	r2 r4 \tuplet 3/2 { < csharp csharp' >8[ < dsharp csharp' > < e csharp' >] }
	r8 < e csharp' > r4 r8 < e b' > r4
	r8 < e c' > r4 r8 < e c' > r4
	
	R1*6
	
	< a, e' >16\pp[^\markup { \huge {Piu mosso.} } r < asharp fsharp' > r < b fsharp' > r < bsharp gsharp' >] r
		< csharp e >[ r < asharp! fsharp' > r < b fsharp' > r < bsharp gsharp'! >] r
	< csharp e > r r8 r4 r8 < fsharp, csharp' >16 r < fsharp dsharp' >4^>
	< a e' >16\pp[ r < asharp! fsharp' > r < b fsharp' > r < bsharp gsharp'! >] r
		< csharp e >[ r < asharp fsharp' > r < b fsharp' > r < bsharp gsharp' >] r
	< csharp e > r r8 r4 r8 < fsharp, csharp' >16 r < fsharp dsharp' >4^>
	< gsharp e' >16\pp^\markup { \huge {Poco piu lento.} } r r8 r4 r2
	R1
	r8 < e csharp' >16\p[\< r < fsharp csharp' > r < fsharp d' >] r < gsharp d' >[ r < gsharp e' > r
		< a e' > r < a fsharp' >] r
	< b g' >[ r < b gsharp' > r < b fsharp' > r < b gsharp' >]\! r < d a' >8\f r r4
	< b g' >16\mf[ r < b gsharp' > r < b fsharp' > r < b gsharp' >] r < d a' >8\f r r4
	< f a >16\mf[ r < f a > r < f a > r < f a >] r < f a >8\f r r4
	< f a >16\mf[ r < f a > r < f a > r < f a >] r < eflat aflat >8->\f r r4
	< eflat aflat >16\mf[ r < eflat aflat > r < eflat aflat > r < eflat aflat >] r < dsharp a' >8 r r4
	
	% PIU MOSSO %
	
	< gsharp d'! >8\f r r4 r2
	< a d >8 r r4 r2
	< d, a' >8 r r4 r2
	< fsharp a >8 r r4 r2
	r8 < fsharp, bsharp >8\mf~_\markup { \translate #(cons 4 -1) \italic cresc. } < fsharp bsharp >4 r8
		< fsharp bsharp >8~ < fsharp bsharp >4
	r8 < fsharp bsharp >8~ < fsharp bsharp >4 r8 < fsharp bsharp >8~ < fsharp bsharp >4
	r8 < fsharp bsharp > r8 < fsharp bsharp > r8 < fsharp bsharp > r8 < fsharp bsharp >
	< fsharp' a >8\f[\< < fsharp a > < fsharp a > < fsharp a >] < fsharp a >[ < fsharp a >
		< fsharp a > < fsharp a >]\!
	< e a >8\ff[ \tuplet 3/2 { < csharp e >16 < csharp e > < csharp e >] } < csharp e >8[ < csharp e >]
		< csharp e >[ < csharp e > < csharp e > < csharp e >]
	< b e >8[ \tuplet 3/2 { < b e >16 < b e > < b e >] } < b e >8[ < asharp e' >] < b e >[ < b e >] r < csharp fsharp >
	< d fsharp >8[ \tuplet 3/2 { < d fsharp >16 < d fsharp > < d fsharp >] } < d fsharp >8[
		< d fsharp >] < d fsharp >[ < d fsharp >] < d fsharp >[ < d fsharp >]
	< csharp! fsharp >8[ \tuplet 3/2 { < csharp fsharp >16 < csharp fsharp > < csharp fsharp >] } < csharp e >8[
		< bsharp fsharp' >] < csharp fsharp >[ < csharp fsharp >] r < csharp fsharp >
	< d fsharp > r r4 < a e' >8 r r4
	< b d >8 r r4 < fsharp csharp' >8 r r4
	< b fsharp' >8 r r4 < b fsharp >8 r < csharp esharp > r
	< b fsharp > r r4 < b fsharp' >8 r < b e! > r
	< e a >8\ff[ \tuplet 3/2 { < csharp e >16 < csharp e > < csharp e >] } < csharp e >8[ < csharp e >]
		< csharp e >[ < csharp e > < csharp e > < csharp e >]
	< b e >8[ \tuplet 3/2 { < b e >16 < b e > < b e >] } < b e >8[ < asharp e' >] < b e >[ < b e >] r < csharp fsharp >
	< d fsharp >8[ \tuplet 3/2 { < d fsharp >16 < d fsharp > < d fsharp >] } < d fsharp >8[
		< d fsharp >] < d fsharp >[ < d fsharp >] < d fsharp >[ < d fsharp >]
	< csharp! fsharp >8[ \tuplet 3/2 { < csharp fsharp >16 < csharp fsharp > < csharp fsharp >] } < csharp e >8[
		< bsharp fsharp' >] < csharp fsharp >[ < csharp fsharp >] r < csharp fsharp >
	< d fsharp > r r4 < a e' >8 r r4
	< b d >8 r r4 < fsharp csharp' >8 r r4
	<< { bsharp8^\p[ gsharp'->]( a) r } \\ { gsharp,8 r r4 } >> r2
	r2 r4 << { csharp4 } \\ { csharp4\p\< } >>
	<< { dsharp8^\p[ gsharp->]( a) r } \\ { bsharp,8\mf\! r r4 } >> r2
	r2 r4 << { csharp4 } \\ { e,4\p\< } >>
	<< { csharp'8[ dsharp->]( e) r } \\ { asharp,8\mf\! r8 r4 } >> r2
	<< { r8 dsharp->[( e]) r r2 } \\ { R1 } >>
	<< { r8 csharpsharp->[( dsharp]) r r4 r8 bsharp8( } \\ { r2 r4 r8 gsharp8~ } >>
	<< { csharp!8)[ csharp->]( d!8) r r4 r } \\ { gsharp,8 r r4 r r } >>
	r4 r8 < b dsharp >8( < b e >) < e, e' >4 < csharp' a' >8\f(
	< d! a' >) << { d8->[( eflat) f->]( fsharp) r r4 } \\ { r8 r4 r2 } >>
	R1
	<< { d8->^\p[( eflat) f->]( fsharp) r r4 } \\ { R1 } >>
	R1
	<< { r8 a->^\mf[( bflat) a->]( bflat)[ d,]~ d r } \\ { r2 r8 g,\mf~ g r } >>
	<< { r8 a'->[( bflat) a->]( bflat)[ d,]~ d r } \\ { r2 r8 g,~ g r } >>
	<< { r8 gsharp->[( a) d->]( eflat) r r fsharp,( } \\ { r2 r4 r8 d8~ } >>
	<< { g8)[ g->]( aflat)[ bflat->]( b) r r4 } \\ { d,8 r r4 r2 } >>
	r4 r8 << { a'8( bflat) } \\ { f8~_\cr f } >> r8 r << { g'8( } \\ { eflat8~ } >>
	<< { aflat8) } \\ { eflat8 } >> r r < csharp! e >8( < csharp fsharp! >) r r < b! dsharp >(
	< b e! >\ff) r < b e >2\mf < b e >8 r
	< b d >8\f r < b d >2\mf\> < b d >8\! r
	
	R1*22
	
	r2 < f d' >\p_\markup { \translate #(cons 4 -1) \italic cresc. }
	r2 < f d' >
	< fsharp! d' >\< < gsharp d' >
	< gsharp e' > < gsharp f' >4\! < b gsharp' >
	< c a' >8\ff \tuplet 3/2 { < f, a >16[ < f a > < f a >] } < f a >8[ < f a >] < f a >[ < f a >] < f a >[ < f a >]
	< e g >[ \tuplet 3/2 { < e g >16 < e g > < e g >] } < e g >8[ < dsharp fsharp! >]
		< e g >[ < e g >] r < fsharp! a >
	r8 \tuplet 3/2 { < g bflat >16[ < g bflat > < g bflat >] } < g bflat >8[ < g bflat >] < g bflat >[ < g bflat >]
		< g bflat >[ < g bflat >]
	< fsharp a >8[ \tuplet 3/2 { < fsharp a >16 < fsharp a > < fsharp a >] } < fsharp a >8[ < esharp gsharp >]
		< fsharp a >[ < fsharp a >] r < fsharp a >
	< f bflat > r r4 < f c' >8 r r4
	< g bflat >8 r r4 < a d >8 r r4
	< g eflat' >8 r < bflat f' > r < g eflat' > r < g d' > r
	<< { csharp!8[ a] bflat r r4 c,8 } \\ { e8\ff r8 r4 r2 } >>
	<< { csharp8 g'4 gsharp gsharp e'8 } \\ { r8 e,4 d d d'8 } >>
	<< { e8[ a,] bflat r r4 r8 c, } \\ { csharp'8 r r4 r r } >>
	<< { csharp,!8 g'!4 gsharp gsharp e'8 } \\ { r8 e,4 d d d'8 } >>
	<< { e8[ bflat] b r r4 r8 csharp,! } \\ { csharp'8 r r4 r2 } >>
	<< { d,8 gsharp4 a bflat b'!8 } \\ { r8 f,4  dsharp e f'8 } >>
	<< { c'8 r r4 r } \\ { fsharp,!8[ b,] c r r4 } >> r8 d,!8
	<< { dsharp8 a'4 bflat b } \\ { r8 dsharp,4 e f } >> < bsharp bsharp' >8
	< csharp! csharp'! > r < g a >4 < gsharp b! > < a c >
	< bflat csharp! > < b d > < c eflat > < csharp e >
	< d f >8\ff r < d f >8 r < d f >8 r < d f >8 r
	< d f >8 r < d f >8 r < d f >8 r < d f >8 r
	< csharp e > r r4 r2
	< d f >8 r < d f >8 r < d f >8 r < d f >8 r
	< csharp e > r r4 r2
	< d f >8 r < d f >8 r < d f >8 r < d f >8 r
	< csharp e > r r4 r2
	
	s1*46
	
	s1*30
	
	< bflat f' >8\f[ < bflat g' >16. < bflat a' >32] < bflat f' >8[ < bflat g' >16. < bflat a' >32] < c f >8 r r4
	< bflat f' >8[ < bflat g' >16. < bflat a' >32] < bflat f' >8[ < bflat g' >16. < bflat a' >32] < c f >8 r r4
	< bflat f' >8[_\cr < bflat g' >16. < bflat aflat' >32] < b g' >8 r < c g' >8[ < c a' >16. < c bflat' >32] < csharp a' >8 r
	< d a' >8[ < d bflat' >16. < d c' >32] < d bflat' >8 r < f gsharp >8[ < f gsharp >16. < f gsharp >32] < f gsharp >8 r
	< d fsharp! >8\ff r < d f >8 r << { e4-> } \\ { d8[( csharp]) } >> r4
	< d fsharp! >8 r < d f >8 r << { e4-> } \\ { d8[( csharp]) } >> r4
	
	R1*25
	
	r2 r4 \tuplet 3/2 { < d fsharp >8\f[ < d fsharp > < d fsharp >] }
	r2 r4 \tuplet 3/2 { < d fsharp >8[ < d fsharp > < d fsharp >] }
	r8 < dsharp fsharp > r4 r8 < e a > r4
	r8 < d! f > r4 r8 < c! f > r4
	
	R1*6
	
	<< { fsharp,16_\pp[^\markup { \huge {Piu mosso.}} r fsharp r g r gsharp] r a[ r fsharp r g r gsharp] r } \\ { R1 } >>
	<< { a16 r r8 r4 r8 d,16 r d4-> } \\ { R1 } >>
	<< { e16[ r fsharp r g r gsharp] r a[ r fsharp r g r gsharp] r } \\ { R1 } >>
	<< { a16 r r8 r4 r8 d,16 r d4-> } \\ { R1 } >>
	e16 r r8 r4 r2
	
	R1*2
	
	r2 < g d' >8\f r r4
	r2 < g d' >8\f r r4
	r2 < bflat f' >8 r r4
	r2 < dflat aflat' >8\f r r4
	r2 < gsharp, gsharp' >8\f r r4
	< a a' >8\f r r4 < a a' >8 r r4
	< bflat bflat' >8 r r4 < bflat bflat' >8 r r4
	< g' d' >8[ < g d' >] r < g d' >[ < g d' > < g d' >] r < g d' >
	< b! d >[ < b d >] r < b d >[ < b d > < b d >] r < b d >
	r8 < b, esharp >8\mf~ < b esharp >4_\cr r8 < b esharp >8~ < b esharp >4
	r8 < b esharp >8~ < b esharp >4 r8 < b esharp >8~ < b esharp >4
	r8 < b esharp >8 r < b esharp > r < b esharp > r < b esharp >
	< b esharp >2:8 < b esharp >:
	
	< a fsharp' >8\f r r4 r2
	
	R1*2
	
	r4 < bflat f' >2\f r4
	r4 < a e' >2 r4
	r4 < g d' >2 r4
	r4 < c f >8[ < b dsharp >] < b e > r < b e >[ < a c >]
	< a d! > r r4 r2
	< a d >8 r r4 r2
	< aflat d >8 r r4 r2
	< bflat eflat >8\f r < a d > r < bflat eflat > r < a d > r
	< eflat' bflat' >1
	< d b'! >
	< d a' >8\ff r r4 r2
	
	R1*3
	
	r8 < g, g' >8\f[ < g g' > < g g' >] < g g' >[ < g' a >\ff < g a > < g a >]
	< g bflat >[ < g, g' >\f < g g' > < g g' >] < g g' >[ < g' a >\ff < g a > < g a >]
	< g bflat >[ < g, g' >\f < g g' > < g' a >\ff] < g bflat >[ < g, g' >\f < g g' > < g' a >\ff]
	< g bflat >[ < g, g' > < g g' > < d' bflat' >] < d b' >[ < dsharp e > < dsharp e > < dsharp b' >]
	< d a' >8\ff < d, d' >4 < d d' >8~ < d d' >[ < e e' > < fsharp fsharp' > < g g' >]
	< a a' >8 < d, d' >4 < d d' >8~ < d d' >[ < e e' > < fsharp fsharp' > < g g' >]
	< a a' >8 < d, d' >4 < e e' >8 < d d' > < csharp csharp' >4 < d d' >8
	<< { csharp'8 b4 g8 bflat8-> } \\ { csharp,8[ d dsharp e] eflat8-> } >> r8 r < csharp' g' >
	<< { d8 } \\ { d8 } >> < d, d' >4 < d d' >8~ < d d' >[ < e e' > < fsharp fsharp' > < g g' >]
	< a a' > < d, d' >4 < d d' >8~ < d d' >[ < e e' > < fsharp fsharp' > < g g' >]
	< a a' >8 < d, d' >4 < e e' >8 < d d' > < csharp csharp' >4 < d d' >8
	<< { csharp'8 b4 g8 bflat8-> } \\ { csharp,8[ d dsharp e] eflat8-> } >> r8 r < csharp' g' >
	<< { d8 } \\ { d8 } >> r8 < fsharp, d' > r < d' fsharp > r < fsharp a > r
	< fsharp a > r < fsharp, d' > r < d' fsharp > r < fsharp a > r
	< fsharp a > r < fsharp b > r < fsharp a > r < fsharp b > r
	< fsharp a > r < fsharp b > r < fsharp a > r < fsharp b > r
	< fsharp a >[ d, < d fsharp > < fsharp a >] < a d >[ < a d > < d fsharp > < fsharp a >]
	< fsharp a >4 < fsharp a > < fsharp a > < fsharp a >
	<< { d,1\fermata } \\ { d1 } >>
}
