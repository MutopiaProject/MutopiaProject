\version "2.18.2"

theHornssecond =  \relative c' {
	\transposition f'
	\clef "treble"
	\key c \major
	
	\override Staff.TupletBracket.bracket-visibility = ##f
	
	r1
	
	R1*12
	
	< d b' >1\mf\<
	< c a' >\!
	< c a' >\f
	< c a' >
	<< { a'4^\ff } \\ { c,4 } >> r4 << { a'4 } \\ { c,4 } >> r4
	< c a' >8[ < c a' > < c a' > < c a' >] < c a' >2:8
	< b e >8 r r4 r2
	R1
	r8 << { g'8[( c]) } \\ { c,8\p[( c]) } >> r8 r << { g'8[( c]) } \\ { c,8\p[( c]) } >> r
	
	R1*36
	
	< c c' >8\f[ < c c' >16. < c c' >32] < c c' >8[ < c c' >16. < c c' >32] < d d' >8 r r4
	< c c' >8[ < c c' >16. < c c' >32] < c c' >8[ < c c' >16. < c c' >32] < d d' >8 r r4
	< c c' >8[ < c c' >16. < c c' >32] < csharp csharp' >8 r < d a' >8[ < d b' >16. < d c'! >32] < dsharp b' >8 r
	< e b' >8[ < e c'! >16. < e d' >32] < fsharp c' >8 r < csharp asharp' >8[ < csharp asharp' >16.
		< csharp asharp' >32] < c asharp' >8 r
	< gsharp' e' >8\ff r < g e' > r << { e'8[(^> dsharp]) } \\ { fsharp,4_> } >> r4
	< gsharp e' >8 r < g e' > r << { e'8[(^> dsharp]) } \\ { fsharp,4_> } >> r4
	
	R1*24
	
	<< { a4\mf gsharp~ gsharp8[ gsharp] a[ a] } \\ { R1 } >>
	<< { bflat8[ g!] a[ f] g r r4 } \\ { R1 } >>
	<< { a4\mf gsharp~ gsharp8[ gsharp] a[ a] } \\ { R1 } >>
	<< { bflat8[ g!] a[ f] g[ g] f[ f] } \\ { R1 } >>
	r2 r8 < c a' >8\mf[ < c a' > < c a' >]
	r2 r8 < b gsharp' >[ < b gsharp' > < b gsharp' >]
	r8 g'!8 g4 gsharp8 r r4
	
	R1*7
	
	<< { r8 e\p r g r a4 r8 } \\ { r4 s8 b,8\p s a4 s8 } >>
	<< { r8 e' r g r a4 r8 } \\ { r4 s8 b,8 s a4 s8 } >>
	
	R1*9
	
	r2 < csharp a' >8\f r r4
	r2 < c! a' >8\f r r4
	r2 < g' e' >8\f r r4
	r2 < g eflat' >8->\f r r4
	r2 < e! e'! >8\f r r4
	< f b >8\f r r4 r2
	< e c'! >8 r r4 r2
	< e e' >8 r r4 r2
	< e e' >8 r r4 r2
	
	R1*3
	
	< csharp g' >8[\< < csharp g' > < csharp g' > < csharp g' >] < csharp g' >[ < csharp g' >
		< csharp g' > < csharp g' >]\!
	< b gsharp' >\ff[ \tuplet 3/2 { < b gsharp' >16 < b gsharp' > < b gsharp' >] } < b gsharp' >8[ < b gsharp' >]
		< b gsharp' >[ < b gsharp' >] < b gsharp' >[ < b gsharp' >]
	< b fsharp' >[ \tuplet 3/2 { < b fsharp' >16 < b fsharp' > < b fsharp' >] } < b fsharp' >8[ < b esharp >]
		< b fsharp' >[ < b fsharp' >]  r < csharp gsharp' >
	< csharp a' >[ \tuplet 3/2 { < csharp a' >16 < csharp a' > < csharp a' >] } < csharp a' >8[ < csharp a' >]
		< csharp a' >[ < csharp a' >] < csharp a' >[ < csharp a' >]
	< csharp gsharp' >[ \tuplet 3/2 { < csharp gsharp' >16 < csharp gsharp' > < csharp gsharp' >] } < csharp gsharp' >8[
		< csharp g' >] < csharp gsharp' >[ < csharp gsharp' >] r < csharp gsharp' >
	< csharp a' > r r4 < b e' >8 r r4
	< csharp fsharp >8 r r4 < csharp gsharp' >8 r r4
	< csharp a' >8 r r4 < a fsharp' >8 r < dsharp c'! > r
	< csharp a' > r r4 < a fsharp' >8 r < dsharp dsharp' > r
	< b gsharp' >\ff[ \tuplet 3/2 { < b gsharp' >16 < b gsharp' > < b gsharp' >] } < b gsharp' >8[ < b gsharp' >]
		< b gsharp' >[ < b gsharp' >] < b gsharp' >[ < b gsharp' >]
	< b fsharp' >[ \tuplet 3/2 { < b fsharp' >16 < b fsharp' > < b fsharp' >] } < b fsharp' >8[ < b esharp >]
		< b fsharp' >[ < b fsharp' >]  r < csharp gsharp' >
	< csharp a' >[ \tuplet 3/2 { < csharp a' >16 < csharp a' > < csharp a' >] } < csharp a' >8[ < csharp a' >]
		< csharp a' >[ < csharp a' >] < csharp a' >[ < csharp a' >]
	< csharp gsharp' >[ \tuplet 3/2 { < csharp gsharp' >16 < csharp gsharp' > < csharp gsharp' >] } < csharp gsharp' >8[
		< csharp g' >] < csharp gsharp' >[ < csharp gsharp' >] r < csharp gsharp' >
	< csharp a' > r r4 < b e' >8 r r4
	< csharp fsharp >8 r r4 < csharp gsharp' >8 r r4
	< dsharp asharp' >8 r r4 r8 < csharp csharp' >8\p~ < csharp csharp' >[ < b b' >]~
	< b b' > r r4 r2
	r2 r8 < csharp csharp' >8\p~ < csharp csharp' >[ < b b' >]~
	< b b' > r r4 r2
	<< { r2 r8 b'^>\mf[~ b] r8 } \\ { R1 } >>
	<< { r2 r8 b^>[~ b] r8 } \\ { R1 } >>
	r4 r8 << { asharp8~ asharp } \\ { csharp,8\mf~ csharp } >> r8 r4
	r4 r8 << { gsharp'8~ gsharp } \\ { dsharp8~ dsharp } >> r8 r4
	<< { r2 r4 r8 e\mf~ } \\ { R1 } >>
	<< { e8 r r4 r2 } \\ { R1 } >>
	
	R1*5
	
	r4 r8 << { e8~ e } \\ { g,8\mf~ g } >> r r4
	r r8 < a d >8~ < a d > r r4
	R1
	r8 < eflat' eflat' >~ < eflat eflat' > r r < csharp csharp' >~ < csharp csharp' > r
	
	R1*27
	
	r2 r4 < c fsharp >
	<< { g'8[ \tuplet 3/2 { c16 c c] } } \\ { c,8\ff[ \tuplet 3/2 { c16 c c] } } >>
		< c c' >8[ < c c' >] < c c' >[ < c c' >] < c c' >[ < c c' >]
	< b b' >[ \tuplet 3/2 { < b b' >16 < b b' > < b b' >] } < b b' >8[ < asharp asharp' >]
		< b b' >[ < b b' >] r < csharp csharp' >
	r8 \tuplet 3/2 { < d d' >16[ < d d' > < d d' >] } < d d' >8[ < d d' >] < d d' >[ < d d' >] < d d' >[ < d d' >]
	< csharp csharp' >[ \tuplet 3/2 { < csharp csharp' >16 < csharp csharp' > < csharp csharp' >] } < csharp csharp' >8[
		< bsharp bsharp' >] < csharp csharp' >[ < csharp csharp' >] r < csharp csharp' >
	< c! c' > r r4 < c c' >8 r r4
	< d d' >8 r r4 << { a'8 } \\ { a8 } >> r r4
	< f bflat >8 r < f f' > r < d g > r < d a' > r
	< b gsharp' >\ff r r4 r2
	r2 r4 r8 << { b'8 } \\ { a8 } >>
	<< { b8 } \\ { gsharp8 } >> r8 r4 r2
	r2 r4 r8 << { b8 } \\ { a8 } >>
	<< { b8 } \\ { gsharp8 } >> r8 r4 r2
	r2 r4 r8 << { c!8 } \\ { c8 } >>
	<< { csharp8 } \\ { asharp8 } >> r8 r4 r2
	r2 r4 r8 << { csharp8 } \\ { csharp8 } >>
	<< { d!8 } \\ { b!8 } >> r8 << { e,4 fsharp g } \\ { d4 dsharp e } >>
	<< { gsharp4 a bflat b } \\ { f!4 fsharp g gsharp } >>
	< a c >8\ff r < a c > r < a c > r < a c > r
	< a c > r < a c > r < a c > r < a c > r
	< e b' > r r4 r2
	< a c >8 r < a c > r < a c > r < a c > r
	< e b' > r r4 r2
	< a c >8 r < a c > r < a c > r < a c > r
	< e b' > r r4 r2
	
	s1*46
	
	s1*33
	
	r2 < c fsharp >8\f[ < c fsharp >16. < c fsharp >32] < c f >8 r
	< e csharp' >8\ff r < e c' > r < e b' >4-> r
	< e csharp' >8 r < e c' > r < e b' >4-> r
	
	R1*17
	
	r2 r8 < bflat g' >8\p < bflat f' >[ < b g' >]
	< c g' >[ < a f' >] < bflat f' >[ < g eflat' >] < a f' > r r4
	r2 r8 < bflat g' >8 < bflat f' >[ < b g' >]
	< c g' >[ < a f' >] < bflat f' >[ < g eflat' >] < a f' > r r4
	
	R1*25
	
	r2 < fsharp' fsharp' >8\f r r4
	<< { d'8 } \\ { d8\f } >> r8 r4 << { d8 } \\ { d8 } >> r8 r4
	< d, d' >8 r r4 < d d' >8 r r4
	< d d' >8[ < d d' >] r < d d' >[ < d d' > < d d' >] r < d d' >
	< fsharp fsharp' >[ < fsharp fsharp' >] r < fsharp fsharp' >[ < fsharp fsharp' > < fsharp fsharp' >] r < fsharp fsharp' >
	
	R1*4
	
	%%% CODA %%%
	
	< e csharp' >8\f r r4 r2
	
	R1*11
	
	<< { c'1\f } \\ { R1 } >>
	< e, csharp' >8\ff r r4 r2
	r4 < a, a' >4^>\mf~\< < a a' >8\! r r4
	
	R1*2
	
	<< { r2 r8 gsharp'8[ gsharp gsharp] } \\ { r8 d8[ d d] d[ e\ff e e] } >>
	<< { a8 r r4 r8 gsharp[ gsharp gsharp] } \\ { r8 d[ d d] d[ e\ff e e] } >>
	<< { e8 r r gsharp a r r gsharp } \\ { fsharp8[ d\f d e\ff] fsharp\f[ d d e\ff] } >>
	<< { a8 r r fsharp } \\ { fsharp8[ d d d] } >> < d fsharp >8[ < d fsharp > < d fsharp > < d fsharp >]
	< csharp e >\ff r r4 < a a' >4 < a a' >8 < a a' >
	< a a' > r r4 < a a' >4 < a a' >8 < a a' >
	< a a' > r r4 r2
	r2 < d d' >8^> r r << { e8 } \\ { e8 } >>
	<< { e8 } \\ { e8 } >> r r4 < a, a' >4 < a a' >8 < a a' >
	< a a' > r r4 < a a' >4 < a a' >8 < a a' >
	< a a' > r r4 r2
	r2 < d d' >8^> r r << { e8 } \\ { e8 } >>
	<< { e8 } \\ { e8 } >> r < a csharp > r < e csharp' > r < e csharp' > r
	< e csharp' >8 r < a csharp > r < e csharp' > r < e csharp' > r
	< e csharp' > r < fsharp csharp' > r < e csharp' > r < fsharp csharp' > r
	< e csharp' > r < fsharp csharp' > r < e csharp' > r < fsharp csharp' > r
	< e csharp' >8[ < csharp e > < csharp e > < csharp e >] < csharp e >[ < csharp e > < csharp e > < csharp e >]
	< csharp e >4 < csharp e > < csharp e > < e a >
	< csharp e >1\fermata
}
