\version "2.18.2"

theHornsfirst =  \relative c' {
	\transposition f
	\clef "treble"
	\key c \major	
	
	< e e' >8\ff r r4
	r4 << { b'4~ } \\ { a4~ } >>
	<< { b4 b,4~ } \\ { a'4 a,~ } >>
	<< { b b'8 } \\ { a,4 e'8 } >> r8
	
	R1*2/4
	
	r4 < dsharp b' >~
	< dsharp b' > < b dsharp >
	< b e >8 r r4
	
	R1*2/4*4
	
	< a fsharp' >2
	< csharp a' >
	< d b' >4 < dsharp c' >
	< e csharp' > < gsharp e' >8 r
	
	R1*2/4*40
	
	< fsharp fsharp' >16\f r r8 r4
	
	R1*2/4*7
	
	< f f' >8\f r r4
	R1*2/4
	< e b' >8\p r < e b' > r
	< fsharp b > r < e b' > r
	
	R1*2/4*20
	
	< c c' >4\f^>(^\markup {I.II.} < b b' >)
	< b b' >8 r r4
	< c c' >4^>( < b b' >^>)
	< b b' >8 r r4
	
	R1*2/4*8
	
	<< { R1*2/4 } \\ { csharp2:8\p } >>
	< b e >2:
	< b e >2:
	< b e >8[\< < b e >] < a e' >[ < a e' >]\!
	< csharp csharp' >16\f r r8 r4
	< fsharp d' >16\mf r r8 r4
	
	R1*2/4*38
	
	< e e' >8 r r4
	
	R1*2/4*34
	
	r4 << { csharp'8[^\markup {I.II.} csharp] } \\ { csharp8\mf[ csharp] } >>
	<< { csharp4-> b8[ a] } \\ { csharp4-> b8[ a] } >>
	<< { gsharp8[ fsharp] csharp'8[ csharp] } \\ { gsharp8[ fsharp] csharp'[ csharp] } >>
	<< { csharp4-> b8[ a] } \\ { csharp4-> b8[ a] } >>
	<< { gsharp4 e'8[ b] } \\ { gsharp4 e'8[ b] } >>
	<< { csharp4-> b8[ a] } \\ { csharp4-> b8[ a] } >>
	<< { gsharp8[ fsharp] csharp'8[ csharp] } \\ { gsharp8[ fsharp] csharp'[ csharp] } >>
	<< { csharp4-> b8[ a] } \\ { csharp4-> b8[ a] } >>
	<< { gsharp4 } \\ { gsharp4 } >> r4
	
	R1*2/4*58
	
	< fsharp fsharp' >16\f r r8 r4
	
	R1*2/4*7
	
	< f f' >8\f r r4
	R1*2/4
	< e b' >8\p r < e b' >\< r
	< fsharp b > r < e b' >\! r
	
	R1*2/4*20
	
	< c c' >4\f^>(^\markup {I.II.} < b b' >)
	< b b' >8 r r4
	< c c' >4^>( < b b' >^>)
	< b b' >8 r r4
	
	R1*2/4*29
	
	r4^\markup {I.II.} r8 < c c' >8\p
	< c a' >\ff r < c a' >[ < c a' >]
	< e c' >[ < e c' >] < f dflat' > r
	
	R1*2/4*2
	
	< c a' >8 r < c a' >[ < c a' >]
	< e c' >[ < e bflat' >] < f d' > r
	
	R1*2/4*2
	
	< bflat f' >8 r < bflat f' >[ < bflat f' >]
	< bflat g' >[ < bflat g' >] < bflat f' > r
	
	R1*2/4*2
	
	< g d' >8 r < g d' >[ < g d' >]
	< fsharp a >[ < fsharp a >] < g b > r
	r4 r8 < g d' >
	< fsharp a >[ < fsharp a >] < g b > r
	r4 r8 < g d' >
	< fsharp a >[ < fsharp a > < g b > < g b >]
	< fsharp a >[ < fsharp a > < g b > < g b >]
	< fsharp a >[ < fsharp a > < g b > < g b >]
	< g bflat >8 r r4
	
	R1*2/4*15
	
	< a fsharp' >8\ff r r4
	
	R1*2/4*18
	
	<< { r4^\markup {I. Solo.} csharp4^>^\p~ } \\ { R1*2/4 } >>
	<< { csharp4 a^>~ } \\ { R1*2/4 } >>
	<< { a4 d^>~ } \\ { R1*2/4 } >>
	<< { d4 a^>~ } \\ { R1*2/4 } >>
	<< { a4 csharp4^>~ } \\ { R1*2/4 } >>
	<< { csharp4 a^>~ } \\ { R1*2/4 } >>
	<< { a4 d^>~ } \\ { R1*2/4 } >>
	<< { d4 a^>~ } \\ { R1*2/4 } >>
	<< { a4 r4 } \\ { R1*2/4 } >>
	
	R1*2/4*7
	
	r4^\markup {I.II.} << { b8[ b] } \\ { b8\mf[ b] } >>
	<< { b4^> a8[ g] } \\ { b4-> a8[ g] } >>
	<< { fsharp8[ e] b'[ b] } \\ { fsharp8[ e] b'[ b] } >>
	<< { b4^> a8[ g] } \\ { b4-> a8[ g] } >>
	<< { fsharp4 d'8[ a] } \\ { fsharp4 d'8[ a] } >>
	<< { b4^> a8[ g] } \\ { b4-> a8[ g] } >>
	<< { fsharp8[ e] b'[ b] } \\ { fsharp8[ e] b'[ b] } >>
	<< { b4^> a8[ g] } \\ { b4-> a8[ g] } >>
	<< fsharp4 \\ fsharp4 >> r4
	
	R1*2/4*71
	
	< fsharp fsharp' >16\f r r8 r4
	
	R1*2/4*7
	
	< f f' >8\f r r4
	R1*2/4
	< e b' >8\p r < e b' > r
	< fsharp b > r < e b' > r
	
	R1*2/4*20
	
	< c c' >4\f^>(^\markup {I.II.} < b b' >)
	< b b' >8 r r4
	< c c' >4^>( < b b' >^>)
	< b b' >8 r r4
	
	R1*2/4*8
	
	<< { R1*2/4 } \\ { csharp2:8\p } >>
	< b e >2:
	< b e >2:
	< b e >8[\< < b e >] < a e' >[ < a e' >]\!
	< csharp csharp' >16\f r r8 r4
	< fsharp d' >16\mf r r8 r4
	
	R1*2/4*26
	
	< csharp' e >8\f r r4
	r4 << { csharp8[ csharp] } \\ { csharp8\p[ csharp] } >>
	<< { csharp4-> b8[ asharp] } \\ { csharp4-> b8[ asharp] } >>
	<< { g8[( fsharp]) } \\ { g8[( fsharp]) } >> < e a >8->\p[ < e a >->]
	R1*2/4
	r4 << { dsharp'8[ dsharp] } \\ { dsharp8[_\cr dsharp] } >>
	<< { dsharp4-> csharp8[ bsharp] } \\ { dsharp4-> csharp8[ bsharp] } >>
	<< { a8[( gsharp]) bsharp[ bsharp] } \\ { a8[( gsharp]) fsharp\mf[ fsharp] } >>
	<< { gsharp2~^\cr } \\ { e2~ } >>
	<< { gsharp4 gsharp8[ gsharp] } \\ { e4 fsharp8[ e] } >>
	<< { a2~ } \\ { fsharp2~ } >>
	<< { a4 fsharp8[ asharp] } \\ { fsharp4 c!8[ fsharp] } >>
	< b, gsharp' >2~
	< b gsharp' >4 < gsharp b >8[ < b gsharp' >]
	< a fsharp' >2~
	< a fsharp' >4 < fsharp dsharp' >8[ < a fsharp' >]
	<< { f'!4->( e->) } \\ { b2\f } >>
	<< { f'!4->( e->) } \\ { b2 } >>
	<< { a'4->( gsharp->) } \\ { d2 } >>
	<< { a'4->( gsharp->) } \\ { d2 } >>
	r8 < gsharp e' > r < gsharp e' >
	r < gsharp e' > r < gsharp e' >
	r < gsharp e' > r < gsharp e' >
	r < gsharp e' >[ < gsharp e' > < gsharp e' >]
	< csharp e >\ff r < csharp e >[ < csharp e >]
	< d fsharp >[ < d fsharp >] < csharp e > r
	
	R1*2/4*2
	
	< fsharp, fsharp' >8 r < fsharp fsharp' >[ < fsharp fsharp' >]
	< fsharp fsharp' >[ < fsharp fsharp' >] < fsharp fsharp' > r
	
	R1*2/4*2
	
	< fsharp fsharp' >8 r < fsharp fsharp' >[ < fsharp fsharp' >]
	< g g' >[ < b g' >] < a fsharp' > r
	
	R1*2/4*2
	
	< fsharp d' >8 r < fsharp d' >[ < fsharp d' >]
	< g e' >[ < g e' >] < fsharp d' > r
	
	R1*2/4*2
	
	< fsharp d' >8 r < fsharp d' >[ < fsharp d' >]
	< g e' >[ < g e' >] < fsharp d' > r
	
	R1*2/4*2
	
	< fsharp d' >8 r < fsharp d' >[ < fsharp d' >]
	R1*2/4
	< fsharp d' >8 r < fsharp d' >[ < fsharp d' >]
	R1*2/4
	< fsharp d' >8[ < fsharp d' >] r4
	< fsharp d' >8[ < fsharp d' >] r4
	< f! d' >8[ < f d' >] r4
	< e d' >8[ < e d' >] r4
	< a e' >8[ < a e' >] r4
	< a d >8[ < a d >] r4
	< dsharp, dsharp' >8[ < dsharp dsharp' >] r4
	
	R1*2/4*3
	
	r8 < gsharp csharp >\f[ < fsharp csharp' > < esharp csharp' >]
	< fsharp csharp' > r r4
	R1*2/4
	< e e' >8[ < gsharp b > < a csharp > < gsharp d' >]
	<< { csharp8 r b8->[ b->] } \\ { a8 r8 r4 } >>
	<< { b4-> a8->[ gsharp->] } \\ { R1*2/4 } >>
	<< { f!8->[( e]) r4 } \\ { R1*2/4 } >>
	R1*2/4
	< e e' >8\f r << { b'8->[ b->] } \\ { r4 } >>
	<< { b4-> a8->[ gsharp->] } \\ { R1*2/4 } >>
	<< { f8->[( e]) r4 } \\ { R1*2/4 } >>
	R1*2/4
	< e e' >8 r r4
	
	R1*2/4*3
	
	< csharp csharp' >8 r r4
	
	R1*2/4*3
	
	< csharp csharp' >8 r < e e' > r
	< e e' > r < e e' > r
	< e e' > r < e e' > r
	< e e' > r < e e' > r
	< e e' > r < a csharp >[ < a csharp >]
	< a csharp >4 < a csharp >8[ < a d >]
	< a e' > r < a csharp >[ < a csharp >]
	< a csharp >4 < a csharp >8[ < a d >]
	< a e' >8[ < a csharp > < a csharp > < a d >]
	< a e' >8[ < a csharp > < a csharp > < a d >]
	< a e' > r r4
	< e e' >8 r r4
	< fsharp fsharp' >8 r r4
	< d' e >8 r r4
	< csharp e >8\ff[ < e, b' >] < e csharp' >[ < e b' >]
	< e csharp' >[ < e b' > < e csharp' > < e b' >]
	< e csharp' >[ < e b' > < e csharp' > < e b' >]
	< e csharp' >[ < e b' > < e csharp' > < e b' >]
	< e csharp' > r < e csharp' >[ < e csharp' >]
	< e e' >[ < e e' >] << a8 \\ a8 >> r8
	< gsharp b > r r < e e' >
	< e e' > r r4\fermata
}
