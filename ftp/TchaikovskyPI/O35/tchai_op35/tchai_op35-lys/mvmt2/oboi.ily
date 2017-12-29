\version "2.18.2"
theOboes =  \relative d'' {
	
	\clef "treble"
	\key g \minor
	
	<< { a2.^\p^\< } \\ { R1*3/4 } >>
	<< { c2 d4^\! } \\ { r4 r f,\p\< } >>
	<< { bflat8 r r4 r } \\ { g2( gflat4)\! } >>
	<< bflat2. \\ f2. >>
	
	R1*3/4*2
	
	<< { gflat4^\pp(^\<  f) g(^\! } \\ { R1*3/4 } >>
	<< { fsharp4) r r } \\ { R1*3/4 } >>
	
	R1*3/4*44
	
	r4 r r8 < bflat g' >8\mf
	< aflat aflat' >[ < a fsharp' >] < bflat g' >4 r8 < bflat g' >8
	< aflat aflat' >[ < a fsharp' >] < bflat g' >4 r
	< csharp g' > < d fsharp > r
	< b f' >_\markup { \italic dim. } < c! e > < a eflat' >
	< bflat d > < g dflat' > < aflat c >8 r
	
	R1*3/4*36
	r1*3/4^\fermata
	
	<< { a2.^\p^\< } \\ { R1*3/4 } >>
	<< { c2 d4\! } \\ { r4 r f,\p } >>
	<< { bflat8 r r4 r } \\ { g2(_\< gflat4)\! } >>
	<< { bflat2. } \\ { f2. } { s4\> s4 s4\! } >>
	
	R1*3/4*2
	
	<< { gflat4(^\cr f) g( } \\ { R1*3/4 } >>
	<< { fsharp4) r r } \\ { R1*3/4 } >>
	
	R1*3/4*7
	
	< f c' >2.\mf
	R1*3/4
	< aflat f' >2.\p
	R1*3/4
	< d gsharp >2.
	
	R1*3/4*3
	r1*3/4^\fermata
}
