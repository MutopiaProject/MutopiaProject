\version "2.18.2"

theFlutes =  \relative d'' {
	\clef "treble"
	\key g \minor
	
	r1*3/4^\markup { \huge\bold {Andante.}}
	R1*3/4*31
	
	<< { r4 r d8^\p } \\ { R1*3/4 } >>
	<< { g4.^\markup { \italic espress. } a8[(\< bflat c]) } \\ { R1*3/4 } >>
	<< { \tuplet 3/2 { d8_.[_( d_. d_.^]_)\! } d16_.[_(\> d_. d_. d_.]_) d4\trill
		\bar "" \grace { csharp16[ d]\! } \bar "|" } \\ { R1*3/4 } >>
	<< { bflat8[( a g) fsharp( g eflat]) } \\ { R1*3/4 } >>
	<< { d8[( c a fsharp]) d4( } \\ { R1*3/4 } >>
	<< { g8) r r4 r } \\ { R1*3/4 } >>
	R1*3/4
	
	R1*3/4*34
	
	<< { r16 g'\mf[( bflat eflat] d8) d4-> d8 } \\ { R1*3/4 } >>
	<< { r16 a[( d g] fsharp8) fsharp4-> fsharp8 } \\ { R1*3/4 } >>
	<< { \stemDown g8[ g,]~ g[ g( g') a,]( \stemNeutral } \\ { R1*3/4 } >>
	<< { \stemDown a'8.)[ fsharp16] d[ a fsharp d]~ \stemNeutral d[ d,8 d16] } \\ { R1*3/4 } >>
	<< { g16 r r8 r4 r } \\ { R1*3/4 } >>
	
	R1*3/4*26
	
	r4 r < g' bflat >\mf
	R1*3/4
	< f b >2.
	R1*3/4
	r4 r < f b >
	R1*3/4
	< aflat c >2.\mf
	R1*3/4
	< aflat dflat >2.\p
	R1*3/4
	< d e >2.
	R1*3/4
	R1*3/4
	R1*3/4
	R1*3/4\fermataMarkup
	
}
