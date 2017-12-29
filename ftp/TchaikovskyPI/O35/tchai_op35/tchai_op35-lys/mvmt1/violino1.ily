\version "2.18.2"

theFirstViolins =  \relative d' {
	\clef "treble"
	\key d \major
	
	fsharp2.\p e8( d									|
	a4) d8( e fsharp4) b8( gsharp						|
	a4) fsharp2 fsharp4									|
	g! fsharp e r										|
	e2. csharp8( b										|
	a4) csharp8( d e4) fsharp8( csharp					|
	e4) d r2											|
	
	R1*2
	
	csharp8^>\p r csharp2^> \appoggiatura d8( csharp16)[(_\markup { "" \raise #-2.5 \italic cresc. }
		b csharp e])
	d1
	gsharp8^> r gsharp2^> \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	< e, a >1\<
	csharp'8 r csharp2\mf\! \appoggiatura d8( csharp16)[(_\cr b csharp e])
	d1\<
	gsharp8\f\! r gsharp2 \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8 r gsharp2 \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8\ff gsharp \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
		gsharp8 gsharp \appoggiatura a8( gsharp16)[( fsharpsharp gsharp b])
	gsharp8[ d f gsharp] b[ d f gsharp]
	a r r4 r4 r8 gsharp,,\f(
	a) r r4 r4 r8 gsharp\mf(
	a) r r gsharp\p( a) r r gsharp(
	a) r r4 r2
	
	R1*3
	
	r2 r8 r4\fermata r8
	
	R1*2
	
	d,1\p
	d2~ d8 r a4~
	a8[ b( csharp e]) esharp[( fsharp] a,4)~
	a8[ b( csharp e!]) esharp[( fsharp] e4)
	d4~ \tuplet 3/2 { d8[( e fsharp]) } b,2
	gsharp16[(\< a b csharp]) d4( csharp8)\! r r g'!\p
	b r r e, g r r4
	
	R1*4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	< d a' >8\p^\markup { pizz. } r r4 r < d a' >8 r
	
	< e a > r r4 r < d a' >8 r
	g r r4 r g8 r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	fsharp4.(^\markup { arco } esharp8 fsharp) r a4~
	a8[^\markup { \italic dolce } b( csharp e]) esharp[( fsharp] a,4)~
	a8[ b( csharp e]) esharp[( fsharp] a,8)\< r
	fsharp\! r e r e r r4
	e8 r r4 r2
	R1
	r8 d\pp r csharp r < b d > r < g! e' >
	r d' r fsharp r a[ fsharp d]
	r d r csharp r < b d > r < g! e' >
	r d' r fsharp r a-.[ fsharp-. d-.]
	r e_\cr r d r csharp r b
	r a' r g r fsharp r e
	r e r e r gsharp r a
	bflat8\f r bflat4~ bflat8 r r4
	b!8 r b4~ b8 r r4
	c8\f[ d16. e32] c8[ d16. e32] c8 r r4
	c8[ d16. e32] c8[ d16. e32] c8 r r4
	c8[ d16. eflat32] d8 r d8[ e16. f32] e8 r
	< a, e' >8[ < a f' >16. < a g' >32] < b f' >8 r gsharp'8[ a16. b32] a8 r
	< e, csharp'! e >8\ff r < e c' e > r \grace e8( < b' e >4->) r4
	< e, csharp'! e >8 r < e c' e > r \grace e8( < b' e >4->) r4
	r8 \noDynamic b_\markup { \italic dim. } r4 r8 b r4
	b8 r r4 r2
	
	R1*2
	
	r8 e,8\pp[( d e]) r e[( csharp e])
	r fsharp[( csharp fsharp]) r fsharp[( d fsharp])
	r fsharp[( csharp fsharp]) r fsharp[( d fsharp])
	r g[( e g]) r fsharp[( d fsharp])
	r f[( c f]) r e[( csharp e])
	b4(\< csharp)\! d8(\> e d4)\!
	r16 b\pp[( d b]) r b[( d b]) r csharp[( e csharp]) r csharp[( e csharp])
	r csharp[( e csharp]) r csharp[( fsharp csharp]) r b[( fsharp' asharp,]) b[( csharp d fsharp])
	r16 csharp[(_\markup { "" \raise #-1.5 \italic {poco cresc.} } fsharp csharp]) r csharp[( fsharp csharp])
		r b[( fsharp' b,]) r b[( fsharp' b,])
	r b[( f' b,]) r b[( f' b,]) r b[( e b]) r b[( e b])
	r csharp![( fsharp csharp]) r csharp[( fsharp csharp]) r d[( fsharp d]) r d[( fsharp d])
	r f[( a f]) r f[( a f]) r e[( a e]) csharp!8 r
	
	R1*2
	
	e2\p d~
	d_\markup { \italic {poco a poco cresc.} } d
	csharp csharp
	\tuplet 3/2 { r8 gsharp'[( d] } \tuplet 3/2 { gsharp[ d gsharp]) } \tuplet 3/2 { r a[( fsharp] } \tuplet 3/2 { a[ fsharp a]) }
	\tuplet 3/2 { r bflat[( g]) } \tuplet 3/2 { r b[( gsharp]) } \tuplet 3/2 { r csharp![( g]) } \tuplet 3/2 { r d'[( b]) }
	\tuplet 3/2 { r e\mf[( csharp] } \tuplet 3/2 { e[ csharp e]) } \tuplet 3/2 { r e[( csharp] } \tuplet 3/2 { e[ csharp e]) }
	f4\mf e4~ e8[ g-.]( f-.[ f-.])
	eflat-.[( eflat-.]) d-.[( d-.]) c-.[( c-.]) bflat-.[( bflat-.])
	f'4 e!4~ e8[ g-.]( f-.[ f-.])
	eflat-.[( eflat-.]) d-.[( d-.]) c-.[( c-.]) bflat-.[( bflat-.])
	bflat4 a~ a8[ bflat( d f])
	a,4 gsharp~ gsharp8[ a( csharp! e])
	r8 fsharp,!8 a'4 a8 r r4
	R1
	r2 r4 \tuplet 3/2 { csharp,8\f[ d e] }
	r2 r4 \tuplet 3/2 { csharp8[ dsharp e] }
	r8 < asharp, e' > r4 r8 < b e > r4
	r8 < a e' > r4 r8 < c e > r4
	f4\fp( e) e16[( dsharp csharpsharp e] dsharp4)
	e( d!) d16[( csharp! bsharp d] csharp4)
	d( c) c16[( b! asharp c] b8) r
	d4( c) c16[( b asharp c] b8) r
	b4_\markup { \italic {poco cresc.} } a a16[( gsharp fsharp gsharp]) a4
	b4 csharp! e16[( d csharp e]) d8 dsharp
	e8\mf r r4 r2
	
	R1*3
	
	r8 < asharp,, fsharp' >16\pp[_\markup { \translate #(cons 4 -1) \italic {poco a poco cresc.} } r
		< b fsharp' > r < bsharp gsharp' >] r csharp[ r < asharp fsharp' > r < b fsharp' > r < bsharp gsharp'! >] r
	csharp[ r < e a! > r < fsharp a > r < dsharp b' >] r e[ r < e a > r < fsharp a > r < dsharp b' >] r
	e[ r csharp r csharp r d!] r d[ r e r e r fsharp] r
	fsharp16\mf[ r gsharp r fsharp r gsharp] r < fsharp a >2\f\>
	fsharp16\mf[\! r gsharp r fsharp r gsharp] r < f a >2\f
	a16\mf[ r b r a r b] r c2\f\>
	c16[ r d\mf\! r c r d] r eflat2\f\>
	eflat16[ r f\mf\! r eflat r f] r < a, fsharp' >2\f
	< d! gsharp >8\mf < d gsharp > r < d gsharp >[ < d gsharp > < d gsharp >] r < d gsharp >
	< d a' > < d a' > r < d a' >[ < d a' > < d a' >] r < d a' >
	< d b' > < d b' > r < d b' >[ < d b' > < d b' >] r < d b' >
	< fsharp! bsharp > < fsharp bsharp > r < fsharp bsharp >[ < fsharp bsharp > < fsharp bsharp >] r < fsharp bsharp >
	
	R1*4
	
	< a, csharp' >8\ff r8 csharp'2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	< d,, fsharp' d' >8 r d''2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	b8) csharp d[ csharp16( b] a8)[ gsharp16( fsharp] esharp)[ csharp( esharp gsharp])
	b8 csharp d[ csharp16( b] a8)[ gsharp16( fsharp] e!)[ fsharp( gsharp b])
	< a, csharp' >8\ff r8 csharp'2 b16[( a csharp e])
	b4.( csharp8) b4 csharp
	< d,, fsharp' d' >8 r d''2 csharp16[( b d fsharp])
	csharp4.( d8) csharp4 csharp
	fsharp8 gsharp a[ gsharp16( fsharp] e8) gsharp a[ fsharp16( e]
	d8) esharp fsharp[ e16( d] csharp8) esharp fsharp[ d16( csharp]
	bsharp8)[ csharp,\p]~ csharp[ fsharp,]~ fsharp r r4
	r8 csharp4 e8~ e16[(\< gsharp csharp bsharp]) csharp[( dsharp e dsharp])\!
	gsharp8\mf[ csharp,\p]~ csharp[ fsharp,]~ fsharp r8 r4
	r8 csharp4 e8~ e16[(\< gsharp csharp bsharp]) csharp[( dsharp e csharp])\!
	dsharp8\mf[ csharp\p]~ csharp[ csharp,!]~ csharp r8 r8 e(
	dsharp)[ csharp'!]~ csharp[ csharp,!]~ csharp r r e(
	dsharp) asharp'[~ asharp] r r bsharp~ bsharp[ dsharp](
	gsharp)[ b,!]~ b r r esharp,~ esharp[ gsharp](
	csharp) dsharp4\< fsharp8 b csharp4 e8(\!
	a\mf) r r4 r8 a,,,16\p[( bflat c8]) r8
	r8 g'~\< g[ bflat]~ bflat16[( d g fsharp]) g[( a bflat a])\!
	d8\mf r r4 r8 a,,16\p[( bflat c8]) r8
	r8 g'~\< g[ bflat]~ bflat16[( d g fsharp]) g[( a bflat g])\!
	a8\mf[ g]~ g[ g,]~ g r r bflat(
	a)[ g']~ g[ g,]~ g r r bflat(
	a)[ g]~ g r r fsharp~ fsharp[ a](
	d)[ f,]~ f r r b,~_\cr b[ d]
	g[ a]~ a[ c]( f)[ g]~ g[ bflat](
	eflat)[ f,]~ f[ gsharp]( csharp!)[ dsharp,]~ dsharp[ fsharp](
	b!\ff) r r4 r2
	< d, b' >8\f r r4 r2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	e,8\pp^\markup {pizz.} \noDynamic r\p e r r4 e'8 r
	d r d, r r4 e8 r
	f r f r r4 f'8 r
	e r e, r r4 e8 r
	f r a r g r c r
	f, r < d a' > r e r a r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	a2\p(\>^\markup {arco} gsharp8)\! r r4
	a2^>(\> gsharp8)\! r
		\set Staff.midiInstrument = #"pizzicato strings"
		e\pp^\markup {pizz.} r
	e8 r e r r4 e'8 r
	d r d, r r4 e8 r
	f r f r r4 f'8 r
	e r e, r r4 e8 r
	f r a r g r c r
	f, r < d a' > r e r a r
	fsharp r r4 fsharp8 r r4
	< e csharp'! >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		e2^\markup {arco}
	dsharp8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		fsharp8^\markup {pizz.} r r4
	< e csharp' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		e2^\markup {arco}
	e8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		e8^\markup {pizz.} r r4
	< d a' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		f2^\markup {arco}
	e8 r r4
		\set Staff.midiInstrument = #"pizzicato strings"
		e8^\markup {pizz.} r r4
	< d a' >8 r r4
		\set Staff.midiInstrument = #"string ensemble 1"
		f2\<^\markup {arco}
	f8\! r r4 r2
	f8 r r4 r2
	
	R1*2
	
	< a a' >8\ff r < a a' >2 \grace { g'16[ a] } g16[( f a c])
	g4.( a8) g4 a
	bflat8 r bflat2 \grace { a16[ bflat] } a16[( g bflat d])
	a4.( bflat8) a4 a
	d8 e f[ e16( d] c8)[ e] f[ d16( c]
	bflat8)[ csharp!] d[ c16( b] a8)[ csharp] d[ bflat16( a])
	g16[ a bflat g] f[ a bflat f] eflat[ fsharp g eflat] d[ fsharp g d]
	csharp!8\ff[ a'] bflat[ bflat,] b[ b,!] c[ c']
	csharp!8 csharp4 d e gsharp8
	< a, a' >[ a'] bflat[ bflat,] b[ b,!] c[ c']
	csharp!8 csharp4 d < d e > gsharp8
	< a, a' >[ bflat'] b[ b,] c[ c,] csharp[ csharp']
	d8 d4 dsharp < bflat e > b'!8
	c8[ b] c[ c,] csharp[ csharp,!] d[ d']
	dsharp8 dsharp4 < bflat e > < b f' > c'8
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
	
	fsharp,2.\pp fsharp4
	e2. d4
	d2. d4
	d4. d8~ d r\pp a'4~_\markup { \italic dolce }
	a8[ b( csharp e]) esharp[( fsharp] a,4)~
	a8[ b(_\markup { \italic {poco cresc.} } csharp e!]) esharp[( fsharp] e4)
	d4~( \tuplet 3/2 { d8[ e fsharp]) } b,2\<
	gsharp16[( a b csharp]) d4(\! csharp8) r r g'!8\p
	b r r e, g r r4
	
	R1*2
	
	\set Staff.midiInstrument = #"pizzicato strings"
	< d, a' >8\pp^\markup {pizz.} r r4 r < d a' >8 r
	< e a >_\cr r r4 r < d a' >8 r
	g r r4 r g8 r
	r4
		\set Staff.midiInstrument = #"string ensemble 1"
		csharp,8[(^\markup {arco} fsharp]) r4 b,8[( fsharp'])
	r4 b,8[( e]) r4 a,8[( e'])
	r4 a,8[( d]) r4 g,8[( b])
	r4 c8[( g']) r4 csharp,8[( g'])
	d2_\markup { \dynamic {mf} \italic dim. } < g, e' >
	fsharp'2~\> fsharp8\! r8 r4
	R1
	r8 g\pp r fsharp r g r < d a' >
	r g r b r d-.[ b-. g-.]
	r g r fsharp r g r < d a' >
	r g r b r d-.[ b-. g-.]
	r a_\cr r g r fsharp r e
	r d' r c r b r < e, a >
	r < e a > r < f a > r csharp' r d
	eflat r eflat4~ eflat8 r r4
	< bflat e! >8 r < bflat e >4~ < bflat e >8 r r4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	< bflat f' >8\f^\markup {pizz.} r r4 r2
	< bflat f' >8 r r4 r2
	< bflat f' >8_\cr r < b g' > r < c g' > r < a a' > r
	< a a' > r < d, d' bflat' > r < gsharp f' csharp'! > r < gsharp f' d' > r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	< d a' fsharp'! d' >8\ff^\markup {arco} r < d a' f' d' > r < a' a' >4 r
	< d, a' fsharp'! d' >8 r < d a' f' d' > r < a' a' >4 r
	r8 e8 r4 r8 e r4
	r8 e~ e4~ e8 r r4
	
	R1*2
	
	r8 a4\pp a8 r a4 a8
	r8 b4 b8 r b4 b8
	r fsharp8\p[( dsharp fsharp]) r g[( e g])
	r a[( e a]) r g[( e g])
	r f[( d f]) r fsharp[( d fsharp])
	e4(\< fsharp) g8[(\! a] g) r
	r16 e\pp[( g e]) r e[( g e]) r fsharp[( a fsharp]) r fsharp[( a fsharp])
	r fsharp[( a fsharp]) r fsharp[( b fsharp]) r e[( b' dsharp,]) e[( fsharp g b])
	r_\markup { "" \raise #-1.0 \dynamic p \italic cresc. } b,[( fsharp' b,])
		r b[( fsharp' b,]) r b[( e b]) r b[( e b])
	r bflat[( e bflat]) r bflat[( e bflat]) r a[( e' a,]) r a[( e' a,])
	r b![( fsharp' b,]) r b[( fsharp' b,]) r b[( g' b,]) r b[( g' b,])
	r b[( gsharp' b,]) r b[( gsharp' b,]) r csharp[( gsharp' csharp,]) r csharp[( gsharp' csharp,])
	r d[( gsharp d]) r gsharp,[(_\cr fsharp' gsharp,]) r gsharp[( fsharp' gsharp,]) r a[( fsharp' a,])
	g'!4\mf fsharp!~ fsharp8 a( bflat) bflat(
	aflat)[ aflat]( g)[ g]( f)[ f-.( eflat-. f-.])
	g4 fsharp!~ fsharp8 a!( bflat) bflat(
	aflat) aflat( g) g( f) f-.( eflat-. eflat-.)
	eflat4 d~ d8[ eflat g bflat]
	d,4 csharp!~ csharp8[ d fsharp! a]
	r4 < d, d' >\f < d d' >8 r r4
	R1
	r2 r4 \tuplet 3/2 { fsharp'8\f[ g a] }
	r2 r4 \tuplet 3/2 { fsharp8[ gsharp a] }
	r8 < a, a' >8 r4 r8 < a a' > r4
	r8 < a a' > r4 r8 < a a' > r4
	bflat'4\pp( a) a16[( gsharp fsharpsharp a]) gsharp4
	a( g!) g16[( fsharp esharp g]) fsharp4
	g4(\< f) f16[( e dsharp f] e8)\! r
	g4(\< f) f16[( e dsharp f] e8)\! r
	e4\mf d! d16[( csharp bsharp csharp]) d4
	< a e' >\< < a fsharp' > a'16[( g fsharp a]) g8[ gsharp]\!
	a8 r r4 r2
	
	R1*3
	
	r8\pp b,,16_\markup { \italic {poco a poco cresc.} } r b[ r csharp] r d[ r b r b r csharp] r
	d[ r d r d r e] r csharp[ r d r d r e] r
	csharp[ r < a fsharp' > r < b fsharp' > r g'] r < g, g' >[ r < e' a > r < fsharp a > r < d b' >] r
	< e b' >[\< r < e csharp' > r < e b' > r < e csharp' >]\! r < g d' >2\f\>
	< e b' >16[ r\mf\! < e csharp' > r < e b' > r < e csharp' >] r < g d' >2\f\>
	d'16[ r\mf\! < d e > r d r < d e >] r < bflat f' >2\f\>
	< bflat f' >16[ r\mf\! < bflat g' > r < bflat f' > r < bflat g' >] r < dflat aflat' >2\f\>
	< dflat aflat' >8[\! < dflat bflat' > < dflat aflat' > < dflat bflat' >] < d b' >2\f
	< a csharp' >8\mf[ < a csharp' >] r < a csharp' >[ < a csharp' > < a csharp' >] r < a csharp' >
	< g' d' >8[ < g d' >] r < g d' >[ < g d' > < g d' >] r < g d' >
	< g e' >[ < g e' >] r < g e' >[ < g e' > < g e' >] r < g e' >
	esharp'8[ esharp] r esharp[ esharp esharp] r esharp
	
	R1*4
	
	< d,, a' fsharp' >8\f r fsharp\p r fsharp r fsharp r
	fsharp_\cr r e r e r d r
	d r e r f r f r
	f r r4 r bflat8\f gsharp
	a r r4 r a8 fsharp
	g! r r4 r g8 e
	f r r dsharp e r r csharp
	d r d'2 r4
	d,8 r d'2 r4
	d8[ d~ d d]~ d[ d~ d d]
	eflat\f[ csharp->] d[ d->] eflat[ csharp->] d[ d->]
	eflat8 eflat4 eflat eflat eflat8
	< d f >8 < d f >4 < d f > < d f > < d f >8
	< d fsharp! >8\ff r r4 r2
	d,4\p(\< e8)[ esharp]\! fsharp r < g, g' >\f r
	R1
	d'4(\< e!8)[ esharp]\! fsharp r < g a >\f r
	< d bflat' > r r4 r8 < a' csharp' >8\ff[ < a a' > < a csharp' >]
	d' r r4 r8 < a, csharp' >8[ < a a' > < a csharp' >]
	d' r r < a, csharp' > d' r r < a, csharp' >
	d' r r e esharp r r esharp
	fsharp\ff < d,, d' >4 < d d' >8~ < d d' > e'8:16[ fsharp: g:]
	a < d,, d' >4 < d d' >8~ < d d' > e'8:16[ fsharp: g:]
	a d4 e8 d csharp4 d8
	csharp b4 g8 bflat-> r r < csharp, a' >
	< d, d' > < d d' >4 < d d' >8~ < d d' > e'8:16[ fsharp: g:]
	a < d,, d' >4 < d d' >8~ < d d' > e'8:16[ fsharp: g:]
	a d4 e8 d csharp4 d8
	csharp b4 g8 bflat-> r r < csharp, a' >
	< d, d' > r < d d' > r < d a' fsharp' > r < d a' a' > r
	< d a' d' > r < d d' > r < d a' fsharp' > r < d a' a' > r
	< d a' d' > r < d d' d' > r < d d' d' > r < d d' d' > r
	< d d' d' > r < d d' d' > r < d d' d' > r < d d' d' > r
	< d d' d' >[ d fsharp a] < d, d' >[ < d d' > < a' fsharp' > < a a' >]
	< d, d' d' >4 < d d' d' >4 < d d' d' >4 fsharp''
	< a,,, d >1\fermata
}
