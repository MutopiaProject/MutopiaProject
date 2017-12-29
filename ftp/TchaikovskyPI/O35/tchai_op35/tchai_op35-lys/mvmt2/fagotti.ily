\version "2.18.2"

theBassoons =  \relative d' {
	\set Score.skipBars = ##t
	
	\clef "bass"
	\key g \minor
	
	<< { R1*3/4 } \\ { d2.\p\< } >>
	<< { eflat2^\p^\< d4^\! } \\ { c2 bflat4^\! } >>
	<< eflat2. \\ eflat,2. >>
	<< f2. \\ bflat,2. >>
	<< { c4( d eflat) } \\ { c4\pp( bflat a) } >>
	<< { c4( d eflat) } \\ { c4( bflat a) } >>
	<<  { eflat'4( dflat) e( } \\ { aflat,4(\< dflat) a(\! } >>
	<< { d!4) d,!4^\p eflat!8[( g] } \\ { d'8) r r4 r } >>
	<< { bflat!8[ eflat g bflat!)^\< b c]^\! } \\ { r2 eflat,!4\mf~ } >>
	<< { d'8[_(^\> eflat d c b a]_)^\! } \\ { eflat2. }  { s4.\> s4 s8\! } >>
	<< { bflat'!2 bflat4~ } \\ { d,2\p d4\pp~ } >>
	<< { bflat'4 a8[( bflat] a4) } \\ { d,4 d2 } >>
	
	R1*3/4*40
	
	<< { r4 r r8 dflat'8^\mf } \\ { R1*3/4 } >>
	<< { c8[ cflat] bflat4 r8 dflat8 } \\ { r4 eflat,\mf r4 } >>
	<< { c'!8[ cflat] bflat4 } \\ { r4 eflat, } >> r4
	< eflat eflat' >4 < d d' > r
	< dflat dflat' >_\markup { \italic dim. } < c c' > < c c' >
	< bflat bflat' > < bflat bflat' > < aflat aflat' >8 r
	
	R1*3/4*18
	
	<< { a'4.^> r8 r4 } \\ { d,4. c8[( bflat a]~ } >>
	<< { R1*3/4 } \\ { a8) r r4 r } >>
	
	R1*3/4*16
	r1*3/4\fermata
	
	<< { R1*3/4 } \\ { d'2._\p\< } >>
	<< { eflat2 d4 } \\ { c2 bflat4\! } >>
	<< { \stemDown < eflat, eflat' >2. \stemNeutral } \\ { s4.\< s4 s8\! } >>
	<< f2. \\ bflat,2. >>
	<< { c4( d eflat) } \\ { c4\pp( bflat a) } >>
	<< { c4( d eflat) } \\ { c4( bflat a) } >>
	<<  { eflat'4( dflat) e( } \\ { aflat,4(\<_\cr dflat) a(\! } >>
	<< { d4) d,!4( eflat!4) } \\ { d'8) r r4 r } >>
	R1*3/4
	<< { r4 r eflat'\mf } \\ { R1*3/4 } >>
	R1*3/4
	<< d2. \\ R1*3/4 >>
	R1*3/4
	<< { r4 r dflat } \\ R1*3/4 >>
	R1*3/4
	<< c2. \\ R1*3/4 >>
	R1*3/4
	<< { b4 b8[( asharp] b4) } \\ { R1*3/4 } >>
	R1*3/4
	<< { e2. } \\  { bflat!4 bflat8[( a] bflat4) } >>
	R1*3/4
	< d, d' >8\pp[( < csharp csharp' >] < d d' >2)
	R1*3/4
	r1*3/4^\fermata	
}
