\version "2.18.2"

theClarinets =  \relative a' {
	\transposition a
	
	\clef "treble"
	\key f \major
	
	< c c' >8\ff r r4
	
	R1*2/4*2
	
	r4 < e,, g >8 r
	R1*2/4
	r4 < b'' g' >4~
	< b g' > < b g' >
	< c g' >8 r r4
	R1*2/4
	b'8-.\f[ b16( asharp] b8)[ b,-.]
	c4~ c8 r
	
	R1*2/4*2
	
	< a, f' >2\ff
	< bflat! g' >4 < b aflat' >
	< c a'! > < g' c >8 r
	
	R1*2/4*40
	
	< d a' >16\f r r8 r4
	
	R1*2/4*9
	
	< g e' >8\p r < a eflat' > r
	< b f' > r < c g' > r
	
	R1*2/4*21
	
	<< { g'8\f[ g16( fsharp] g[ e c g] } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	<< { g'8[ g16( fsharp] g[ e c g] } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	
	R1*2/4*7
	
	< c' f >2:8\p
	< c g' >2:
	< c g' >2:
	< c g' >8[\< < c g' >] < c f >[ < c f >]\!
	< d a' >16\f r r8 r4
	
	R1*2/4*20
	
	<< { aflat'8^\f[ aflat16^( g] aflat8-.)[ f,-.] } \\ { R1*2/4 } >>
	R1*2/4
	<< { aflat'8[ aflat16^( g] aflat8-.)[ f,-.] } \\ { R1*2/4 } >>
	
	R1*2/4*16
	
%	\key c \major
	
	< c' g' >8 r r4
	
	R1*2/4*18
	
	r4 r8 < c, e >8\p
	r < d f > r < g b >
	r < b f' > r < d f >
	r < e g > r << c8 \\ c8 >>
	r8 << c8 \\ c8 >> r < e, g >8
	r < d f > r < g b >
	r < b f' > r < d f >
	r << e8 \\ e8 >> r << c'8 \\ c8 >>
	r8 << g8 \\ g8 >> r4
	
	R1*2/4*18
	
	r4 < g, g' >4\mf~
	< g g' >2
	
	R1*2/4*5
	
	<< { r4 e'8-.[(_\markup { \dynamic p \italic espress. }
		^\markup { \smaller {1\super{mo} Solo.}} d-.]) } \\ { R1*2/4 } >>
	<< { f4 \grace { e16[( f] } e8[ d]) } \\ { R1*2/4 } >>
	<< { \grace { c16[ d] } c8[( b] a) r } \\ { R1*2/4 } >>
	R1*2/4
	<< { r4 e'8-.[( d-.]) } \\ { R1*2/4 } >>
	<< { f4 \grace { e16[( f] } e8[ d]) } \\ { R1*2/4 } >>
	<< { \grace { c16[ d] } c8[( b] a) r } \\ { R1*2/4 } >>
	
	R1*2/4*38
%	\key f \major
	R1*2/4*4
	
	< d, a' >16\f r r8 r4
	
	R1*2/4*9
	
	< g e' >8\p r < a eflat' >\< r
	< b f' > r < c g' >\! r
	
	R1*2/4*21
	
	<< { g'8\f[ g16( fsharp] g[ e c g] } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	<< { g'8[ g16( fsharp] g[ e c g] } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	
	R1*2/4*11
	
	< aflat eflat' >4\p < aflat eflat' >8[ < aflat eflat' >]
	< aflat eflat' >4 r
	
	R1*2/4*2
	
	< aflat eflat' >4\p < aflat eflat' >8[ < aflat eflat' >]
	< aflat eflat' >4 r
	
	R1*2/4*2
	
	< f c' >4 < f c' >8[ < f c' >]
	< f c' >4 r
	
	R1*2/4*2
	
	< f c' >4 < f c' >8[ < f c' >]
	< f c' >4 r
	
	R1*2/4*4
	
	<< { dflat'8[ dflat16( c] dflat8)[ dflat] } \\ { aflat8\ff r aflat[ aflat] } >>
	<< { eflat'8[ aflat] bflatflat } \\ { c,8[ eflat!] fflat } >> r8
	
	R1*2/4*2
	
	<< { dflat8[ dflat16( c] dflat8)[ dflat] } \\ { aflat8 r aflat[ aflat] } >>
	< c eflat >8[ < c eflat >] < dflat f > r
	
	R1*2/4*2
	
	<< { gflat8 r gflat[ gflat] } \\ { dflat8[ dflat16( c] dflat8)[ dflat] } >>
	< c gflat' >[ < c gflat' >] < dflat g > r
	
	R1*2/4*2
	
	< eflat bflat' >8 r < eflat bflat' >[ < eflat bflat' >]
	< d bflat' >[ < d bflat' >] < eflat bflat' > r
	
	r4 r8 < eflat bflat' >
	< d bflat' >[ < d bflat' >] < eflat bflat' > r
	r4 r8 < eflat bflat' >
	< d bflat' >[ < d bflat' > < eflat bflat' > < eflat bflat' >]
	< d bflat' >[ < d bflat' > < eflat bflat' > < eflat bflat' >]
	< d bflat' >[ < d bflat' > < eflat bflat' > < eflat bflat' >]
	< eflat c' > r r4
	
	R1*2/4*15
	
%	\key bflat \major
	
	< d bflat' >8\ff r r4
	
	R1*2/4*43
	
	<< { f,4\pp( g } \\ { R1*2/4 } >>
	<< { aflat4 a) } \\ { R1*2/4 } >>
	<< { bflat4( d } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	<< { f,4( g } \\ { R1*2/4 } >>
	<< { aflat4 a) } \\ { R1*2/4 } >>
	<< { bflat4( d } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	
	%%% MOLTO MENO MOSSO %%%
	
	R1*2/4
	<< { r4 g,8-.^\p[( a-.]) } \\ { R1*2/4 } >>
	<< { \grace { g16[ a] } bflat4 a8[ g] } \\ { R1*2/4 } >>
	<< { \grace { f16[^( g] } f8[ eflat]^) } \\ { R1*2/4 } >>
	R1*2/4
	<< { r4 g8-.[( a-.]) } \\ { R1*2/4 } >>
	<< { \grace { g16[ a] } bflat4 a8[ g] } \\ { R1*2/4 } >>
	<< { \grace { f16[^( g] } f8[ e]^) } \\ { R1*2/4 } >>
	
	R1*2/4*27
	
	<< { r8 g,\p[^(\< bflat dflat] } \\ { d,1*2/4\rest } >>
	<< { e'8[ g]^)\! c4~ } \\ { c,1*2/4\rest } >>
	<< { c'8[ f,,^(\< aflat c] } \\ { d,1*2/4\rest } >>
	<< { f'8[ aflat]^)\! d4^>( } \\ { R1*2/4 } >>
	<< { c8) r r4 } \\ { R1*2/4 } >>
	r4 << { g4^>( } \\ { e4_>\p( } >>
	<< f8) \\ c8) >> r8 r4
	r4 << { b4^>( } \\ { aflat_>( } >>
	<< c8) \\ g8) >> r8 r4
	r4 < f b >\pp(
	< e c' >) r
	r4 < f b >(
	< eflat c' >) r
	
	R1*2/4*11
%	\key f \major
	R1*2/4*4
	
	< d' a' >16\f r r8 r4
	
	R1*2/4*9
	
	< g e' >8\p r < a eflat' > r
	< b f' > r < c g' > r
	
	R1*2/4*21
	
	<< { g'8\f[ g16( fsharp] g[ e c g] } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	<< { g'8[ g16( fsharp] g[ e c g] } \\ { R1*2/4 } >>
	<< { f8) r r4 } \\ { R1*2/4 } >>
	
	R1*2/4*7
	
	< c' f >2:8\p
	< c g' >2:
	< c g' >2:
	< c g' >8[\< < c g' >] < c f >[ < c f >]\!
	< d a' >16\f r r8 r4
	
	R1*2/4*20
	
	<< { aflat'8^\f[ aflat16^( g] aflat8-.)[ f,-.] } \\ { R1*2/4 } >>
	R1*2/4
	<< { aflat'8[ aflat16^( g] aflat8-.)[ f,-.] } \\ { R1*2/4 } >>
	
	R1*2/4*4
	
	< c' a' >8\f r r4
	
	R1*2/4*2
	
	r4 << { fsharp16[( g a d,]) } \\ { fsharp\p[( g a d,]) } >>
	
	R1*2/4*3
	
	r4 << { gsharp16[( a b e,]) } \\ { gsharp16\mf[( a b e,]) } >>
	r4 << { c8[^\cr c] } \\ { c8[ c] } >>
	<< { c4 b8[( a]) } \\ { c4 b8[( a]) } >>
	r4 << { d8[ d] } \\ { d8[ d] } >>
	<< { d4 c8[( b]) } \\ { d4 c8[( b]) } >>
	r4 << { e8[ e] } \\ { e8[ e] } >>
	<< { e4 d8[( dflat]) } \\ { e4 d8[( dflat]) } >>
	r4 << { f8[ f] } \\ { f8[ f] } >>
	<< { f4 e8[( d!]) } \\ { f4 e8[( d]) } >>
	r8 < g, g' >16\f[ < g g' >] < g g' >8[ < f f' >16( < e e' >])
	r8 < g g' >16[ < g g' >] < g g' >8[ < f f' >16( < e e' >])
	r8 < bflat' bflat' >16[ < bflat bflat' >] < bflat bflat' >8[ < a a' >16( < g g' >])
	r8 < bflat bflat' >16[ < bflat bflat' >] < bflat bflat' >8[ < a a' >16( < g g' >])
	r8 < e c' > r < e c' >
	r < e c' > r < e c' >
	r < e c' > r < e c' >
	r < e c' >[ < e c' > < e c' >]
	<< { f'8[ f16( e] f8)[ f] } \\ { c8\ff r c[ c] } >>
	< d f >8[ < d f >] < c f > r
	
	R1*2/4*2
	
	<< { f8-.[ f16( e] f8)[ d] } \\ { d8 r d[ a] } >>
	<< { e'8[ g] f } \\ { d8[ d] d } >> r8
	
	R1*2/4*2
	
	<< { f8[ f16( e] f8)[ f] } \\ { d8 r d[ d] } >>
	<< { bflat'8[ bflat] f } \\ { eflat8[ eflat] d } >> r8
	
	R1*2/4*2
	
	<< { g8-.[ g16( fsharp] g8)[ g] } \\ { d8 r d[ d] } >>
	<< { g8[ g] g } \\ { eflat8[ eflat] d } >> r8
	
	R1*2/4*2
	
	<< { g8-.[ g16( fsharp] g8)[ g] } \\ { d8 r d[ d] } >>
	<< { g8[ g] g } \\ { eflat8[ eflat] d } >> r8
	
	R1*2/4*2
	
	<< { g8[ g16( fsharp] g8)[ g] } \\ { d8 r d[ d] } >>
	R1*2/4
	<< { g8[ g16( fsharp] g8)[ g] } \\ { d8 r d[ d] } >>
	R1*2/4
	< d g >8[ < d g >] r4
	< d g >8[ < d g >] r4
	< dflat g >8[ < g bflat >] r4
	< c, g' >8[ < g' bflat >] r4
	< a c >8[ < a c >] r4
	< f bflat >8[ < f bflat >] r4
	< f b >8[ < f b >] r4
	
	R1*2/4*3
	
	r8 < a, e' >\f[ < a f' > < a csharp >]
	< a d >[ < a d > < g d' > < d fsharp >]
	< d g >[ < d g > < e g > < f g >]
	< e g >[ < e csharp' > < f d' > < c'! c'! >]
	< c! c'! > r r4
	
	R1*2/4*3
	
	< c f >8\f r r4
	
	R1*2/4*3
	
	< c f >8 r r4
	
	R1*2/4*3
	
	< c f >8 r r4
	
	R1*2/4*3
	
	< c f >8\f r < c e > r
	< c f > r < c e > r
	< c f > r < c e > r
	< c f > r < c e > r
	< c f > r < f a >[ < f a >]
	< f a >4 < f a >8[ < f bflat >]
	< f c' > r < f a >[ < f a >]
	< f a >4 < f a >8[ < f bflat >]
	< f c' >[ < f a > < f a > < f bflat >]
	< f c' >[ < f a > < f a > < f bflat >]
	< f c' > r r4
	< c f >8 r r4
	< f b >8 r r4
	< bflat! c >8 r r4
	< a c >8\ff[ < g c > < a c > < g c >]
	< a c >8[ < g c > < a c > < g c >]
	< a c >8[ < g c > < a c > < g c >]
	< a c >8[ < g c > < a c > < g c >]
	<< { f8[ f16( e] f8)[ f] } \\ { c8 r c[ c] } >>
	< e g >8[ < e g >] < f, f' >[ < a a' >]
	< c c' > r r < c c' >
	< a' c > r r4\fermata

}
