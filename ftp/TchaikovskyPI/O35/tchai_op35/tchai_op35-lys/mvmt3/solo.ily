\version "2.18.2"

theSolo =  \relative d' {
	\clef "treble"
	\key d \major
	
	R1*2/4*16
	
	a2\f(^\markup {senza sordini}						|
	bflat8)[ bflat16(\( a] bflat8)[ d-.]\)
	a2(
	bflat8)[ bflat16(\( a] bflat8)[ d-.]\)
	a8[ a] < a e' csharp' >[ a]
	< a e' a e' >[ a] < a fsharp' csharp' a' >[ a]
	gsharp4 < bflat' d e >\downbow
	r4 gsharp,\downbow
	a2\downbow(
	bflat8)[ bflat16(\( a] bflat8)[ d-.]\)
	a2(
	bflat8)[ bflat16(\( a] bflat8)[ d-.]\)
	a8[ a < a e' csharp' > a]
	< a e' a e' >[ a < a fsharp' csharp' a' > a]		|
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 < a e' csharp' >4^\markup {pizz.}				|
	< a e' a e' > < a e' csharp' a' >					|
	
	\set Staff.midiInstrument = #"violin"
	r8^\markup {arco} a[ < a e' csharp' > a]			|
	< a e' a e' >[ a < a fsharp' csharp' a' > a]		|
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 < a e' csharp' >4^\markup {pizz.}				|
	< a e' a e' > < a e' csharp' a' >					|
	
	\set Staff.midiInstrument = #"violin"
	a8_\marcato\ff[^\markup {arco} a16\( gsharp] a4~	|
	a2(
	bflat8)\)[ bflat16\( a] bflat4~
	bflat2(
	a8)\)[ a16\( gsharp] a4~
	a2(
	bflat8)\)[ bflat16\( a] bflat4~
	bflat2(
	b!8)\)[ b16\( asharp] b4~
	b2(_\markup { \italic dim. }
	c8)\)[ c16\( b] c4~
	c2(
	csharp!8)\)[ csharp16( bsharp] csharp4~
	csharp)\< b!~
	b\! bsharp\fermata~_\markup { \italic rit. }
	bsharp\> csharp\fermata\!							|
	
	% TUTTI
	
	d8-.\p[ d16( csharp] d8)[ b-.]						|
	csharp[ e] a,[ csharp16( d])
	e16[\< csharp e fsharp] g[ e a b]
	csharp[ a b csharp] d[ e fsharp a]\!
	b8\f[ b16( asharp] b8)[ fsharp-.]
	g-.[ g16( fsharp] g8)[_\markup { \italic dim. } dsharp]
	e[ b] csharp16[\> gsharp a asharp]\!
	b[ dsharp, e fsharp] g[ a, b csharp]
	d!8-.\p[ d16( csharp] d8)[ b-.]
	csharp[ e] a,[ csharp16( d])
	e16[\< csharp e fsharp] g[ e a b]
	csharp[ a b csharp] d[ e fsharp a]\!
	bflat8\f[ bflat16( a] bflat8)[ d,,-.\p]
	csharp[ e] a,[ csharp16( d])
	e[ csharp dsharp e] fsharp[ dsharp gsharp a]
	b[\< gsharp a b] csharp[ d e a]\!
	f8\f[ f16( e] f8)[ d,]								|
	a'8[_\markup { \italic dim. } a16( gsharp] a8)[ a,]
	bflat16\p[ b csharp d] csharp[\< d e f]
	fsharpsharp[ gsharp asharp b] csharp[ d e a!]\!
	f8-.\f[ f16( e] f8)[ d,]
	a'8-.[_\markup { \italic dim. } a16( gsharp] a8)[ a,]
	bflat16\p[ b csharp d] csharp[ d e f]
	fsharpsharp,[\< gsharp asharp b] bsharp[ csharp dsharp e]\!
	f'8\f[ f16(\> e] f8)[ d,]
	a'8[ a16( gsharp] a8)[ a,]\!
	bflat16-.\p[ b-. csharp-. d-.] csharp[ d e f]
	fsharpsharp[ gsharp asharp b] csharp[ d e a!]
	f8\mf[ f16( e] f8)[ d,]
	a'8[ a16( gsharp] a8)[ a,]							|
	fsharp''!8[ fsharp16( esharp] fsharp8)[ csharp,]
	d'8[ d16( csharp] d8)[ d,-.]
	g'8[_\cr g16( fsharp] g8)[ g,]
	a'8[ a, bflat' bflat,]
	b'!8[ b16( asharp] b8)[ b,!-.]
	c'8[ c, d' d,]
	d'8\f[ d16( csharp]) d[ gsharp, e d]
	csharp16[ bsharp csharp d] csharp[ e a csharp]
	d8[ d16( csharp]) d[ gsharp, e d]
	csharp[ bsharp csharp d] csharp[ e a csharp]
	d8-.[ d16( csharp] d8)[ d,-.]
	f'8-.[ f16( e] f8)[ f,-.]
	fsharp'!-.[\< fsharp,!-. g'-. g,-.]
	gsharp'-.[ gsharp,-. a'-. a,-.\f]\!
	d16[( csharp d8]) a16[( gsharp a8])					|
	d,16[( csharp d8]) a16[( gsharp a8])
	d,16[( csharp d8]) a16[(\< gsharp a8])
	bflat16[ bflat b b] c[ c csharp csharp]\!
	d8\f[ d16\p( csharp] d8)[ b]
	csharp[ e] a,[ csharp16( d])
	e[ csharp e fsharp] g[ e a b]
	csharp[\< a b csharp] d[ e fsharp a]\!
	b8\f[ b16( asharp] b8)[ fsharp-.]
	g8-.[ g16( fsharp] g8)[ dsharp-.]
	e[ b] csharp16-.[\< gsharp-. a-. asharp-.]
	b[ esharp, fsharp gsharp] asharp[ asharp b csharp]\!
	< b, fsharp' d' >8\f[ d'16(\( csharp] d8)[ b-.]\)
	< a, e' csharp' >[ e''] < a,, e' a >[ csharp'16 d]
	e[ csharp e fsharp] g[\< e a! b]
	csharp[ a b csharp]\! d[ e fsharp g]
	< d,, a' d' >8[ d''16(\( csharp] d8)[ b-.]\)		|
	< a, csharp' >[ e''] < a,, a' >16[ gsharp' a b]
	csharp[ b csharp d] e[ fsharp g gsharp]
	\ottava #1 a[ asharp b csharp] d8\f \ottava #0 r
	d,8\f[ d16(\( csharp] d8)[ b-.]\)
	g16[ fsharp e g] d[ csharp b d]
	g,[ fsharp e g] d[ csharp b d]
	g,[ b e g] b[ e g b]
	d8[ d16(\( csharp] d8)[ b-.]\)
	g16[ fsharp e g] d[ csharp b d]
	g,[ fsharp e g] d[ csharp b d]
	g,[ b e g] b[ e g b]
	d8-.[ d16( csharp] d8)[ < d,, b' >-.]				|
	R1*2/4
	d''8-.[ d16( csharp] d8)[ < d,, b' >-.]
	R1*2/4
	d''8-.[ d16( csharp] d8)[ < d,, b' >-.]
	d''8-.[ d16( csharp] d8)[ < d,, b' >-.]
	d''8[ < d,, b' >-.] d''8[ < d,, b' >-.]
	d''8[ < d,, b' >-.] d''8[ < d,, b' >-.]
	dsharp''-.[ dsharp16( csharpsharp] dsharp8)[ gsharp,]
	b8[ b16( asharp] b8)[ b,]
	gsharp'[ gsharp, esharp' esharp,]
	b'!16[ d,! f g!] gsharp[ d' f gsharp]
	a8-.[ a16( gsharp] a8)[ d,-.]
	f8[ f16( e] f8)[ f,]
	d'[\> d,] b'[ b,]\!
	gsharp'16[ gsharp, a b] csharp![ d e fsharp!]
	gsharp[ b, csharp d] e[ fsharp g a]
	b[ d, e fsharp] gsharp[ a b csharp]
	d[ gsharp, a b] csharp[\< d e fsharp]
	gsharp[ a b csharp] d[ e fsharp gsharp]\!			|
	
	%%% POCO MENO MOSSO %%%
	
	a8 r r4												|
	
	R1*2/4*2
	
	r4 a,,8-.\f[( e-.])									|
	gsharp4( fsharp8[ e])
	d-.[ \tuplet 3/2 { d16(\( e d]) } csharp8[ b]\)
	a2~(
	a4\glissando a'8[ e-.])
	gsharp4( fsharp8[ e])
	d-.[ \tuplet 3/2 { d16(\( e d]) } csharp8[ b]\)
	a2~(
	a4\glissando fsharp'8[ fsharp-.])
	fsharp4( e8[ d])
	csharp[ b]( fsharp')[ fsharp-.]
	fsharp4( e8[ d])
	csharp4( a'8[ e-.])
	fsharp4( e8[ d])
	csharp[ b]( fsharp')[ fsharp-.]
	fsharp4( e8[ d])									|
	
	%%% TEMPO 1 %%%
	
	csharp16[ csharp d e] fsharp8[ fsharp^\downbow]		|
	fsharp4^\downbow e8^\downbow[ d^\downbow]
	csharp^\downbow[ b^\downbow]( fsharp')[ fsharp^\downbow]
	fsharp4^\downbow e8^\downbow[ d^\downbow]
	csharp16[ e fsharp gsharp] a8^\downbow[ fsharp^\downbow]
	fsharp4^\downbow e8^\downbow[ d^\downbow]
	csharp^\downbow[ b^\downbow]( fsharp')[ fsharp^\downbow]
	fsharp4^\downbow e8^\downbow[ d^\downbow]
	csharp8:16[ c8: b8: a8:]
	gsharp!:[ e': g,: gsharp:]
	a:[ gsharp!:] a:[ b:]
	csharp:[ a': fsharp: gsharp:]
	a:[ a':] a,:[ a,:]
	gsharp!:[ e': g,: gsharp:]
	a:[ gsharp:] a:[ b:]								|
	csharp:[ a': fsharp: gsharp:]
	a16[ csharp, e a] a[_\cr gsharp a asharp]
	b[ asharp b csharp] b[ a gsharp fsharp]
	e[ fsharp gsharp a] b[ csharp d fsharp]
	a[ e fsharp gsharp] a[ e fsharp gsharp]
	a[ e a b] csharp[ d csharp c]
	b[ asharp b csharp!] b[ a gsharp fsharp]
	e[ fsharp gsharp a] \ottava #1 b[ csharp d fsharp]
	a[ e fsharp gsharp] a[ e fsharp gsharp]
	a[ \ottava #0 a, a a,] r a[ a a,]
	< gsharp gsharp' >8:[ < a a' >: < b b' >: < fsharp' fsharp' >:]
	< e e' >:[ < fsharp fsharp' >: < gsharp gsharp' >: < a a' >:]
	< gsharp gsharp' >:[ < a a' >: < b b' >: < gsharp gsharp' >:]
	< a a' >:[ < b b' >: < bsharp bsharp' >: < csharp csharp' >:]
	< gsharp gsharp' >:[ < a a' >: < b b' >: < fsharp' fsharp' >:]
	< e e' >:[ < fsharp fsharp' >: < gsharp gsharp' >: < a a' >:]
	< gsharp gsharp' >:[ < e e' >: < fsharp fsharp' >: < gsharp gsharp' >:]		|
	
	%%% MOLTO MENO MOSSO %%%
	
	< a a' >8 r r4										|
	
	R1*2/4*11
	
	r4 e8\p[( fsharp])									|
	gsharp4( \grace { fsharp16[ gsharp] } fsharp8[ e])
	\slurUp \grace { dsharp16[( e] } dsharp8[ csharp]) \slurNeutral r4
	R1*2/4
	r4 e8\p[( fsharp])
	gsharp4( \grace { fsharp16[ gsharp] } fsharp8[ e])
	\grace { dsharp16[( e] } dsharp8[ csharp]) r4
	R1*2/4
	r4 e8[( esharp])
	fsharp4( \grace { e!16[ fsharp] } e8[ d])
	\grace { csharp16[ d] } csharp8[(_\markup { \italic rall. } b]) asharp[ b]
	d4( \grace { csharp16[ d] } csharp8[ b])
	\grace { a16[( b] } a8[ gsharp]) fsharpsharp[ gsharp]
	b4( \grace { a16[ b] } a8[ g])
	\grace { fsharp16[( g] } fsharp8[ e]) dsharp[ e]
	g4( \grace { fsharp16[ g] } fsharp8[ e])
	g4(^\< \grace { fsharp16[ g] } fsharp8[ e])^\!
	g4(^\> \grace { fsharp16[ g] } fsharp8[ e])^\!
	\grace { d!16[( e] } d8[ csharp) d-- e--]			|
	g4( \grace { fsharp16[ g] } fsharp8[ e])
	g4(^\< \grace { fsharp16[ g] } fsharp8[ e])^\!
	g4( \grace { fsharp16[ g] } fsharp8[ e])
	\grace { d!16[( e] } d8[ csharp)\> d e]\!
	g4\p( \grace { fsharp16[ g] } fsharp8[ e])
	d8[( csharp) d-. e-.]
	g4( \grace { fsharp16[ g] } fsharp8[ e-.])
	\grace { d16[ e] } d8[( csharp) d e]
	bflat8-.[ bflat16( c] bflat8)[ a]
	gsharp!8-.[ gsharp16( a] gsharp8)[ a]
	bflat8-.[ bflat16( c] bflat8)[ a]
	gsharp!8-.[ gsharp16( a] gsharp8)[ a]
	bflat16[ c bflat a] gsharp![ a gsharp a]
	bflat[ c bflat a] gsharp![ a gsharp a]
	bflat[\< c bflat a] gsharp![ a gsharp a]
	bflat[ b bflat b] bsharp[ csharp! bsharp csharp]\!	|
	
	%%% TUTTI %%%
	
	d8-.\p[ d16( csharp] d8)[ b-.]						|
	csharp[ e] a,[ csharp16( d])
	e16[\< csharp e fsharp] g[ e a b]
	csharp[ a b csharp] d[ e fsharp a]\!
	b8\f[ b16( asharp] b8)[ fsharp-.]
	g-.[ g16( fsharp] g8)[_\markup { \italic dim. } dsharp]
	e[ b] csharp16[\> gsharp a asharp]\!
	b[ dsharp, e fsharp] g[ a,! b csharp]
	d8-.\p[ d16( csharp] d8)[ b-.]
	csharp[ e] a,[ csharp16( d])
	e16[\< csharp e fsharp] g[ e a b]
	csharp[ a b csharp] d[ e fsharp a]\!
	bflat8\f[ bflat16( a] bflat8)[ d,,-.\p]
	csharp[ e] a,[ csharp16( d])
	e[ csharp dsharp e] fsharp[\< dsharp gsharp a]
	b[ gsharp a b] csharp[ d e a]\!
	f8\f[ f16( e] f8)[ d,]								|
	a'8[_\markup { \italic dim. } a16( gsharp] a8)[ a,]
	bflat16\p[ b csharp d] csharp[\< d e f]
	fsharpsharp[ gsharp asharp b] csharp[ d e a!]\!
	f8-.\f[ f16( e] f8)[ d,]
	a'8-.[_\markup { \italic dim. } a16( gsharp] a8)[ a,]
	bflat16\p[ b csharp d] csharp[ d e f]
	fsharpsharp,[\< gsharp asharp b] bsharp[ csharp dsharp e]\!
	f'8\f[ f16(\> e] f8)[ d,]
	a'8[ a16( gsharp] a8)[ a,]\!
	bflat16-.\p[\< b-. csharp-. d-.] csharp[ d e f]
	fsharpsharp[ gsharp asharp b] csharp[ d e a!]\!
	f8\f[ f16( e] f8)[ d,]
	a'8[ a16( gsharp] a8)[ a,]							|
	fsharp''!8[ fsharp16( esharp] fsharp8)[ csharp,]
	d'8[ d16( csharp] d8)[ d,-.]
	g'8[_\cr g16( fsharp] g8)[ g,]
	a'8[ a, bflat' bflat,]
	b'!8[ b16( asharp] b8)[ b,!-.]
	c'8[ c, d' d,]
	d'8-.\f[ d16( csharp]) d-.[ gsharp,-. e-. d-.]
	csharp16[ bsharp csharp d] csharp[ e a csharp]
	d8-.[ d16( csharp] d)[ gsharp,-. e-. d-.]
	csharp[ bsharp csharp d] csharp[ e a csharp]
	
	%%% NEW STUFF %%%
	
	e8[ b16( asharp] b8)[ e,16( dsharp]
	e8)[ b16( asharp] b8)[ e,16( dsharp]
	e8) r r4
	r4 r16 b''16-.[ csharp-. dsharp-.]
	e8[ b16( asharp] b8)[ e,16( dsharp]
	e8)[ b16( asharp] b8)[ e,16( dsharp]
	e8) r r4
	r4 r16 b''16-.[ csharp-. dsharp-.]
	e8 r8 r16 b-.[ csharp-. dsharp-.]
	e8 r r16 c-.[ d!-. dsharp-.]
	e8 r r16 b[ d! dsharp]
	e8 r r16 c\p[ d! e]
	f8[ f16( e] f8)[ d-.]
	e[ g] c,[ bflat16( c])
	csharp!-.[ d-. g,-. gsharp-.] a-.[ bflat-. e,-. f-.]
	fsharp!-.[ g-. a-. bflat-.] b-.[ c-. d-. e-.]
	f8[ f16( e] f8)[ d-.]
	e[ g] c,[ bflat16( c])
	csharp!-.[ d-. g,-. gsharp-.] a-.[ bflat-. e,-. f-.]
	fsharp!-.[ g-. gsharp-. a-.] bflat-.[ b-. c-. csharp-.]
	d8-.[ d16( csharp] d8)[ b]
	csharp[ e] a,[ g16( gsharp])
	a[ bflat e, f] fsharp[ g csharp,! d]
	dsharp[ e f g] gsharp[ a b! csharp!]
	d8-.[ d16( csharp] d8)[ b]
	csharp[ e] a,[ g16( gsharp])
	a[ bflat e, f] fsharp[ g csharp,! d]
	dsharp[ e a, b!] bsharp[ csharp fsharp, g]
	gsharp[ a csharp,! d] dsharp[ e a, b]
	c[ csharp d\< e] f[ g gsharp a]\!
	bflat8\f r r4
	r4 r8 bflat,16\f[ < gflat' dflat' >]
	< gflat dflat' >[ bflat, dflat < bflat' gflat' >]
		< bflat gflat' >[ dflat, gflat < dflat' bflat' >]
	< dflat bflat' >[ gflat, bflat < gflat' dflat' >] < gflat dflat' >[ bflat, bflat < gflat' dflat' >]
	< f d'! >8 r r4
	r4 r8 bflat,,16[ < g'! d'! >]
	< g d' >[ bflat, d < bflat' g' >] < bflat g' >[ d, g < d' bflat' >]
	< d bflat' >[ g, bflat < g' d' >] < g d' >[ bflat, bflat < g' d' >]
	< g eflat' >8 r r4
	r4 r8 \stemDown bflat,,16[ < g' eflat' >] \stemNeutral
	< g eflat' >[ bflat, eflat < bflat' g' >] < bflat g' >[ eflat, g < eflat'! bflat' >]
	< eflat bflat' >[ g, bflat < g' eflat' >] < g eflat' >[ bflat, bflat < g' eflat' >]
	< g e'! >8 r r4
	r4 r8 < g,, e'! >16\ff[ < c' g' >]
	< c g' >[ < g, e' > < g g' > < e'' c' >] < e c' >[ < g,, g' >] r8
	r4 r8 < g e'! >16[ < c' g' >]
	< c g' >[ < g, e' > < g g' > < e'' c' >] < e c' >[ < g,, g' >] r8
	
	R1*2/4*3
	
	r8 a16[_\markup { \dynamic p \italic cresc. } b] c[_\cr a c d]
	eflat[ c a' b] c[ a c d]
	eflat[ c a' b] c[ a c d]
	eflat[\< a,, c a'] c-1[ d eflat-1 gsharp]\!
	\stemDown a8\f[ \stemNeutral \stemUp a,,,16\p( b]) \stemNeutral c[_\cr a c d]
	eflat[ c a' b] c[ a c d]
	eflat[ c a' b] c[ a c d]
	eflat[\< a,, c a'] c[ d eflat gsharp]\!
	a8\f \noDynamic a,,,16\p[(_\markup { \dynamic p \italic cresc. } b]) c[ a c dsharp]
	e[\< a c e] a[ c e-1 gsharp]\!
	\stemDown a8\f[ \stemNeutral \stemUp \noDynamic a,,,16\p(_\markup { \dynamic p \italic cresc. }
		b]) \stemNeutral c[_\cr a c e]
	f[\< a c f] a[ c f gsharp]\!
	a\ff[ fsharp! g! a] c,[ d e a,] b[ c fsharp, g] a[ c, d e]
	a,[ b c fsharp,] g[ a c, d]
	e[ a, b c] d[ c b a]
	
	%%% POCO MENO MOSSO %%%
	
	g8 r r4
	
	R1*2/4*2
	
	r4 g'8-.\mf[( d-.])
	fsharp4( e8[ d--])
	c!8[ \tuplet 3/2 { c16(\( d c]\) } b8[ a-.])
	g2~\(
	g4\glissando( g'8-0)[ d-.]\)
	fsharp4( e8[ d--])
	c!8[ \tuplet 3/2 { c16(\( d c]\) } b8[ a-.])
	g2~\(
	g4\glissando( e'8)[ e-.]\)
	e4( d8[ c])
	b-.[( a\glissando]\( e'\)[ e-.])
	e4( d8[ c])
	b4\glissando( g'8[ d-.])
	e4( d8[ c])
	b8-.[( a\glissando]\( e'\)[ e-.])
	e4( d8[ c])
	b16[( d) g-. d'-.] < c! e >-.[ d,-. < c' e >-. d,-.]
	< c' e >[ d,-. d-. < c' e >-.] < b d >-.[ d,-. < a' c >-. d,-.]
	< g b >[ d < fsharp a > d] < b' e >[ d, < b' e > d,]
	< b' e >[ d, d < b' e >] < b d >[ d, < a' c > d,]
	< g b >[ d d < g b >] < c a' >[ d, d' d,]
	< c' e >[ d, d < c' e >] < b d >[ d, < a' c > d,]
	< g b >[ d < fsharp a > d] < b' e >[ d, < b' e > d,]
	< b' e >[ d, d < b' e >] < b d >[ d, < a' c > d,]
	< g b >[\< g, b d]\! < e e' >8\downbow\f[ < e e' >\downbow]
	< e e' >4\downbow < d d' >8\downbow[ < c c' >\downbow]
	< b b' >\downbow[ < a a' >\downbow\glissando]( < e' e' >)[ < e e' >\downbow]
	< e e' >4\downbow < d d' >8\downbow[ < c c' >\downbow]
	< b b' >4\glissando( < g' g' >8)[ < d d' >\upbow]
	< e e' >4\downbow < d d' >8\downbow[ < c c' >\downbow]
	< b b' >\downbow[ < a a' >\downbow\glissando]( < e' e' >)[ < e e' >\downbow]
	< e e' >4 < d d' >8[ < c c' >]
	< b b' >4 g'16[ fsharp g gsharp]
	a[ gsharp a b] a[ g fsharp e]
	d[ e fsharp g] a[ b c e]
	g[ d e fsharp] g[ d e fsharp]
	g[ d g a] b[ c b bflat]
	a[ gsharp a b!] a[ gsharp fsharp e]
	d[ e fsharp g] a[ b c e]
	g[ d e fsharp] g[ d e fsharp]
	g[ \ottava #1 a b d] e8-0[ e-0]
	e4-0 \ottava #0
	< d,, g\harmonic >8-.[( < c fsharp\harmonic >-.])
	< b e\harmonic >[ < a d\harmonic >\glissando](\( < e' a\harmonic >)[ < e a\harmonic >]\)
	< e a\harmonic >4 < d g\harmonic >8-.[( < c fsharp\harmonic >-.])
	< b e\harmonic >4\glissando( < g' c\harmonic >8)[ < d g\harmonic >]
	< e a\harmonic >4 < d g\harmonic >8-.[( < c fsharp\harmonic >-.])
	< b fsharp'\harmonic >[ < a d\harmonic >\glissando](\( < e' a\harmonic >)[ < e a\harmonic >]\)
	< e a\harmonic >4 < d g\harmonic >8-.[( < c fsharp\harmonic >-.])
	
	%%% MOLTO MENO MOSSO %%%
	
	< b e\harmonic > r8 r4
	
	R1*2/4*15
	
	r4 fsharp8\mf[( g])
	a4( g8[ fsharp])
	\grace { e16[( fsharp] } e8[ dsharp]) a--[ b--]
	c4\glissando( b'8[ a])
	\grace { b,16[( c] } b8[ a]) a--[ b--]
	c4\glissando( b'8[ a])
	\grace { b,16[( c] } b8[ a]) a--[ b--]
	c4\glissando( b'8[ a])
	\grace { b,16[( c] } b16[ a) d-. e-.] fsharp8[ g]
	a4( g8[ fsharp])
	\grace { e16[( fsharp] } e8[ dsharp]) a--[ b--]
	c4\glissando( b'8[ a])
	\grace { b,16[( c] } b8[ a]) a--[ b--]
	c4\glissando( b'8[ a])
	\grace { b,16[( c] } b8[ a]) a--[ b--]
	c4\glissando( b'8[ a])
	\grace { g16[( a] } g8[ fsharp])\< d'-.[ c-.]
	\grace { b16[( c] } b8[ a]) fsharp'--[ e--]
	\grace { e16[^( fsharp] } e8[ dsharp]^) g-.[ fsharp-.]
	\grace { fsharp16[^( g] } fsharp8[ e^) e'-- d--]\!
	\grace { d16[^( e] } d8[ csharp]^) e--[ g,--]
	bflat4( a8[ g])
	\grace { g16[^( a] } g8[\> f^) a-- d,--]
	f4( e8[ d])\!
	\grace { d16[ e] } d8\p[( csharp) e-- g,--]
	bflat4( a8[ g])
	\grace { g16[( a] } g8[ f) a-- d,--]
	f4(^\> e8[ d])^\!
	\grace { d16[( e] } d8[ csharp) e-- a,--]
	bflat2\pp(
	a8)[ csharp( e a,])
	bflat2(
	a8)[ csharp( e gsharp,])
	a[( csharp) e( gsharp,])
	\tuplet 3/2 { a-.[_\cr csharp-. e-.] } \tuplet 3/2 { gsharp,-.[ a-. csharp-.] }
	\tuplet 3/2 { e-.[ gsharp,-. a-.] } \tuplet 3/2 { csharp-.[ e-. gsharp,-.] }
	a16-.[ csharp-. e-. gsharp,-.] a[\< csharp e gsharp,]
	a[ csharp e gsharp,] a[ csharp e gsharp,]
	a[ csharp e gsharp,] a[ csharp e gsharp,]
	a[ csharp e gsharp,] a[ csharp e gsharp,]\!
	a\ff[\> csharp e gsharp,] a[ csharp e gsharp,]
	a[ csharp e gsharp,] a[ csharp e gsharp,]
	a[ csharp e gsharp,] a[ csharp e gsharp,]\!
	a[ gsharp a asharp] b[ asharp b csharp]
	
	%%% TEMPO 1 %%%

	d8-.\p[ d16( csharp] d8)[ b-.]						|
	csharp[ e] a,[ csharp16( d])
	e16[\< csharp e fsharp] g[ e a b]
	csharp[ a b csharp] d[ e fsharp a]\!
	b8\f[ b16( asharp] b8)[ fsharp-.]
	g-.[ g16( fsharp] g8)[_\markup { \italic dim. } dsharp]
	e[ b] csharp16[\> gsharp a asharp]\!
	b[\> dsharp, e fsharp]\! g[ a, b csharp]
	d!8-.\p[ d16( csharp] d8)[ b-.]
	csharp[ e] a,[ csharp16( d])
	e16[\< csharp e fsharp] g[ e a b]
	csharp[ a b csharp] d[ e fsharp a]\!
	bflat8\f[ bflat16( a] bflat8)[ d,,-.\p]
	csharp[ e] a,[ csharp16^1( d])
	e[\< csharp dsharp e] fsharp[ dsharp gsharp a]
	b[ gsharp a b] csharp[ d e a]\!
	f8\f[ f16( e] f8)[ d,]								|
	a'8[_\markup { \italic dim. } a16( gsharp] a8)[ a,]
	bflat16\p[\< b csharp d] csharp[ d e f]
	fsharpsharp[ gsharp asharp b] csharp[ d e a!]\!
	f8-.\f[ f16( e] f8)[ d,]
	a'8-.[_\markup { \italic dim. } a16( gsharp] a8)[ a,]
	bflat16\p[ b csharp d] csharp[ d e f]
	fsharpsharp,[\< gsharp asharp b] bsharp[ csharp dsharp e]\!
	f'8\f[ f16(\> e] f8)[ d,]
	a'8[ a16( gsharp] a8)[ a,]\!
	bflat16-.\p[\< b-. csharp-. d-.] csharp[ d e f]
	fsharpsharp[ gsharp asharp b] csharp[ d e a!]\!
	f8\mf[ f16( e] f8)[ d,]
	a'8[ a16( gsharp] a8)[ a,]							|
	fsharp''!8[ fsharp16( esharp] fsharp8)[ csharp,]
	d'8[ d16( csharp] d8)[ d,-.]
	g'8[_\cr g16( fsharp] g8)[ g,]
	a'8[ a, bflat' bflat,]
	b'!8[ b16( asharp] b8)[ b,!-.]
	c'8[\< c, d' d,]\!
	d'8\f[ d16( csharp]) d[ gsharp, e d]
	csharp16[ bsharp csharp d] csharp[ e a csharp]
	d8[ d16( csharp] d)[ gsharp, e d]
	csharp[ bsharp csharp d] csharp[ e a csharp]
	d8-.[ d16( csharp] d8)[ d,-.]
	f'8-.[ f16( e] f8)[ f,-.]
	fsharp'!-.[\< fsharp,!-. g'-. g,-.]
	gsharp'-.[ gsharp,-. a'-. a,-.\f]\!
	d16[( csharp d8]) a16[( gsharp a8])					|
	d,16[( csharp d8]) a16[( gsharp a8])
	d,16[( csharp d8]) a16[(\< gsharp a8])
	bflat16[ bflat b b] c[ c csharp csharp]\!
	d8\f[ d16\p( csharp] d8)[ b]
	csharp[ e] a,[ csharp16( d])
	e[ csharp e fsharp] g[ e a b]
	csharp[\< a b csharp] d[ e fsharp a]\!
	b8\f[ b16( asharp] b8)[ fsharp-.]
	g8-.[ g16( fsharp] g8)[ dsharp-.]
	e[ b] csharp16-.[\< gsharp-. a-. asharp-.]
	b[ esharp, fsharp gsharp] asharp[ asharp b csharp]\!
	< b, fsharp' d' >8\f[ d'16(\( csharp] d8)[ b-.]\)
	< a, e' csharp' >[ e''] < a,, e' a >[ csharp'16 d]
	e[ csharp e fsharp] g[\< e a! b]
	csharp[ a b csharp]\! d[ e fsharp g]
	< d,, a' d' >8[ d''16(\( csharp] d8)[ b-.]\)		|
	< a, csharp' >[ e''] < a,, a' >16[ gsharp' a b]
	csharp[ b csharp d] e[ fsharp g gsharp]
	\ottava #1 a[ asharp b csharp] d8\f \ottava #0 r
	d,8\f[ d16(\( csharp] d8)[ b-.]\)
	g16[ fsharp e g] d[ csharp b d]
	g,[ fsharp e g] d[ csharp b d]
	g,[ b e g] b[ e g b]
	d8[ d16(\( csharp] d8)[ b-.]\)
	g16[ fsharp e g] d[ csharp b d]
	g,[ fsharp e g] d[ csharp b d]
	g,[ b e g] b[ e g b]
	d8-.[ d16( csharp] d8)[ < d,, b' >-.]				|
	R1*2/4
	d''8-.[ d16( csharp] d8)[ < d,, b' >-.]
	R1*2/4
	d''8-.[ d16( csharp] d8)[ < d,, b' >-.]
	d''8-.[ d16( csharp] d8)[ < d,, b' >-.]
	d''8[ < d,, b' >-.] d''8[ < d,, b' >-.]
	d''8[ < d,, b' >-.] d''8[ < d,, b' >-.]
	d'' r r4
	
	R1*2/4*24
	
	r4 r8 a,,16\ff[ < fsharp' d' >]
	< fsharp d' >[ a, d < a' fsharp' >] < a fsharp' >[ d, fsharp < d' a' >]
	< d a' >[ fsharp, a < fsharp' d' >] < fsharp d' >[ a, a < fsharp' d' >]
	< fsharp d' >8 r r4
	r4 r8 b,,16[ < fsharp' d' >]
	< fsharp d' >[ b, d < b' fsharp' >] < b fsharp' >[ d, fsharp < d' b' >]
	< d b' >[ fsharp, b < fsharp' d' >] < fsharp d' >[ b, b < fsharp' d' >]
	< d d' >8 r r4
	r4 r8 b,16[ < g' d' >]
	< g d' >[ b, d < b' g' >] < b g' >[ d, g < d' b' >]
	< d b' >[ g, b < g' d' >] < g d' >[ b, b < g' d' >]
	< g e' >8 r r4
	r4 r8 b,,16[ < g' e' >]
	< g e' >[ b, e < b' g' >] < b g' >[ e, g < e' b' >]
	< e b' >[ g, b < g' e' >] < g e' >[ b, b < g' e' >]
	< g e' >8 r r4
	r4 r8 b,,16[ < g' e' >]
	< g e' >[ b, e < b' g' >] < b g' >[ e, g < e' b' >]
	< e b' >[ g, b < g' e' >] < g e' >[ b, b < g' e' >]
	< g e' >8 r r4
	< g,, e' c' asharp' >8[ asharp''16( a] asharp8)[ e]
	R1*2/4
	< g,, e' c' asharp' >8-.[ asharp''16( a] asharp8)[ e-.]
	r4 < g,, e' c' asharp' >8[ g]
	r4 < g e' c' asharp' >8[ g]
	r4 < g d' bflat' e >8[ g]
	r4 < csharp! g' a e' >8[ a']
	r4 < d, a' fsharp' >8[ d]
	r4 < g, d' b' g' >8[ d']
	r4 d16\p[ csharp d f]
	f[_\cr e f gsharp] gsharp[ g gsharp d']
	d[ csharp d f] f[ e f gsharp]
	gsharp[ g gsharp d'] d[ e f gsharp]
	a8:16\f[ fsharp!8:] d:[ asharp:]
	b:[ fsharp:] g:[ dsharp:]
	e:[ b:] csharp:[ e:]
	a:[ asharp: b: csharp:]
	d16[ d,, csharp d] e[ fsharp g a]
	bflat[ e g, a] bflat[ e dsharp e]
	fsharp[ g csharp, d!] e[ fsharp g gsharp]
	a[ b csharp d] e[ fsharp g a]
	d,16[ d,, csharp d] e[ fsharp g a]
	bflat[ e g, a] bflat[ e dsharp e]
	fsharp[ g csharp, d!] e[ fsharp g gsharp]
	a[ b csharp d] e[ fsharp g a]
	d,[ d e fsharp] asharp,[ asharp b csharp]
	b[ b csharp d] fsharp,[ fsharp g a]
	e[ e fsharp g] < g,, d' >[ < bflat' e > < bflat e > < g, d' >]
	< bflat g' >[ < d' e > < d e > < bflat, g' >] a'[ a' b! csharp]
	d[ d e fsharp] asharp,[ asharp b csharp]
	b[ b csharp d] fsharp,[ fsharp g a]
	e[ e fsharp g] < g,, d' >[ < bflat' e > < bflat e > < g, d' >]
	< bflat g' >[ < d' e > < d e > < bflat, g' >] a'[ a' b! csharp]
	d[ d,, fsharp g] a[ a b csharp]
	d[ e fsharp g] a[ a b csharp]
	d[ e, fsharp g] a[ a b csharp]
	
	\ottava #1
	d[ e fsharp g] a[ a b csharp]
	d[ d d d] < d, d' >[ < d d' > < d d' > < d d' >]
	< d d' >2:16
	< d d' >:
	< d d' >:
	< d d' >:
	< d d' >:
	< d d' >16[ d' csharp b] a[ g fsharp e]
	
	\ottava #0
	d[ a b csharp] d[ a b csharp]
	d[ csharp b a] gsharp[ fsharp e d]
	csharp[ b a g!] fsharp[ e d csharp]
	d[ a b csharp] d[ fsharp a csharp]
	d[ a b csharp] d[ fsharp a csharp]
	d[ a, b csharp] d[ fsharp a csharp]
	d[ a b csharp] d[ e fsharp a]
	\ottava #1 d8 \ottava #0 r r4 
	R1*2/4
	r8 e,->[ a->] r
	< a,,, fsharp' d' > r r4\fermata
}
