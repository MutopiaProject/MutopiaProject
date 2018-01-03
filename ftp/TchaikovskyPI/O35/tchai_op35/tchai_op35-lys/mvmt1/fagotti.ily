\version "2.18.2"

theBassoons =  \relative d' {
	\set Score.skipBars = ##t
	
	\clef "bass"
	\key d \major
	
	r1
	
	R1*5
	
	<< { r2 r4 b\p } \\ { R1 } >>
	<< { e4 e a,2 } \\ { R1 } >>
	<< { R1 } \\ { a,1\p~^\markup { \italic {poco a poco cresc.} } } >>
	<< { R1 } \\ { a1~ } >>
	<< { R1 } \\ { a1~ } >>
	<< { R1 } \\ { a1~ } >>
	<< { R1 } \\ { a1 } >>
	<< { a'1\mf\< } \\ { a,1~ } >>
	<< { a'1\! } \\ { a,1~ } >>
	<< { a1\f~ } \\ { a1~ } >>
	<< { a1 } \\ { a1 } >>
	<< { a4\ff } \\ { a4 } >> r4 << { a4 } \\ { a4 } >> r
	<< { a8[ a a a] a2:8 } \\ { a8[ a a a] a2:8 } >>
	<< { a8 } \\ { a8 } >> r8 r4 r2
	R1
	r8 << { eflat'8[( d]) } \\ { eflat8[( d]) } >> r r << { eflat8[( d]) } \\ { eflat8[( d]) } >> r
	
	R1*34
	
	r4 < d bflat' >4\f~ < d bflat' >8 r r4
	r4 < dflat b'! >4~ < dflat b' >8 r r4
	< c, c' >8\f r < c c' > r < c c' > r r4
	< c c' >8 r < c c' > r < c c' > r r4
	<< { c'8[ c16. c32] c8 } \\ { c8[ c16. c32] c8 } >> r
		<< { b8[ b16. b32] bflat8 } \\ { b8[ b16. b32] bflat8 } >> r
	< a a' >8[ < a a' >16. < a a' >32] < gsharp gsharp' >8 r < fsharp! fsharp'! >8[
		< fsharp fsharp' >16. < fsharp fsharp' >32] < f f' >8 r
	< e e' >8\ff r < e e' > r < e e' >4-> r
	< e e' >8 r < e e' > r < e e' >4-> r
	
	R1*21
	
	<< { gsharp'2 a } \\ { f2\pp_\markup { \translate #(cons 4 -1) \italic {poco cresc.} } eflat } >>
	<< { g4 gsharp g f } \\ { csharp4 b asharp gsharp } >>
	<< { csharp'!2~ csharp8 } \\ { fsharp,,2\mf~ fsharp8 } >> r8 r4
	R1
	r8\mf < f f' >8~ < f f' >4~ < f f' >8[ < fsharp fsharp' >] < g g' >[ < gflat gflat' >]
	< f f' > r r4 r2
	r8 < f f' >8~ < f f' >4~ < f f' >8[ < fsharp fsharp' >] < g g' >[ < g g' >]
	r8 < gflat gflat' >4\mf < f f' >4 r8 r4
	r8 < f f' >4 < e! e'! > r8 r4
	
	R1*2
	
	r2 r4 \tuplet 3/2 { < e e' >8\f[ < e e' > < e e' >] }
	r2 r4 \tuplet 3/2 { < fsharp fsharp' >8\f[ < fsharp fsharp' > < fsharp fsharp' >] }
	r8 < fsharpsharp fsharpsharp' > r4 r8 < gsharp gsharp' > r4
	r8 < a a' > r4 r8 < bflat bflat' > r4
	
	R1*6
	
	< a' csharp >16\pp[ r < asharp csharp > r < b d > r < bsharp dsharp >] r < csharp e >[ r
		< asharp csharp > r < b d > r < bsharp dsharp >] r
	< csharp e >[ r < asharp g'! > r < b fsharp' > r < gsharp f' >] r < asharp e' >[ r < fsharp a >] r < fsharp a >4->
	< gsharp b >16\pp[ r < asharp csharp > r < b d > r < bsharp dsharp >] r < csharp e >[ r
		< asharp csharp > r < b d > r < bsharp dsharp >] r
	< csharp e >[ r < asharp g'! > r < b fsharp' > r < gsharp f' >] r < a e' >[ r < fsharp a >] r < fsharp a >4->
	< gsharp b >16\pp r r8 r4 r2
	
	R1*2
	
	r2 < d, d' >8\f r r4
	r2 < d d' >8\f r r4
	< d' d' >16\mf[ r < d d' > r < d d' > r < d d' >] r < c c' >8\f r r4
	< c c' >16\mf[ r < c c' > r < c c' > r < c c' >] r < c c' >8->\f r r4
	< c c' >16\mf[ r < c c' > r < c c' > r < c c' >] r < b b' >8\f r r4
	< bflat bflat' >8\f r r4 r2
	< a a' >8 r r4 r2
	< f f' >8 r r4 r2
	< d d' >8 r r4 r2
	r8 < d' d' >8\mf~_\markup { \translate #(cons 4 -1) \italic cresc. } < d d' >4
		r8 < d d' >8~ < d d' >4
	r8 < d d' >8~ < d d' >4 r8 < d d' >8~ < d d' >4
	r8 < d d' > r8 < d d' > r8 < d d' > r8 < d d' >
	<< { d8[\< d d d] d[ d d d]\! } \\ { d8[ d d d] d[ d d d] } >>
	< a a' >8\ff[ \tuplet 3/2 { < a' csharp >16 < a csharp > < a csharp >] } < a csharp >8[ < a csharp >]
		< a csharp >[ < a csharp > < a csharp > < a csharp >]
	< e, e' > \tuplet 3/2 { < gsharp' b >16[ < gsharp b > < gsharp b >] } < gsharp b >8 r
		< d, d' > r < csharp csharp' > r
	< b b' >8 \tuplet 3/2 { < b'' d >16[ < b d > < b d >] } < b d >8[ < b d >]
		< b d >[ < b d >] < b d >[ < b d >]
	< fsharp, fsharp' >8[ \tuplet 3/2 { < asharp' csharp >16 < asharp csharp > < asharp csharp >] }
		< asharp csharp >8[ < a bsharp >] < asharp csharp >[ < asharp csharp >] < e, e' >[ < a' csharp >]
	< d,, d' >8 r r4 < csharp csharp' >8 r r4
	< b b' >8 r r4 << { a'8 } \\ { a8 } >> r8 r4
	<< { gsharp8 } \\ { gsharp8 } >> r8 r4 < d d' >8 r < csharp csharp' >8 r
	<< { gsharp'8 } \\ { gsharp8 } >> r8 r4 < d d' >8 r < e e' > r
	< a a' >8\ff[ \tuplet 3/2 { < a' csharp >16 < a csharp > < a csharp >] } < a csharp >8[ < a csharp >]
		< a csharp >[ < a csharp > < a csharp > < a csharp >]
	< e, e' > \tuplet 3/2 { < gsharp' b >16[ < gsharp b > < gsharp b >] } < gsharp b >8 r
		< d, d' > r < csharp csharp' > r
	< b b' >8 \tuplet 3/2 { < b'' d >16[ < b d > < b d >] } < b d >8[ < b d >]
		< b d >[ < b d >] < b d >[ < b d >]
	< fsharp, fsharp' >8[ \tuplet 3/2 { < asharp' csharp >16 < asharp csharp > < asharp csharp >] }
		< asharp csharp >8[ < a bsharp >] < asharp csharp >[ < asharp csharp >] < e, e' >[ < a' csharp >]
	< d,, d' >8 r r4 < csharp csharp' >8 r r4
	< b b' >8 r r4 << { a'8 } \\ { a8 } >> r8 r4
	<< { gsharp8 } \\ { gsharp8 } >> r8 r4 r2
	r2 r4 << { csharp'4 } \\ { csharp4\p\< } >>
	<< { \stemDown < bsharp dsharp >8 \stemNeutral } \\ { s8\mf\! } >> r8 r4 r2
	r2 r4 << { < e, csharp' >4 } \\ { s4\p\< } >>
	<< { csharp'8 r r dsharp->( e) r r4 } \\ { asharp,8\f\! r r4 r2 } >>
	<< { r4 r8 dsharp->( e) r r4 } \\ { R1 } >>
	<< { r4 r8 gsharp8( a!) r r bsharp,( } \\ { r2 r4 r8 gsharp~ } >>
	<< { csharp8) r r e!->( esharp) r r esharp,( } \\ { gsharp8 r r4 r r8 esharp8( } >>
	<< { fsharp8) } \\ { fsharp8) } >> r8 r < b dsharp >( < b e >)
		<< { g!16[( a] bflat8)[ a16( g] } \\ { g,!16\f[( a] bflat8)[ a16( g] } >>
	<< { fsharp'8) } \\ { fsharp,8) } >> r8 r4 r2
	
	R1*3
	
	r2 r8
		\clef "tenor"
		< g' d' >8\mf~ < g d' > r
	r2 r8 < g d' >~ < g d' > r
	r2 r4 r8
		\clef "bass"
		< d fsharp >8(
	< d g >) r r4 r r8 < g b >(_\cr
	< g c >) r r < f a >( < f bflat >) r r
		\clef "tenor"
		< eflat' g >(
	< eflat aflat >) r r < csharp! esharp >( < csharp fsharp! >) r r < b! dsharp >(
	< b e! >\ff) r
		\clef "bass"
		<< { gsharp2 gsharp8 } \\ { gsharp2\mf gsharp8 } >> r8
	<< { b8 r b2 b8 r } \\ { g!8\f s g2\mf\> g8\! s } >>
	
	R1*6
	
	<< { b,8^\p[^( d f b] e^) r r4 } \\ { R1 } >>
	<< { b,8^\p[^(^\< d f b] e^)^\! r r4 } \\ { R1 } >>
	
	R1*6
	
	<< { r8 b,^\p[^( dsharp fsharp] b^) r r4 } \\ { R1 } >>
	R1
	<< { r8 b,[^( dsharp fsharp] b^) r r4 } \\ { R1 } >>
	R1
	<< { r8 a,[^( csharp e] a^) r r4 } \\ { R1 } >>
	R1
	<< { r8 a,[^( csharp e] a^) r r4 } \\ { R1 } >>
	R1
	r2 < gsharp, f' >\p_\markup { \translate #(cons 4 -1) \italic cresc. }
	r2 < g! f' >
	< fsharp! fsharp'! >\< < f gsharp' >
	< e gsharp' > < d d' >4\! < dflat dflat' >
	< c c' >4\ff r r2
	< c c' >4 r << { bflat'4 a } \\ { bflat,4 a' } >>
	<< { g4 } \\ { g4 } >> r r2
	< d d' >4 r < d d' > < c c' >
	< bflat bflat' >8 r r4 << { a'8 } \\ { a8 } >> r8 r4
	<< { g8 } \\ { g8 } >> r r4 << { f8 } \\ { f8 } >> r < f f' >8 r
	< eflat eflat' > r < d d' > r < c c' > r < bflat bflat' > r
	<< { a'1~ } \\ { a1\ff~ } >>
	<< { a8[ a'] bflat[ e,] f[ bflat,] b[ e,] } \\ { a8[ a] bflat[ e,] f[ bflat,] b[ e] } >>
	<< { a1~ } \\ { a1~ } >>
	<< { a8[ a'] bflat[ e,] f[ bflat,] b[ e,] } \\ { a8[ a] bflat[ e,] f[ bflat,] b[ e] } >>
	<< { a1~ } \\ { a1~ } >>
	<< { a8[ b'!] c[ f,] fsharp[ c!] csharp[ gsharp] } \\ { a8[ b!] c[ f,] fsharp[ c] csharp[ gsharp'] } >>
	<< { a1~ } \\ { a1~ } >>
	<< { a8[ b'!] c[ f,] fsharp[ c!] csharp[ gsharp] } \\ { a8[ b!] c[ f,] fsharp[ c] csharp[ gsharp'] } >>
	<< { a1~ } \\ { a1~ } >>
	<< { a1~ } \\ { a1~ } >>
	<< { a8 } \\ { a8\ff } >> r < a a' >8 r < a a' >8 r < a a' >8 r
	< a a' >8 r < a a' >8 r < a a' >8 r < a a' >8 r
	< a a' >8 r r4 r2
	< a a' >8 r < a a' >8 r < a a' >8 r < a a' >8 r
	< a a' >8 r r4 r2
	< a a' >8 r < a a' >8 r < a a' >8 r < a a' >8 r
	< a a' >8 r r4 r2
	
	s1*46
	s1*11
	
	< d d' >1\pp
	< csharp e' >2._\cr < c d' >4
	< b d' >1
	< asharp csharp' >2 < a b' >
	< gsharp b' > < g a' >
	< fsharp a' > < f g' >
	< e g' > < eflat asharp' >
	< d b'' >8\mf r r4 r2
	
	R1*11
	
	< bflat'' d >8\ff[ < bflat d >16. < bflat d >32] < bflat d >8[ < bflat d >16. < bflat d >32] < c eflat >8 r r4
	< bflat d >8[ < bflat d >16. < bflat d >32] < bflat d >8[ < bflat d >16. < bflat d >32] < c eflat >8 r r4
	< bflat d >8[_\cr < bflat d >16. < bflat d >32] < b d >8 r < e, c' >8[
		< e c' >16. < e c' >32] < eflat csharp' >8 r
	< d d' >8[ < d d' >16. < d d' >32] < d d' >8 r << { b!8[ b16. b32] bflat8 } \\ { b8[ b16. b32] bflat8 } >> r8
	<< { a8 } \\ { a8\ff } >> r8 << { a8 } \\ { a8 } >> r << { a4^> } \\ { a4_> } >> r4
	<< { a8 } \\ { a8 } >> r8 << { a8 } \\ { a8 } >> r << { a4^> } \\ { a4_> } >> r4
	
	R1*10
	
	<< { r2 d8^\p[( fsharp a d]) } \\ { R1 } >>
	<< { c4( b8[ a] g[ fsharp g b]) } \\ { R1 } >>
	<< { b1^\cr } \\ { R1 } >>
	<< { bflat2( a) } \\ { R1 } >>
	<< { a2\pp g } \\ { R1 } >>
	<< { gsharp1~ } \\ { R1 } >>
	<< { gsharp2. a4 } \\ { R1 } >>
	<< { bflat8 r r4 r2 } \\ { R1 } >>
	
	R1*3
	
	r2 r8 < bflat, g' >8\p[ < bflat g' > < bflat g' >]
	r2 r8 < a fsharp' >8\p[ < a fsharp' > < a fsharp' >]
	
	R1*2
	
	r2 r4 \tuplet 3/2 { < a a' >8\f[ < a a' > < a a' >] }
	r2 r4 \tuplet 3/2 { < b b' >8[ < b b' > < b b' >] }
	r8 < bsharp bsharp' > r4 r8 < csharp csharp' > r4
	r8 < d d' > r4 r8 < eflat c' > r4
	
	R1*6
	
	< a, fsharp' >16\pp[ r < a fsharp' > r < a g' > r < a gsharp' >] r < a a' >[ r < a fsharp' > r < a g'! > r < a gsharp' >] r
	< a a' >[ r < a dsharp > r < a e' > r < a csharp >] r < a d >[ r < a fsharp >] r < a d >4->
	< a csharp >16[ r < a fsharp' > r < a g' > r < a gsharp' >] r < a a' >[ r < a fsharp' > r < a g'! > r < a gsharp' >] r
	< a a' >[ r < a dsharp > r < a e' > r < a csharp >] r < a d >[ r < a fsharp >] r < a d >4->
	< a csharp >16 r r8 r4 r2
	
	R1*2
	
	r2 < g g' >8\f r r4
	r2 < g g' >8\f r r4
	r2 < f f' >8 r r4
	r2 < f f' >8\f r r4
	< f f' >8[ < f f' > < f f' > < f f' >] < e e' >\f r r4
	< e e' >8\f r r4 < eflat eflat' >8 r r4
	< d d' >8 r r4 < d d' >8 r r4
	< bflat bflat' >8[ < bflat bflat' >] r < bflat bflat' >[ < bflat bflat' > < bflat bflat' >] r < bflat bflat' >
	<< { g'8[ g] r g[ g g] r g } \\ { g8[ g] s g[ g g] s g } >>
	r8 < b'! d >8\mf~ < b d >4_\cr r8 < b d >8~ < b d >4
	r8 < b! d >8~ < b d >4 r8 < b d >8~ < b d >4
	r8 < b d > r8 < b d > r8 < b d > r8 < b d >
	< b d >2:8 < b d >:
	
	%%% CODA %%%
	
	< d,, d' >8\f r r4 r2
	
	R1*2
	
	r4 << { d'2 } \\ { d2\f } >> r4
	r4 << { csharp2 } \\ { csharp2 } >> r4
	r4 << { b2 } \\ { b2 } >> r4
	r4 < a f' >8[ < a fsharp >] < gsharp e' > r < gsharp e' >[ < g e' >]
	< fsharp d' > r r4 r2
	< f d' >8 r r4 r2
	< f f' >8 r r4 r2
	< g g' >8\f r < fsharp! fsharp'! > r < g g' > r < fsharp fsharp' > r
	< g g' >1\f
	<< { gsharp'2.( gsharp,8)[ gsharp] } \\ { gsharp2.~ gsharp8[ gsharp] } >>
	<< { a8 } \\ { a8\ff } >> r8 r4 r2
	
	R1*3
	
	r8 < a' csharp >\f[ < bflat d > < a csharp >] < bflat d > < a, a' >\ff[ < a a' > < a a' >]
	< g g' > < a' csharp >\f[ < bflat d > < a csharp >] < bflat d > < a, a' >\ff[ < a a' > < a a' >]
	< g g' > < a' csharp >\f[ < bflat d >] < a, a' >\ff[ < g g' >] < a' csharp >\f[ < bflat d >] < a, a' >\ff
	< g g' > < a' csharp >[ < bflat d >] < g, g' >[ < g g' >] r r < g g' >
	< d d' >\ff[ < d' d' > < csharp csharp' > < b b' >] < bflat bflat' >4 < a a' >8[ < g g' >]
	< fsharp fsharp' >[ < d' d' > < csharp csharp' > < b! b'! >] < bflat bflat' >4 < a a' >8[ < g g' >]
	< fsharp fsharp' > < esharp esharp' >[ < fsharp fsharp' > < g g' >] < gsharp gsharp' >[ < a a' > < asharp asharp' > < b b' >]
	<< { csharp'8[ d, dsharp e] eflat-> } \\ { csharp8[ d dsharp e] eflat_> } >> r8 r < a, a' >8
	< d, d' > < d' d' >[ < csharp csharp' > < b b' >] < bflat bflat' >4 < a a' >8[ < g g' >]
	< d d' > < d' d' >[ < csharp csharp' > < b b' >] < bflat bflat' >4 < a a' >8[ < g g' >]
	< fsharp fsharp' > < esharp esharp' >[ < fsharp fsharp' > < g g' >] < gsharp gsharp' >[ < a a' > < asharp asharp' > < b b' >]
	<< { csharp'8[ d, dsharp e] eflat-> } \\ { csharp8[ d dsharp e] eflat_> } >> r8 r < a, a' >8
	< d, d' > r < b' b' > r < a a' > r < fsharp fsharp' > r
	< d d' > r < b' b' > r < a a' > r < fsharp fsharp' > r
	< d d' > r < b b' > r < d d' > r < b b' > r
	< d d' > r < b b' > r < d d' > r < b b' > r
	< d d' >[ < d d' > < d d' > < d d' >] < d d' >[ < d d' > < d d' > < d d' >]
	< d d' >4 < d d' > < d d' > < d d' >
	< d d' >1\fermata
}
