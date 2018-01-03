\version "2.18.2"

theFlutes =  \relative d''' {
	\clef "treble"
	\key d \major
	
	R1*6
	
	r2 r4 d\p
	csharp b a2
	
	R1*6
	
	a4\f f8( e d4) f8( a)
	d2 r2
	d r
	d4\ff r d r
	d8[ d d d] d2:8
	csharp8 e8\f[( a]) a,[( d]) f,[( bflat]) r
	r e8\mf[( a]) a,[( d]) f,[( bflat]) r
	
	R1*35
	
	r4 bflat4\f~ bflat8 r r4
	r4 b!~ b8 r r4
	c8\f[ d16. e32] c8[ d16. e32] c8 r r4
	c8[ d16. e32] c8[ d16. e32] c8 r r4
	c8[ d16. eflat32] d8 r d8[ e16. f32] e8 r
	e8[ f16. g32] f8 r gsharp8[ a16. b32] a8 r
	e8\ff r e r e4-> r4
	e8 r e r e4-> r4
	
	R1*24
	
	r4 \tuplet 3/2 { r16^\markup {I.} g,\f[( bflat } \tuplet 3/2 { csharp e g] } bflat8) r r4
	R1
	r4 \tuplet 3/2 { r16 g,[( bflat } \tuplet 3/2 { csharp e g] } bflat8) r r4
	
	R1*5
	
	r2 r4 \tuplet 3/2 { csharp,8\f[ d e] }
	r2 r4 \tuplet 3/2 { csharp8[ dsharp e] }
	r8 e r4 r8 e r4
	r8 e r4 r8 e r4
	f4\fp( e) e16[( dsharp csharpsharp e] dsharp4)
	e( d!) d16[( csharp! bsharp d] csharp4)
	d( c) c16[( b! asharp c] b8) r
	d4( c) c16[( b asharp c] b8) r
	
	R1*11
	
	a16\mf[ r b r a r b] r c8\f r r4
	c16\mf[ r d r c r d] r eflat8->\f r r4
	eflat16\mf[ r f r eflat r f] r fsharp8\f r r4
	gsharp8\f r r4 r2
	a8 r r4 r2
	b,8 r r4 r2
	bsharp8 r r4 r2
	
	R1*3
	
	bsharp8\f[\< bsharp bsharp bsharp] bsharp[ bsharp bsharp bsharp]\!
	csharp8\ff r8 csharp2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	d8 r d2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	b8) csharp d[ csharp16( b] a8)[ gsharp16( fsharp] esharp)[ csharp( esharp gsharp])
	b8 csharp d[ csharp16( b] a8)[ gsharp16( fsharp] e!)[ fsharp( gsharp b])
	csharp8\ff r8 csharp2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	d8 r d2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	bsharp8) r r4 r2
	r2 r4 csharp,4\p\<
	dsharp8\mf\! r r4 r2
	r2 r4 csharp4\p\<
	csharp8[\mf dsharp'->]( e) r r2
	r8 dsharp->( e) r r2
	r8 csharpsharp->( dsharp) r r4 r8 bsharp,(
	csharp!)[ csharp'->]( d!) r r4 r4
	r4 r8 dsharp,( e) r r csharp'(
	d!)[ d->\p]( eflat) r r2
	r2 r4 g,\p\<
	a8\mf[\! d->]( eflat) r r2
	r2 r4 g,4\p\<
	g8\mf[\! a'->]( bflat) r r2
	r8 a->( bflat4) r2
	r8 gsharp,->[( a) d,->]( eflat) r r fsharp,(
	g!) g'->( aflat)[ bflat,->]( b) r r4
	r4 r8 a(_\cr bflat) r r g'(
	aflat) r r esharp( fsharp!) r r dsharp(
	e!\ff) r r4 r2
	b'8\f r f2\mf\> f8\! r
	
	R1*26
	
	a8\ff r a2 \grace { g16[ a] } g16[( f a c])
	g4.( a8) g4 a
	bflat8 r bflat2 \grace { a16[ bflat] } a16[( g bflat d])
	a4.( bflat8) a4 a
	d8 e f[ e16( d] c8)[ e] f[ d16( c]
	bflat8)[ csharp!] d[ c16( b] a8)[ csharp] d[ bflat16( a])
	g16[( a bflat g]) f[( a bflat f]) eflat[( fsharp g eflat]) d[( fsharp g d])
	csharp!8\ff[ a'] bflat[ bflat,] b r r c
	csharp!8 csharp4 d e gsharp8
	a[ a] bflat[ bflat,] b r r c
	csharp!8 csharp4 d e gsharp8
	a[ bflat] b[ b,] c r r csharp
	d8 d4 dsharp e b'!8
	c8[ b] c[ c,] csharp r r d!
	dsharp8 dsharp4 e f bsharp8
	csharp![ bsharp] csharp[ csharp,] d![ d'!] dsharp[ dsharp,]
	e[ e'] f[ f,] fsharp[ fsharp'] g[ g,]
	gsharp8\ff[ f'16( g!] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ f,16( g]
	gsharp8)[ f'16( g] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ g,16( gsharp]
	a8) r r4 r r8 f16[( g!]
	gsharp8)[ f'16( g] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ g,16( gsharp]
	a8) r r4 r r8 f16[( g!]
	gsharp8)[ f'16( g] gsharp8)[ f,16( g] gsharp8)[ f'16( g] gsharp8)[ g,16( gsharp]
	a8) r r4 r2
	
	s1*46
	
	fsharp8->\p^\markup { \italic {a tempo} } r fsharp2-> e16[( d fsharp a])
	e4.( fsharp8) e4 fsharp
	g8-> r g4~ g8.[ a16]( b16[ csharp d e])
	a,4.( gsharp8) a r r4
	
	R1*29
	
	r2 csharp!8\f[ d16. e32] d8 r
	a8\ff r a r a4-> r
	a8 r a r a4-> r
	
	R1*17
	
	r4 \tuplet 3/2 { r16 c,\f[( eflat] } \tuplet 3/2 { fsharp![ a c]) } eflat4~ eflat8 r
	R1
	r4 \tuplet 3/2 { r16^\markup {I.} c,\f[( eflat] } \tuplet 3/2 { fsharp![ a c]) } eflat4~ eflat8 r
	R1
	r4 \tuplet 3/2 { r16 d,,^\f[( f } \tuplet 3/2 { aflat d f] } bflat8) r r4
	r4 \tuplet 3/2 { r16 csharp,,![( e } \tuplet 3/2 { g csharp! e] } a8) r r4
	
	R1*2
	
	r2 r4 \tuplet 3/2 { fsharp8\f[ g a] }
	r2 r4 \tuplet 3/2 { fsharp8[ gsharp a] }
	r8 a r4 r8 a r4
	r8 a r4 r8 a r4
	
	R1*17
	
	r2 b!8\f r r4
	csharp!8\f r r4 csharp8 r r4
	d8 r r4 d8 r r4
	e8[ e] r e[ e e] r e
	esharp[ esharp] r esharp[ esharp esharp] r esharp
	
	R1*4
	
	fsharp,8\f r r4 r2
	
	R1*2
	
	r4 bflat2\f r4
	r4 a2 r4
	r4 g2 r4
	
	R1*5
	
	eflat'1\f
	f
	fsharp!8\ff r r4 r2
	
	R1*3
	
	r2 r8 csharp8\ff[ a csharp]
	d r r4 r8 csharp[ a csharp]
	d r r csharp d r r csharp
	d r r e esharp r r esharp
	fsharp\ff d,4 d8~ d[ e fsharp g]
	a d,4 d8~ d[ e fsharp g]
	a d4 e8 d csharp4 d8
	csharp b4 g8 bflat-> r r a
	d,8 d4 d8~ d[ e fsharp g]
	a d,4 d8~ d[ e fsharp g]
	a d4 e8 d csharp4 d8
	csharp b4 g8 bflat-> r r a
	d, r d r fsharp r a r
	d r d, r fsharp r a r
	d r d r d r d r
	d r d r d r d r
	d[ d,, fsharp a] d[ d fsharp a]
	d4 d d fsharp
	d,,1\fermata
}
