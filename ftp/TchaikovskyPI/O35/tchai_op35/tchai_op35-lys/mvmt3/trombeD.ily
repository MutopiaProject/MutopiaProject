\version "2.18.2"

theTrumpets =  \relative d' {
	\clef "treble"
	\time 2/4
	\key c \major
	
	\set Score.skipBars = ##t
	\override Score.TupletBracket.bracket-visibility = ##f
	
	\transposition d
	
	<< { g8 } \\ { g8\ff } >> r8 r4		|
	r4 << { d'4~ } \\ { c4~ } >>		|
	<< { d4 d,~ } \\ { c'4 c,4~ } >>	|
	<< { d4 g8 } \\ { c,4 b8 } >> r8	|
	R1*2/4
	r4 < fsharp' d' >4~					|
	< fsharp d' > < d fsharp! >			|
	< d g >8 r r4						|
	
	R1*2/4*7
	
	r4 < b' d >8\ff r
	
	R1*2/4*128
	
	< b d >8 r r4
	
	R1*2/4*167
	
	< aflat, aflat' >8\ff r < aflat aflat' >[ < aflat aflat' >]
	< bflat bflat' >[ < bflat bflat' >] < b aflat' > r
	
	R1*2/4*2
	
	< aflat aflat' >8 r < aflat aflat' >[ < aflat aflat' >]
	< bflat bflat' >[ < bflat bflat' >] < c aflat' > r
	
	R1*2/4*2
	
	< f dflat' >8 r < f dflat' >[ < f dflat' >]
	< e! dflat' >[ < e dflat' >] < f dflat' > r
	
	R1*2/4*2
	
	< bflat d >8 r < bflat d >[ < bflat d >]
	< f c' >[ < f c' >] < f d' > r
	r4 r8 < bflat d >
	< f c' >[ < f c' >] < f d' > r
	r4 r8 < bflat d >
	< f c' >[ < f c' > < f d' > < f d' >]
	< f c' >[ < f c' > < f d' > < f d' >]
	< f c' >[ < f c' > < f d' > < f d' >]
	< g dflat' > r r4
	
	R1*2/4*15
	
	< f f' >8\ff r r4
	
	R1*2/4*190
	
	< c c' >8\f r r4
	
	R1*2/4*23
	
	< c c' >8\ff r < c c' >[ < c c' >]
	< c c' >[ < c c' >] < c c' > r
	
	R1*2/4*2
	
	< c c' >8 r < c c' >[ < c c' >]
	< b b' >[ < b b' >] < c c' > r
	
	R1*2/4*2
	
	< f c' >8 r < f c' >[ < f c' >]
	< f d' >[ < f f' >] < f c' > r
	
	R1*2/4*2
	
	< d d' >8 r < d d' >[ < d d' >]
	< d d' >[ < d d' >] < d d' > r
	
	R1*2/4*2
	
	< d d' >8 r < d d' >[ < d d' >]
	< d d' >[ < d d' >] < d d' > r
	
	R1*2/4*2
	
	< d d' >8 r < d d' >[ < d d' >]
	R1*2/4
	< d d' >8 r < d d' >[ < d d' >]
	R1*2/4
	< d d' >8[ < d d' >] r4
	< d d' >8[ < d d' >] r4
	< d d' >8[ < d aflat' >] r4
	< d d' >8[ < d g >] r4
	< e e' >8[ < c c' >] r4
	< f f' >8[ < c c' >] r4
	< c c' >8[ < c c' >] r4
	
	R1*2/4*6
	
	r4 r8 << g'8 \\ g8\f >>
	< e c' >8 r r4
	
	R1*2/4*3
	
	< c c' >8\f r r4
	
	R1*2/4*3
	
	< c c' >8 r r4
	
	R1*2/4*3
	
	< c c' >8 r r4
	
	R1*2/4*3
	
	< c c' >8\f r < d b' > r
	< e c' >8 r < d b' > r
	< e c' >8 r < d b' > r
	< e c' >8 r < d b' > r
	< c c' > r r4
	r4 < c c' >~
	< c c' >8 r r4
	r4 < c c' >~
	< c c' >8 r < c c' >4~
	< c c' >8 r < c c' >4~
	< c c' >8 r r4
	< c c' >8 r r4
	< c c' >8 r r4
	< b b' >8 r r4
	< c c' >8\ff[ < g' b >] < c, c' >[ < g' b >]
	< c, c' >8[ < g' b >] < c, c' >[ < g' b >]
	< c, c' >8[ < g' b >] < c, c' >[ < g' b >]
	< c, c' >8[ < g' b >] < c, c' >[ < g' b >]
	< c, c' >8 r < c c' >[ < c g' >]
	< d b' >[ < b' d >] << c8 \\ c8 >> r
	< b d >8 r r4
	< e, c' >8 r r4\fermata
}
