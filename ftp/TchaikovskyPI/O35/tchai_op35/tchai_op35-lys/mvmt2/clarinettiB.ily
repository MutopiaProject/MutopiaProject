\version "2.18.2"

theClarinets =  \relative a'' {
	\transposition bflat
	
	\clef "treble"
	\key a \minor
	
	<< e2.^\p \\ gsharp,2.\p >>
	<< { f'2^\< g4 } \\ { a,2_\< c4_\! } >>
	<< { c4\! d2 } \\ { c,2( b4) } >>
	<< e'2. \\ c,2. >>
	<< { a'8^\pp[( b] c4 d) } \\ { f,4( e d) } >>
	<< { a'8[( b] c4 d) } \\ { f,4( e d) } >>
	<< { c'8[( d] eflat4) csharp8[( dsharp] } \\ { d,4(\< eflat) dsharp(\! } >>
	<< { e'!4) fsharp,8( gsharp] a4) } \\ { e!4) b4\p( a) } >>
	<< { r4 r8 a''8^\mf[_(^\< g f]_)^\! } \\ { R1*3/4 } >>
	<< { e8[_(^\> d csharp d e f]_)^\! } \\ { R1*3/4 } >>
	<< { a,2^\p e8^\p[( f] } \\ { r4 r a,4~ } >>
	<< { e'4) e2 } \\ { a,4 a( gsharp) } >>
	
	R1*3/4*7
	
	r4 c16\pp[(^\markup { \smaller {1\super{o} Solo.}} b a8]) gsharp16[( f e8])
	
	R1*3/4*14
	
	<< { r4 r gsharp'^\markup { \dynamic p \italic espress. } } \\ { R1*3/4 } >>
	<< { a4.^\< b8[( c d])^\! } \\ { R1*3/4 } >>
	<< { \tuplet 3/2 { e8-.[ e-. e-.]_\> } e16-.[ e-. e-. e-.]
		e4\trill \bar "" \grace { dsharp16[_\! e] } } \\ { R1*3/4 } >>
	<< { a,8 r r4 r } \\ { R1*3/4 } >>
	
	R1*3/4*14
	
	r4 r r8 < f f' >\mf
	< f f' >[ < f f' >] < f f' >4 r8 < f f' >
	< f f' >[ < f f' >] < f f' >4 r
	< b, a' > < b gsharp' > r
	< a g'! >^\markup { \italic dim. } < a fsharp' > < g f' >
	< g e' > < f eflat' > < f d' >8 r
	
	R1*3/4*10
	
	<< { \tuplet 3/2 { r8^\p c''[( b] } \tuplet 3/2 { gsharp[ e c] }
		\tuplet 3/2 { b[ gsharp e]) } } \\ { g1*3/4\rest } >>
	<< { r16 a[( c f] e8) e4^> e8 } \\ { g,1*3/4\rest } >>
	<< { r16 b'16[( e a] gsharp8) gsharp4^> gsharp8 } \\ { R1*3/4 } >>
	<< { r16 e16[( a d] c8) c4^> c8 } \\ { R1*3/4 } >>
	<< { r16 b[( e a] gsharp8) gsharp4^> gsharp8 } \\ { R1*3/4 } >>
	
	R1*3/4*3
	
	<< { < gsharp,, e' >4.\p^> < e gsharp! >8[( < fsharp a > < gsharp! b >] } \\ { s2. } >>
	<< { < a c >16)[ e^. a^. c^.] e^.[ c^. a^. e^.] } \\ { a8 r r4 } >> r4
	r16 e-.[ b'-. d-.] e-.[ d-. b-. e,-.] r4
	r16 e-.[ a-. c-.] e-.[ c-. a-. e-.] r4
	r16 e-.[ b'-. d-.] e-.[ d-. b-. e,-.] r4
	r16 e-.[ a-. c-.] e-.[ c-. a-. e-.] r4
	<< { r16 e-.[ gsharp-. b-.] e-.[ b-. gsharp-. e-.] r4 } \\ { c1*3/4\rest } >>
	<< { r16 f-.[ a-. d-.] r g,-.[ c-. e-.] r gsharp,-.[ d'-. e-.] } \\ { f,1*3/4\rest } >>
	<< { a'16-.[ c-. a-. e-.] c8 r r4 } \\ { r1*3/4 } >>
	
	R1*3/4*9
	r1*3/4^\fermata
	
	<< { e'2.^>^\< } \\ { gsharp,2.\< } >>
	<< { f'2^\! g4 } \\ { a,2\! c4 } >>
	<< { c4^\< d2^\! } \\ { c,2( b4) } >>
	<< { e'2. } \\ { c,2. } { s4\> s s\pp\! } >>
	<< { a'8[( b] c4 d) } \\ { f,4( e d) } >>
	<< { a'8[( b] c4 d) } \\ { f,4( e d) } >>
	<< { c'8[( d] eflat4) csharp8[( dsharp] } \\ { d,4(_\cr eflat) dsharp( } >>
	<< { e'!4) fsharp,8[( gsharp a b] } \\ { e,!4) b4( a) } >>
	<< { c'8) r r4 r } \\ { R1*3/4 } >>
	r4 r < a eflat' >\mf
	R1*3/4
	< g csharp >2.
	R1*3/4
	r4 r < g csharp >
	R1*3/4
	< bflat g' >2.
	R1*3/4
	< g eflat' >2.\p
	R1*3/4
	< asharp fsharp' >2.
	< e e' >8\pp[( < dsharp dsharp' >] < e e' >2)
	
	R1*3/4*2
	r1*3/4^\fermata
	
}
