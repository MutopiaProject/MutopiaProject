\version "2.18.2"

theHornsfirst =  \relative c' {
	\transposition f'
	\clef "treble"
	\key c \major	
	
	\override Staff.TupletBracket.bracket-visibility = ##f
	
	r1
	
	R1*12
	
	< e e' >1\mf\<
	< e e' >\!
	< fsharp c' >\f
	< fsharp c' >
	<< { c'4 } \\ { fsharp,4\ff } >> r4 << { c'4 } \\ { fsharp,4 } >> r
	< fsharp c' >8[ < fsharp c' > < fsharp c' > < fsharp c' >] < fsharp c' >2:8
	< gsharp b >8 r r4 r2
	R1
	r8 < e c' >8\p( < f! f'! >) r r < e c' >( < f f' >) r
	
	R1*36
	
	< e e' >8\f[ < e e' >16. < e e' >32] < e e' >8[ < e e' >16. < e e' >32] < f f' >8 r r4
	< e e' >8[ < e e' >16. < e e' >32] < e e' >8[ < e e' >16. < e e' >32] < f f' >8 r r4
	< e e' >8[ < e e' >16. < e e' >32] < e e' >8 r < a d >8[ < a d >16. < a d >32] < a dsharp >8 r
	< a e' >8[ < a e' >16. < a e' >32] < a fsharp' >8 r < g dsharp' >8[ < g e' >16. < g fsharp' >32] < g e' >8 r
	< gsharp e' >8\ff r < g e' > r << { e'8[(^> dsharp]) } \\ { fsharp,4_> } >> r4
	< gsharp e' >8 r < g e' > r << { e'8[(^> dsharp]) } \\ { fsharp,4_> } >> r4
	
	R1*16
	
	<< { b2^\markup { I.II. } b } \\ { a2\pp gsharp } >>
	<< { csharp2 csharp~ } \\ { gsharp2 a( } >>
	<< { csharp8 } \\ { b8) } >> r8 r4 r2
	
	R1*3
	
	<< { R1 } \\ { b,4\pp^\markup {I.II.} a_\markup { \italic {poco cresc.} } b csharp } >>
	<< { f!2~ f8 } \\ { csharp!2\mf~ csharp8 } >> r8 r4
	< f c' >4\mf < f d' >~ < f d' >8[ < f b >8] < f c' >[ < fsharp d' >]
	< g d' >[ < e c' >] < f! c' >[ < d bflat' >] < e bflat' >[ < e g >] << { f4 } \\ { f8 r } >>
	< f c' >4\mf < f d' >~ < f d' >8[ < f b >] < f c' >[ < fsharp d' >]
	< g d' >[ < e c' >] < f c' >[ < d bflat' >] < e bflat' > << { r8 r4 } \\ { e8 d r } >>
	r2 r8 < f c' >8\mf[ < f c' > < f c' >]
	r2 r8 < e b' >[ < e b' > < e b' >]
	r8 < e csharp' > < e csharp' >4 < e b' >8 r r4
	
	R1*5
	
	r8^\markup {I.II.}
	< e g >4\p < e g >8 r < e fsharp >4 < e fsharp >8
	r8 < dsharp fsharp >4 < dsharp fsharp >8 r < d e >4 < d e >8
	r8 < c a' > r < e b' > r < e c' >4 r8
	r < c a' > r < e b' > r < e c' >4 r8
	r2 < b b' >
	< b b' >4^\markup {I.II.} < b b' > << { e'8 r r4 } \\ { csharp,4~ csharp8 r } >>
	<< { R1 } \\ { b16\pp[ r b r b r b] r b[ r b r b r b] r } >>
	<< { R1 } \\ { b16[ r b r b r b] r b[ r b] r b4_> } >>
	<< { R1 } \\ { b16\pp[ r b r b r b] r b[ r b r b r b] r } >>
	<< { R1 } \\ { b16[ r b r b r b] r b[ r b] r b4_> } >>
	<< { R1 } \\ { b16 r r8 r4 r2 } >>
	
	R1*2
	
	r2 < e csharp' >8\f r r4
	r2 < e c'! >8\f r r4
	<< { c'16\mf[ r c r c r c] r c8\f r8 r4 } \\ { R1 } >>
	<< { c16\mf[ r c r c r c] r bflat8^>\f r8 r4 } \\ { R1 } >>
	<< { bflat16\mf[ r c r bflat r c] r csharp8 } \\ { bflat16[ s bflat s bflat s bflat] s bflat8\f } >> r8 r4
	<< { dsharp8\f } \\ { a8 } >> r8 r4 r2
	<< { e'8 } \\ { a,8 } >> r8 r4 r2
	<< { fsharp'8 } \\ { fsharp,8 } >> r8 r4 r2
	<< { g'!8 } \\ { g,!8 } >> r8 r4 r2
	r8 < g e' >8\mf~_\markup { \translate #(cons 4 -1) \italic cresc. } < g e' >4
		r8 < g e' >~ < g e' >4
	r8^\markup {I.II.} < g e' >~ < g e' >4 r8 < g e' >~ < g e' >4
	r8 < g e' > r8 < g e' > r8 < g e' > r8 < g e' >
	< e csharp' >8[\< < e csharp' > < e csharp' > < e csharp' >] < e csharp' >[ < e csharp' > < e csharp' > < e csharp' >]\!
	
	%%% DOUBLE BAR %%%
	
	< e b' >8\ff \tuplet 3/2 { < e e' >16[ < e e' > < e e' >] } < e e' >8[ < e e' >] < e e' >[ < e e' > < e e' > < e e' >]
	< dsharp dsharp' >8[ \tuplet 3/2 { < dsharp dsharp' >16 < dsharp dsharp' > < dsharp dsharp' >] } < dsharp dsharp' >8[ < d d' >]
		< dsharp dsharp' >[ < dsharp dsharp' >] r < esharp esharp' >
	< fsharp fsharp' >[ \tuplet 3/2 { < fsharp fsharp' >16 < fsharp fsharp' > < fsharp fsharp' >] }
		< fsharp fsharp' >8[ < fsharp fsharp' >] < fsharp fsharp' >[ < fsharp fsharp' >] < fsharp fsharp' >[ < fsharp fsharp' >]
	< esharp esharp' >8[ \tuplet 3/2 { < esharp esharp' >16 < esharp esharp' > < esharp esharp' >] } < esharp esharp' >8[ < e e' >]
		< esharp esharp' >[ < esharp esharp' >] r < esharp esharp' >
	< e! e'! > r r4 < e e' >8 r r4
	< a fsharp' >8 r r4 < gsharp csharp >8 r r4
	< fsharp csharp' >8 r r4 < fsharp csharp' >8 r < gsharp dsharp' > r
	< fsharp csharp' >8 r r4 < fsharp csharp' >8 r < fsharp fsharp' > r
	< e b' >8\ff \tuplet 3/2 { < e e' >16[ < e e' > < e e' >] } < e e' >8[ < e e' >] < e e' >[ < e e' > < e e' > < e e' >]
	< dsharp dsharp' >8[ \tuplet 3/2 { < dsharp dsharp' >16 < dsharp dsharp' > < dsharp dsharp' >] } < dsharp dsharp' >8[ < d d' >]
		< dsharp dsharp' >[ < dsharp dsharp' >] r < esharp esharp' >
	< fsharp fsharp' >[ \tuplet 3/2 { < fsharp fsharp' >16 < fsharp fsharp' > < fsharp fsharp' >] }
		< fsharp fsharp' >8[ < fsharp fsharp' >] < fsharp fsharp' >[ < fsharp fsharp' >] < fsharp fsharp' >[ < fsharp fsharp' >]
	< esharp esharp' >8[ \tuplet 3/2 { < esharp esharp' >16 < esharp esharp' > < esharp esharp' >] } < esharp esharp' >8[ < e e' >]
		< esharp esharp' >[ < esharp esharp' >] r < esharp esharp' >
	< e! e'! > r r4 < e e' >8 r r4
	< a fsharp' >8 r r4 < gsharp csharp >8 r r4
	< g! dsharp' >8 r r4 r8 < dsharp dsharp' >8\p~ < dsharp dsharp' >[~ < dsharp dsharp' >]~
	< dsharp dsharp' > r8 r4 r2
	r2 r8 < dsharp dsharp' >8\p~ < dsharp dsharp' >[~ < dsharp dsharp' >]~
	< dsharp dsharp' > r8 r4 r2
	r2 r8 < gsharp dsharp' >->\mf[~ < gsharp dsharp' >] r
	r2 r8 < gsharp dsharp' >->[~ < gsharp dsharp' >] r
	r4 r8 < g! csharp >~ < g csharp > r r4
	r4 r8 < fsharp dsharp' >~ < fsharp dsharp' > r r4
	r2 r4 r8 < gsharp e' >\mf(
	< a e' >) r r4 r8 << { a4^\p a8~ } \\ { g!4 f8~ } >>
	<< { a8 } \\ { f8 } >> r8 r4 r2
	r2 r8 << { a4\p a8~ } \\ { g!4 f8~ } >>
	<< { a8 } \\ { f8 } >> r8 r4 r2
	
	R1*2
	
	r4 r8 << { g8~ g } \\ { csharp,8\mf~ csharp } >> r8 r4
	r r8 << { a'8~ a } \\ { c,8~ c } >> r8 r << { fsharp8( } \\ { d8~_\cr } >>
	<< { g8) } \\ { d8 } >> r8 r4 r8 < f f' >8~ < f f' > r
	r8 < eflat eflat' >~ < eflat eflat' > r r < csharp csharp' >~ < csharp csharp' > r
	
	R1*24
	
	r2 < a fsharp' >2\p_\markup { \translate #(cons 4 -1) \italic cresc. }^\markup {I.II.}
	r2 < a fsharp' >
	< a fsharp' >\< < a fsharp' >
	< b fsharp' >\! < c f >4 < eflat c' >
	<< { c'8[ \tuplet 3/2 { e16 e e] } } \\ { e,!8\ff[ \tuplet 3/2 { e16 e e] } } >>
		< e e' >8[ < e e' >] < e e' >[ < e e' >] < e e' >[ < e e' >]
	< d d' >[ \tuplet 3/2 { < d d' >16 < d d' > < d d' >] } < d d' >8[ < csharp csharp' >]
		< d d' >[ < d d' >] r < e e' >
	r8 \tuplet 3/2 { < f f' >16[ < f f' > < f f' >] } < f f' >8[ < f f' >] < f f' >[ < f f' >] < f f' >[ < f f' >]
	< e e' >8[ \tuplet 3/2 { < e e' >16 < e e' > < e e' >] } < e e' >8[ < dsharp dsharp' >] < e e' >[ < e e' >] r < e e' >
	< f! f'! > r r4 < g g' >8 r r4
	< f f' >8 r r4 < e e' >8 r r4
	< f f' >8 r < f f' > r < bflat g' > r < a d > r
	< e b' >\ff r4 << { f8 fsharp } \\ { r4 } >> r8 r4
	r2 r4 r8 << { b8 } \\ { a8 } >>
	<< { b8 } \\ { gsharp8 } >> r4 << { f!8 fsharp } \\ { r4 } >> r8 r4
	r2 r4 r8 << { b8 } \\ { a8 } >>
	<< { b8 } \\ { gsharp8 } >> r4 << { fsharp8 g } \\ { r4 } >> r8 r4
	r2 r4 r8 << { c!8 } \\ { c8 } >>
	<< { csharp8 } \\ { asharp8 } >> r4 << { g!8 gsharp } \\ { r4 } >> r8 r4
	r2 r4 r8 << { csharp8 } \\ { csharp8 } >>
	<< { d!8 } \\ { b!8 } >> r8 < b, b' >4 < c! c'! > < csharp csharp' >
	< d d' > < dsharp dsharp' > < e e' > < f! f'! >
	< fsharp fsharp' >8\ff r < fsharp fsharp' > r < fsharp fsharp' > r < fsharp fsharp' > r
	< fsharp fsharp' >8 r < fsharp fsharp' > r < fsharp fsharp' > r < fsharp fsharp' > r
	< gsharp e' > r r4 r2
	< fsharp fsharp' >8 r < fsharp fsharp' > r < fsharp fsharp' > r < fsharp fsharp' > r
	< gsharp e' > r r4 r2
	< fsharp fsharp' >8 r < fsharp fsharp' > r < fsharp fsharp' > r < fsharp fsharp' > r
	< gsharp e' > r r4 r2
	
	s1*46
	
	s1*30
	
	< c, c' >8\f r < c c' > r < c c' > r r4
	< c c' >8 r < c c' > r < c c' > r r4
	< c c' >8[_\cr < c c' >16. < c c' >32] < c c' >8 r < d d' >8[ < d d' >16. < d d' >32] < d d' >8 r
	< d d' >8[ < d d' >16. < d d' >32] < d d' >8 r < eflat eflat' >8[ < eflat eflat' >16. < eflat eflat' >32] < eflat eflat' >8 r
	< a e'! >8\ff r < a e' > r << { e'4^> } \\ { a,8[( gsharp]) } >> r4
	< a e'! >8 r < a e' > r << { e'4^> } \\ { a,8[( gsharp]) } >> r4
	
	R1*4
	
	r4^\markup {I.II.} < b d >->\pp r < a csharp >->
	r < csharp e >-> r < b d >->
	
	R1*11
	
	<< { R1 } \\ { r2 r8 csharp,8\pp d[ d] } >>
	<< { R1 } \\ { eflat8[ c] d[ bflat] c r r4 } >>
	<< { R1 } \\ { r2 r8 csharp8 d[ d] } >>
	<< { R1 } \\ { eflat8[ c] d[ bflat] c r r4 } >>
	r2 r8 < bflat f' >\p[^\markup {I.II.} < bflat f' > < bflat f' >]
	r2 r8 < a e' >\p[ < a e' > < a e' >]
	
	R1*2
	
	r2^\markup {I.II.} r4 \tuplet 3/2 { < a' csharp >8\f[ < a csharp > < a csharp >] }
	r2 r4 \tuplet 3/2 { < a csharp >8[ < a csharp > < a csharp >] }
	r8 < asharp csharp > r4 r8 < b e > r4
	r8 < a! c! > r4 r8 < g c > r4
	r8 < f c' >4->\pp < f c' >8 r < fsharp b >4-> < fsharp b >8
	r8^\markup {I.II.} < e b' >4-> < e b' >8 r < e a >4-> < e a >8
	r8 < d a' >\< r < e a > r < f a >~ < f a >\! r
	r8 < d a' >\< r < e a > r < f a >~ < f a >\! r
	
	R1*2
	
	< a, e' >16\p[^\markup {I.II.} r < asharp fsharp' > r < b fsharp' > r < bsharp gsharp' >] r
		< csharp a' >[ r < asharp fsharp' > r < b fsharp' > r < bsharp gsharp' >] r
	<< { a'16[ r g! r fsharp r f] r e[ r a,] r b4^> } \\ { csharp16 r r8 r4 r2 } >>
	<< { e16[ r fsharp r fsharp r gsharp] r a[ r fsharp r fsharp r g] r } \\
		{ b,16[ s asharp s b! s bsharp] s csharp[ s asharp s b s bsharp] s } >>
	<< { a'16[ r g! r fsharp r f] r e[ r a,] r b4^> } \\ { csharp16 r r8 r4 r2 } >>
	<< { e16 } \\ { b16 } >> r16 r8 r4 r2
	
	R1*2
	
	r2 < a fsharp' >8\f r r4
	r2 < a f'! >8^\f r r4
	r2 < f' a >8 r r4
	r2 < eflat aflat >8\f r r4
	< eflat aflat >8[ < eflat aflat > < eflat aflat > < eflat aflat >] < eflat a >\f r r4
	< e! e'! >8\f r r4 < e e' >8 r r4
	< f f' >8 r r4 < f f' >8 r r4
	< a b >8[ < a b >] r < a b >[ < a b > < a b >] r < a b >
	< a c >[ < a c >] r < a c >[ < a c > < a c >] r < a c >
	r8^\markup {I.II.} < d, c' >8\mf~ < d c' >4_\cr r8 < d c' >8~ < d c' >4
	r8 < d c' >8~ < d c' >4 r8 < d c' >8~ < d c' >4
	r8 < d c' > r < d c' > r < d c' > r < d c' >
	< d c' >2:8 < d c' >2:
	
	%%% CODA %%%
	
	< e csharp' >8\f r r4 r2
	
	R1*2
	
	r4^\markup {I.II.} < f c' >2\f r4
	r4 < e b' >2 r4
	r4 < d a' >2 r4
	
	R1*5
	
	<< { f'1\f } \\ { R1 } >>
	< fsharp, fsharp' >1\f
	< e e' >8\ff r r4 r2
	
	R1*2
	
	r4^\markup {III.IV.} < a, a' >4^>\mf~\< < a a' >8\! r r4
	r2 r8 < d' e >8\ff[ < d e > < d e >]
	< d f > r r4 r8 < d e >\ff[ < d e > < d e >]
	< d f > r r < d e > < d f > r r < d e >
	< d f > r r < a b > < a c >[ < a c > < a c > < a c >]
	< a csharp >\ff r r4 < a, a' >4 < a a' >8 < a a' >
	< a a' > r r4 < a a' >4 < a a' >8 < a a' >
	< a a' > r r4 r2
	r2 < d d' >8^> r r << { d'8 } \\ { d8 } >>
	<< { e8 } \\ { csharp8 } >> r r4 < a, a' >4 < a a' >8 < a a' >
	< a a' > r r4 < a a' >4 < a a' >8 < a a' >
	< a a' > r r4 r2
	r2 < d d' >8^> r r << { d'8 } \\ { d8 } >>
	< csharp e >8 r < fsharp, csharp' > r < csharp' e > r < csharp e > r
	< csharp e >8 r < fsharp, csharp' > r < csharp' e > r < csharp e > r
	< csharp e > r < csharp fsharp > r < csharp e > r < csharp fsharp > r
	< csharp e > r < csharp fsharp > r < csharp e > r < csharp fsharp > r
	<< { e8[ a, csharp! csharp] } \\ { csharp8[ a a a] } >> < csharp e >8[ < csharp e > < csharp e > < csharp e >]
	< csharp e >4 < csharp e > < csharp e > < csharp e >
	< csharp, e >1\fermata
}
