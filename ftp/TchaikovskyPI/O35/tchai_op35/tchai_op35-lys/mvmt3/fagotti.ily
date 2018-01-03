\version "2.18.2"

theBassoons =  \relative d {
	\set Score.skipBars = ##t
	
	\clef "bass"
	\key d \major
	
	< a a' >8\ff r r4
	< bflat, bflat' >2
	< bflat' bflat' >2
	< bflat bflat' >4 < a a' >8 r
	R1*2/4
	< bflat, bflat' >4 < b b' >
	< csharp csharp' > < d d' >
	< csharp csharp' >8 r r4
	R1*2/4
	
	\clef "tenor"
	<< { gsharp'''8-.[ gsharp16( fsharpsharp] gsharp8)[ gsharp,-.] } \\
		{ gsharp'8-.[ gsharp16( fsharpsharp] gsharp8)[ gsharp,-.] } >>
	<< { a4~ a8 } \\ { a4~ a8 } >> r8
	
	\clef "bass"
	<< { asharp,4~ asharp8 } \\ { asharp4\ff~ asharp8 } >> r8
	<< { b2 } \\ { b2 } >>
	d2
	< e d' >4 < esharp d' >
	< fsharp d' > << { a,8 } \\ { a8 } >> r8
	
	R1*2/4*40
	
	< d, d' >16\f r r8 r4
	
	R1*2/4*9
	
	< e' csharp' >8\p r < e c' > r
	< e d' > r < a csharp > r
	
	R1*2/4*32
	
	< d, a' >2:\p
	< d g >2:
	< d g >2:
	< d g >8[\< < d g >] < d fsharp >[ < d fsharp >]\!
	< d, d' >16\f r r8 r4
	< d d' >16\mf r r8 r4
	
	R1*2/4*38
	
	< a' a' >8 r r4
	
	R1*2/4*3
	
	<< { b'2^>^\p~ } \\ { R1*2/4 } >>
	<< { b4 d,~( } \\ { R1*2/4 } >>
	<< { d4 csharp8[ bsharp] } \\ { R1*2/4 } >>
	<< { csharp8) r r4 } \\ { R1*2/4 } >>
	<< { b'2^>^\p~ } \\ { R1*2/4 } >>
	<< { b4 d,~( } \\ { R1*2/4 } >>
	<< { d4 csharp8[ bsharp] } \\ { R1*2/4 } >>
	<< { csharp8) r r4 } \\ { R1*2/4 } >>
	
	R1*2/4*7
	
	r4 < a e' >4^>\p
	< a e' >4^> < a e' >4^>
	< a e' >4^> < a e' >4^>
	< a e' >4^> < a e' >4^>
	< a e' >4^> < a e' >4^>
	< a e' >4^> < a e' >4^>
	< a e' >4^> < a e' >4^>
	< a e' >4^> < a e' >4^>
	< a e' >4^> r
	
	R1*2/4*15
	
	r4 < fsharp fsharp' >8\mf[ < fsharp fsharp' >]
	< fsharp fsharp' >4 < e e' >8[ < d d' >]
	< csharp csharp' >[( < b b' >]) < fsharp' fsharp' >8[ < fsharp fsharp' >]
	< fsharp fsharp' >4 < e e' >8[ < d d' >]
	< csharp csharp' >[( < b b' >]) a'[ < a a' >]
	< fsharp fsharp' >4 < e e' >8[ < d d' >]
	< csharp csharp' >[( < b b' >]) < fsharp' fsharp' >8[ < fsharp fsharp' >]
	< e e' >[( < d d' > < csharp csharp' > < b b' >]
	a'8) r r4
	
	R1*2/4*9
	
	<< { r4 a'8-.[( b-.]) } \\ { R1*2/4 } >>
	<< { c4 \grace { b16[( c] } b8[ a]) } \\ { R1*2/4 } >>
	<< { \grace { a16[( b] } a8[ gsharp]) r4 } \\ { R1*2/4 } >>
	
	R1*2/4*38
	
	< d, d' >16\f r r8 r4
	
	R1*2/4*9
	
	< e' csharp' >8\p r < e c' >\< r
	< e d' > r < a csharp >\! r
	
	R1*2/4*53
	
	r4 r8 < c, eflat' >8\p
	< bflat bflat' >8\ff r < bflat,! bflat' >[ < bflat bflat' >]
	< f' f' >[ < f f' >] < e! e'! > r
	
	R1*2/4*2
	
	< bflat bflat' >8 r < bflat bflat' >[ < bflat bflat' >]
	< f' f' >[ < fsharp fsharp' >] < g g' > r
	
	R1*2/4*2
	
	< eflat eflat' >8 r < eflat eflat' >[ < eflat eflat' >]
	< eflat eflat' >[ < eflat eflat' >] < eflat eflat' > r
	
	R1*2/4*2
	
	< g g' >8 r < g g' >[ < g g' >]
	< g g' >[ < g g' >] < g g' > r
	r4 r8 < g g' >
	< g g' >[ < g g' >] < g g' > r
	r4 r8 < g g' >
	< g g' >[ < g g' > < g g' > < g g' >]
	< g g' >[ < g g' > < g g' > < g g' >]
	< g g' >[ < g g' > < g g' > < g g' >]
	< fsharp! fsharp'! > r r4
	
	R1*2/4*15
	
	< g g' >8\ff r r4
	
	R1*2/4*3
	
	<< { a'2^>^\p~ } \\ { R1*2/4 } >>
	<< { a4 c,~( } \\ { R1*2/4 } >>
	<< { c4 b8[ asharp] } \\ { R1*2/4 } >>
	<< { b8) r r4 } \\ { R1*2/4 } >>
	<< { a'2^>~ } \\ { R1*2/4 } >>
	<< { a4 c,~( } \\ { R1*2/4 } >>
	<< { c4 b8[ asharp] } \\ { R1*2/4 } >>
	<< { b8) r r4 } \\ { R1*2/4 } >>
	
	R1*2/4*32
	
	< g' d' >2\pp
	< g d' >
	< g d' >
	< g d' >
	< g d' >
	< g d' >
	< g d' >
	
	%%% MOLTO MENO MOSSO %%%
	
	< g d' >8 r r4
	
	R1*2/4*9
	
	<< { r4 b8-.^\p[( csharp-.]) } \\ { R1*2/4 } >>
	<< { \grace { b16[ csharp] } d4 csharp8[ b] } \\ { R1*2/4 } >>
	<< { \grace { b16[^( csharp] } b8[ a]^) } \\ { R1*2/4 } >>
	R1*2/4
	<< { r4 b8-.[( csharp-.]) } \\ { R1*2/4 } >>
	<< { \grace { b16[ csharp] } d4 csharp8[ b] } \\ { R1*2/4 } >>
	<< { \grace { b16[^( csharp] } b8[ a]^) } \\ { R1*2/4 } >>
	
	R1*2/4*23
	
	<< { r8 e,\p[^(\< g bflat] } \\ { d,1*2/4\rest } >>
	<< { csharp'8[ e]^)\! a4^>~ } \\ { R1*2/4 } >>
	<< { a8[( d,,\< f b]\! } \\ { R1*2/4 } >>
	<< { d8[ f]) b4->( } \\ { R1*2/4 } >>
	<< { a8) r r4 } \\ { R1*2/4 } >>
	<< { r4 < d,, f' >4\pp( } \\ { R1*2/4 } >>
	<< { < a' e' >4) r } \\ { R1*2/4 } >>
	<< { r4 < d, f' >4( } \\ { R1*2/4 } >>
	<< { < a' e' >4) r } \\ { R1*2/4 } >>
	
	R1*2/4*15
	
	< d, d' >16\f r r8 r4
	
	R1*2/4*9
	
	< e' csharp' >8\p r < e c' > r
	< e d' > r < a csharp > r
	
	R1*2/4*32
	
	< d, a' >2:\p
	< d g >2:
	< d g >2:
	< d g >8[\< < d g >] < d fsharp >[ < d fsharp >]\!
	< d, d' >16\f r r8 r4
	< d d' >16\mf r r8 r4
	
	R1*2/4*26
	
	<< { a'2~ } \\ { a2\p~ } >>
	<< { a2~ } \\ { a2~_\markup { \italic {poco a poco cresc.}} } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2 } \\ { a2 } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2 } \\ { a2 } >>
	<< { a2~^\cr } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2~ } \\ { a2~ } >>
	<< { a2 } \\ { a2 } >>
	<< a2 \\ a2\f >>
	<< a2 \\ a2 >>
	<< a2 \\ a2 >>
	<< a2 \\ a2 >>
	r8 << a8 \\ a8 >> r << a8 \\ a8 >>
	r << a8 \\ a8 >> r << a8 \\ a8 >>
	r << a8 \\ a8 >> r << a8 \\ a8 >>
	r << { a8[ a a] } \\ { a8[ a a] } >>
	< d, d' >8\ff r < d d' >[ < d d' >]
	< g g' >[ < g g' >] < d d' > r
	
	R1*2/4*2
	
	< b b' >8 r < b b' >[ < b b' >]
	< e e' >[ < e e' >] < b b' > r
	
	R1*2/4*2
	
	< g' g' >8 r < g g' >[ < g g' >]
	< c g' >[ < c g' >] < g g' > r
	
	R1*2/4*2
	
	< e e' >8 r < e e' >[ < e e' >]
	< a a' >[ < a a' >] < e e' > r
	
	R1*2/4*2
	
	< e e' >8 r < e e' >[ < e e' >]
	< a a' >[ < a a' >] < e e' > r
	
	R1*2/4*2
	
	< e e' >8 r < e e' >[ < e e' >]
	R1*2/4
	< e e' >8 r < e e' >[ < e e' >]
	R1*2/4
	< e e' >8[ < e e' >] r4
	< e e' >8[ < e e' >] r4
	< d d' >8[ < d d' >] r4
	< csharp csharp' >8[ < csharp csharp' >] r4
	< c c' >8[ < c c' >] r4
	< b b' >8[ < b b' >] r4
	< bflat bflat' >8[ < bflat bflat' >] r4
	
	R1*2/4*3
	
	r8 << { asharp'8[ b csharp] } \\ { asharp\f[ b, csharp] } >>
	< d d' >8[ < dsharp dsharp' > < e e' > < fsharp fsharp' >]
	< g g' >[ < gsharp gsharp' > < a a' > < b b' >]
	< a a' >[ < g! g'! > < fsharp fsharp' > < e e' >]
	< d d' > r r4
	R1*2/4
	r4 << { csharp'8->[ csharp->] } \\ { csharp,8->\f[ csharp->] } >>
	<< { csharp'4-> b8->[ a->] } \\ { csharp,4-> b'8->[ a->] } >>
	< d, d' >8\f r r4
	R1*2/4
	r4 << { csharp'8->[ csharp->] } \\ { csharp,8->[ csharp->] } >>
	<< { csharp'4-> b8->[ a->] } \\ { csharp,4-> b'8->[ a->] } >>
	< d, d' >8 r r4
	
	R1*2/4*3
	
	< d d' >8 r r4
	
	R1*2/4*3
	
	< d d' >8\f r << a'8 \\ a8 >> r
	< d, d' >8 r << a'8 \\ a8 >> r
	< d, d' >8 r << a'8 \\ a8 >> r
	< d, d' >8 r << a'8 \\ a8 >> r
	< d, d' >[^( < fsharp fsharp' > < a a' > < asharp asharp' >]
	< b b' >[ < d d' >^) < a! a'! >^( < g g' >]
	< fsharp fsharp' >[ < d d' >^) < a'! a'! >^( < asharp asharp' >]
	< b b' >[ < d d' >^) < a! a'! >^( < g g' >]
	< fsharp fsharp' >^)[ < b b' > < a a' > < g g' >]
	< fsharp fsharp' >[ < b b' > < a a' > < g g' >]
	< fsharp fsharp' > r r4
	< f f' >8 r r4
	< e e' >8 r r4
	< a a' >8 r r4
	<< { d8[ a d a] } \\ { d,8\ff[ a' d, a'] } >>
	<< { d8[ a d a] } \\ { d,8[ a' d, a'] } >>
	<< { d8[ a d a] } \\ { d,8[ a' d, a'] } >>
	<< { d8[ a d a] } \\ { d,8[ a' d, a'] } >>
	< d, d' >8 r < d d' >[ < d d' >]
	< a' a' >[ < a a' >] < d, d' >[ < fsharp fsharp' >]
	< a a' > r r << a8 \\ a8 >>
	< d, d' >8 r r4\fermata
}
