\version "2.18.2"

\include "cadenza.ily"


theSolo = \relative d' {
	\clef "treble"
	\key d \major
	
	r1
	
	R1*21
	
	%%% SOLO %%%
	
	r8 a8\p( bflat4~ bflat8)[ a( csharp e])												|
	\tuplet 3/2 { g8[(\< a csharp] } e16[ g a csharp]\! e8)[_\cr d( csharp bflat])		|
	a8\f[ gsharp(_\markup { \italic rit. } a asharp])
		b4^\markup { \italic ritenuto }_\markup { \italic dim. }
		\grace { a16[ b] } a8(\> gsharp												|
	csharp,4) d8( dsharp fsharp4) \grace { e16[ fsharp] } e8( csharp\!				|
	a8)[ gsharp( a asharp]\> b) a4\fermata g8\!
	
	%%% TUTTI %%%
	
	\set Score.tempoHideNote = ##f
	\appoggiatura a,8 \tempo "Moderato assai." 4 = 80
		fsharp'8 r\p fsharp2 e16[( d fsharp a]) e4.( fsharp8) e4 fsharp					|															|
	\set Score.tempoHideNote = ##t
	\appoggiatura b,8 g'8 r g4~( g8.[ a16]) b[( csharp d e])							|
	a,4. \tuplet 3/2 { b16[( d b] } a8)[^\markup { \italic dolce } b( csharp d])			|
	e8( g a,4)~ a8[ b( csharp d])														|
	e8( g a,4)~ \tuplet 3/2 { a8[( gsharp a]) } \tuplet 3/2 { asharp[( gsharpsharp asharp]) } |
	\tuplet 3/2 { b8[( d fsharp)] } gsharp,4~ gsharp16[ dsharp( e fsharp]
		gsharp[ a b e])																	|
	e4~(\< e16[ esharp fsharp gsharp])\! a8\mf[( b16.-.) b32]( csharp,4~				|
	csharp8[ e16-.) r32 e]( g,4~ g8[ b16-.) r32 b]( csharp,8[ g'16-.) r32 g](			|
	b,8[\cresc e16-.) r32 e](
		bflat8[ csharp16-.) r32 csharp32]( a8[ bflat16-.) r32 bflat-.](\<
		gsharp8[ bflat16-.) r32 bflat](\!												|
	a8[ bflat16-.) r32 bflat32]( gsharp8[ bflat16-.) r32 bflat]( a8[ bflat16-.)
		r32 bflat32]( gsharp8[\> bflat16-.) r32 bflat](									|
	gsharp8[ a16-.) r32 bflat]( gsharp8[ a16-.)\! r32 bflat\p](
		\tuplet 3/2 { gsharp16[ a bflat } \tuplet 3/2 { gsharp16 a bflat }
		\tuplet 3/2 { gsharp16 a bflat } \tuplet 3/2 { gsharp16 a bflat]) }							|
	\tuplet 3/2 { gsharp16[(\< a bflat } \tuplet 3/2 { b16 bsharp csharp] }
		\tuplet 3/2 { d16[ dsharp e } \tuplet 3/2 { esharp16 fsharp g] }
		\tuplet 3/2 { gsharp16[ a bflat } \tuplet 3/2 { b16 c csharp]\! } d16[ dsharp e esharp]) |
	< d, a' fsharp' >8 r < d a' fsharp' >2\downbow \grace { e'16[ fsharp] } e16[( d fsharp a])
	\appoggiatura a,8 < csharp e >4.( < d fsharp >8) \tuplet 3/2 { < csharp e >(
		< bsharp dsharp > < csharp e >) }
		<< { \tuplet 3/2 { fsharp8( e fsharp) } } \\ { < d,! c' >8 r } >>
	< d b' g' >8 r < d b' g' >4\downbow(\( < b' g' >8.[\) a'16]) b16[( csharp d e)]
	a,4.( \tuplet 3/2 { b16[ d b] } a8)[ b( csharp d)]
	e8( g a,4~ a8)[_\cr b( csharp d])
	e8( g a,4~\< a16[ asharp) b--( csharp--] d--[ e-- f-- fsharp--])\!
	gsharp8\f[( a16-.) r32 a]( a,8[ fsharp'16-.) r32 fsharp]( gsharp,8[ csharp16-.) r32 csharp](
		d,8[ b'16-.) r32 b](
	csharp,8[ a'16-.) r32 a]( a,8[ e'16-.)_\markup { \italic dim. } r32 e](
		fsharp,8[ csharp'16-.) r32 csharp]( e,8[ a16-.) r32 a](
	csharp,8[\tempo "Ben sostenuto il tempo." fsharp16-.) r32 fsharp]( e8[ fsharp16-.) r32 fsharp]( csharp8[ fsharp16-.) r32 fsharp](
		e8[ fsharp16-.) r32 fsharp](
	e8[ g16-.) r32 g]( csharp,8[ e16-.) r32 e]( b8[ e16-.) r32 e](
		csharp8[ a'16-.) r32 a](
	\tuplet 3/2 { d,16[ fsharp a] } \tuplet 3/2 { b8[ csharp16]) } \tuplet 3/2 { fsharp,16[( a b] }
		\tuplet 3/2 { csharp8[ d16]) } \tuplet 3/2 { a16[( d e] } \tuplet 3/2 { esharp8[ fsharp16]) }
		\tuplet 3/2 { b16[( a fsharp] } \tuplet 3/2 { d[ a fsharp]) }
	e8\f[( g16-.) r32 g]( csharp,8[ e16-.) r32 e]( b8[ e16-.) r32 e](
		csharp8[ a'16-.) r32 a](
	\tuplet 3/2 { d,16[ fsharp a] } \tuplet 3/2 { b8[ csharp16]) } \tuplet 3/2 { fsharp,16[( a b] }
		\tuplet 3/2 { csharp8[ d16]) } \tuplet 3/2 { a16[( d e] } \tuplet 3/2 { esharp8[ fsharp16]) }
		\tuplet 3/2 { b16[( a fsharp] } \tuplet 3/2 { d[ a fsharp]) }
	fsharp8\f[( g16-.) r32 g]( fsharp8[ gsharp16-.) r32 gsharp](
		\tuplet 3/2 { fsharp16[ asharp16 csharp] } \tuplet 3/2 { e16[ esharp fsharp]) }
		\tuplet 3/2 { asharp,!16[( b d] } \tuplet 3/2 { fsharp16[ asharp b]) }
	b,8[( c16-.) r32 c]( b8[ csharp16-.) r32 csharp]( \tuplet 3/2 { b16[ dsharp fsharp }
		\tuplet 3/2 { a! asharp b]) } \tuplet 3/2 { dsharp,![( e g } \tuplet 3/2 { b dsharp e]) }
	\tuplet 3/2 { e,[( fsharpsharp gsharp } \tuplet 3/2 { b dsharp e]) }
		\tuplet 3/2 { e,[( gsharp a } \tuplet 3/2 { c dsharp e]) }
		\tuplet 3/2 { gsharp,[( b dsharp } \tuplet 3/2 { e fsharpsharp gsharp]) }
		\tuplet 3/2 { a,[( c! dsharp } \tuplet 3/2 { e gsharp a]) }
	\tuplet 3/2 { \noDynamic bflat-.\ff[ d,( eflat } \tuplet 3/2 { f) bflat,( csharp!] }
		\tuplet 3/2 { d)[ f,( a } \tuplet 3/2 { bflat!) d,( eflat] }
		\tuplet 3/2 { f!)[ bflat,( csharp! } \tuplet 3/2 { d) f,( a] }
		\tuplet 3/2 { bflat!)[ bflat,( csharp! } \tuplet 3/2 { d) f( bflat] }
	\tuplet 3/2 { b!)[ f( g } \tuplet 3/2 { aflat) aflat( b] } \tuplet 3/2 { f')[ f( g }
		\tuplet 3/2 { aflat) aflat( b!] } \tuplet 3/2 { f')[ aflat,( b } \tuplet 3/2 { f') b,( f'] }
		\tuplet 3/2 { aflat)[ f( aflat } \tuplet 3/2 { b!) aflat( b] }
	c8) r r4 c,,,32[( e fsharp! g a! bflat b c] dsharp[ e fsharp! g gsharp a bflat b])
	c8 r r4 c,,32[( e fsharp! g a! bflat b c] dsharp[ e fsharp! g gsharp a bflat b])
	c8 r8 d,,32[( fsharp a d) d( fsharp a d]) d8 r e,,32[( gsharp d' e) e( gsharp d' e])
	e8 r d,32[( f gsharp b) b( d f gsharp]) gsharp8 r c,,32[( d dsharp a') a( b c dsharp])
	e16_>-.\ff[ a,,_>-. fsharp''_>-. a,,32-. fsharp''-.] e16_>-.[ a,,_>-. fsharp''_>-. a,,32-. fsharp''-.]
		e32[( b a e]) e32[( b e, fsharp] gsharp[ a b dsharp] e[ fsharp gsharp b])
	e16_>-.[ a,,_>-. fsharp''_>-. a,,32-. fsharp''-.] e16_>-.[ a,,_>-. fsharp''_>-. a,,32-. fsharp''-.]
		e32[( b a e]) e32[( b e, fsharp] gsharp[ a b dsharp] e[_\cr fsharp gsharp a])
	b32[( gsharp e b]) gsharp[(\< b csharp dsharp] e[ dsharp e fsharp] gsharp[ a b csharp]) d![( b gsharp e]
		b[ dsharp! e fsharp] gsharp[ fsharp gsharp a] b[ csharp d! e])\!
	fsharp32[( e d csharp]) b[( d b a]) gsharp[( b gsharp fsharp]) e[( fsharp d csharp]) b[( d b a)
		gsharp( b gsharp fsharp]) e[( fsharp d csharp) b( d b a]
	gsharp16)[ a8 gsharp16]~ gsharp[ fsharpsharp8 gsharp16]~( gsharp[ a asharp) b-.] c-.[ csharp-. d-. dsharp-.]
	e8_\markup { \italic dim. } f4 e8~\> e f4(\! fsharp8\p)
	a4(_\markup { \italic {con molto espr.} } gsharp) b16[( a gsharp b] a4)
	b4( asharp4) csharp16[( b asharp csharp] b4)
	\tuplet 3/2 { csharp8[(\< d e] } \tuplet 3/2 { fsharp[ g! fsharp])\! } fsharp8(\> b4 fsharp8)\!
	
	\override TupletBracket.transparent = ##t
	\grace { e16[ fsharp] } \tuplet 3/2 { e8[(\< dsharp-. e-.] } \tuplet 3/2 { g[-. fsharp-. e-.])\! }
		fsharp8(\> b4 fsharp8)\!
	\grace { f16[ g] } \tuplet 3/2 { f8[( e f] } \tuplet 3/2 { a)[ a,-. b-.] } bsharp-.[ csharp]~
		\tuplet 3/2 { csharp[ csharp,-.( d-.]) }
	dsharp8(^\< e~ \tuplet 3/2 { e)[ esharp-.( fsharp-.] } \tuplet 3/2 { fsharpsharp-.[ gsharp-. a-.])^\! }
		\tuplet 3/2 { asharp[(^\> csharp b])^\! }
	a!4( gsharp) b16[( a gsharp b] a4)
	b4( asharp4) csharp16[( b asharp csharp] b4)
	\tuplet 3/2 { csharp8[(_\markup { \italic {poco cresc.}} d e] } \tuplet 3/2 { fsharp[ g! fsharp]) } fsharp8( b4-> fsharp8)
	\tuplet 3/2 { f[( gsharp a!] } \tuplet 3/2 { b)[ csharp-. b-.] } b-. e4--~ e8--
	\tuplet 3/2 { fsharp!8\f[ e d] csharp[ d e] g![ fsharp e] d[ csharp b] }
	\grace { a16[ b] } \tuplet 3/2 { a8[ gsharp( a] c)[ a,( b] csharp!)[ csharp,!( d] e)[\> a8.( a,16)]\! }
	a4( gsharp) b16[( a gsharp b] a4)
	b4( asharp4) csharp16[( b asharp csharp] b4)
	\tuplet 3/2 { csharp8[( d e] fsharp)[ g8.( fsharp16]) } fsharp8 b4(_> fsharp8)
	\tuplet 3/2 { b8[( csharp d]) d[( e fsharp]) fsharp-.[ d,-. fsharp'->]~( fsharp[ e d]) }
	\tuplet 3/2 { csharp[( d e]) e[( fsharp g]) g-.[ e,-. g'->]~( g[_\markup { "" \raise #-2.5 \italic {poco a poco cresc.} } fsharp e]) }
	\tuplet 3/2 { gsharp-.[ f,-. gsharp'-.]~( gsharp[ g f]) a-.[ fsharp, a'](~ a[ gsharp fsharp]) }
	\tuplet 3/2 { bflat[( a g!]) b[( asharp gsharp]) csharp[( b asharp]) d[( csharp b]) }
	\tuplet 3/2 { e8[(\< dsharp csharp]) e[( dsharp csharp]) e16[( dsharp csharp) e( dsharp csharp) e( dsharp csharp) bsharp( csharp e)]\! }
	f4\f( e) g16[( f e g] \tuplet 3/2 { fsharp8)[ aflat( g] }
	\tuplet 3/2 { eflat)[ g( f] } \tuplet 3/2 { d)[ f( eflat] } \tuplet 3/2 { c)[ e( d] } \tuplet 3/2 { bflat)[ d( c]) }
	f4( e!) g16[( f e g] f)[ f( aflat g]
	eflat)[ eflat( g f] d)[ d( f eflat] c)[ c( eflat d] bflat)[ bflat( d c])
	bflat4( a) c16[( bflat a c] bflat)[ bflat( d bflat])
	a4( gsharp) b!16[( a gsharp b] a)[ a( csharp! a])
	gsharp4 fsharp16[( gsharp a fsharp]) fsharp[( e dsharp fsharp] e)[ csharp( bsharp d]
	csharp)[ a( gsharp b] a)[ e( dsharp fsharp] e)[ csharp( bsharp d] csharp)[ a( gsharp b]
	
	\override TupletBracket.transparent = ##f
	a8->\ff)[\< b32( csharp d e] \tuplet 11/8 { fsharp[ gsharp a b csharp d e fsharp gsharp a b])\! }
		\tuplet 3/2 { csharp8->[ d-> e->] } r4
	a,,,8->[ b32( csharp d e] \tuplet 11/8 { fsharp[ gsharp a b csharp d e fsharp gsharp a b]) }
		\tuplet 3/2 { csharp8->[ d-> e->] } r4
	\tuplet 5/4 { e,,32[( fsharp gsharp a b] } \tuplet 7/4 { csharp[ dsharp e fsharp gsharp a b]) }
		\tuplet 3/2 { csharp8->[ dsharp-> e->] } \tuplet 5/4 { e,,32[( fsharp gsharp a b] }
		\tuplet 7/4 { csharp[ dsharp e fsharp gsharp! a asharp] } \tuplet 3/2 { b8->)[ dsharp!-> e->] }
	\tuplet 5/4 { e,,32[( fsharp gsharp a b] } \tuplet 7/4 { c[ d! e fsharp gsharp a b]) }
		\tuplet 3/2 { c8->[ dsharp-> e->] } \tuplet 5/4 { e,,32[( fsharp! gsharp! a b] }
		\tuplet 7/4 { c![ d e f g a b] } \tuplet 3/2 { c!8->)[ dsharp!-> e->] }
	\stemDown f16:32[^\fff \stemNeutral c,,: d!: e:] f:[ g: a: c:] b:[ fsharp: b: fsharp':] b:[ csharp!: dsharp: f:]
	b:[ e,,: b: gsharp:] e:[ fsharp: gsharp: b:] a:[ e: a: e':] a:[ b: csharp: e:]
	a-.[ a,,-. d'-. a,-.] a''-.[ a,,-. c'-. a,-.] a''-.[ d,,,-. d'-. d,-.] f32[( a d f] a[ d f a])
	a16-.[ a,,-. d'-. a,-.] a''-.[ a,,-. c'-. a,-.] a''-.[ d,,,-. d'-. d,-.] f32[( a d f] a[ d f a])
	\tuplet 3/2 { r16 gsharp,,,( < f' b >) } \tuplet 3/2 { < f b >( gsharp, < f' b >]) } \tuplet 3/2 { r16 e[( < a e' >) }
		\tuplet 3/2 { < a e' >( e < a e' >]) } \tuplet 3/2 { r16 d,[( < b' e >) } \tuplet 3/2 { < b e >( d, < b' e >]) }
		\tuplet 3/2 { r16 < a, e' >( < c' a' >) } \tuplet 3/2 { < c a' >( < a, e' > < c' a' >]) }
	\tuplet 3/2 { r16 b[( b') } \tuplet 3/2 { b( b, b']) } \tuplet 3/2 { r16 a,[( < e' csharp'! >) }
		\tuplet 3/2 { < e csharp' >( a, < e' csharp' >]) } \tuplet 3/2 { r16 a,[( a') } \tuplet 3/2 { a( a, a']) }
		\tuplet 3/2 { r16 a,[( a'') } \tuplet 3/2 { a( a,, a'']) }
		
	%%% DOUBLE BAR %%%
	
	\tuplet 3/2 { e16-.\p[ csharp-. e-. } \tuplet 3/2 { fsharp-. csharp-. fsharp-.] } \tuplet 3/2 { d-.[ b-. d-. }
		\tuplet 3/2 { gsharp!-. dsharp-. gsharp-.] }
		\override TupletBracket.transparent = ##t
		\tuplet 3/2 { e16-.[ csharp-. e-. fsharp-. csharp-. fsharp-.] } \tuplet 3/2 { d-.[ b-. d-. gsharp-. dsharp-. gsharp-.] }
	\tuplet 3/2 { e-.[ csharp-. e-. g!-. e-. g-.] d!-.[ b-. d-. fsharp-. d-. fsharp-.] csharp-.[ a-. csharp-.
		e-. csharp-. e-.] a,-.[ fsharp-. a-. csharp-. a-. csharp-.] }
	\tuplet 3/2 { b[( gsharp e]) fsharp'-.[ csharp-. fsharp-.] d-.[ b-. d-. gsharp-. dsharp-. gsharp-.] }
	\tuplet 3/2 { e-.[ csharp-. e-. fsharp-. csharp-. fsharp-.] d!-.[ b-. d-. gsharp-. dsharp-. gsharp-.]
		e-.[ csharp-. e-. g!-. e-. g-.] d!-.[ b-. d-. fsharp-. d-. fsharp-.] csharp-.[ a-. csharp-. e-. csharp-. e-.]
		a,-.[ fsharp-. a-. csharp-. a-. csharp-.] }
	\tuplet 3/2 { b16[(_\markup { "" \raise #-2.0 { \dynamic pp \italic {poco a poco cresc.}}} gsharp e]) < asharp, fsharp' >-.[
		csharp,-. < asharp' fsharp' >-.] b,-.[ < fsharp' d' >-. b,-.] < bsharp' gsharp' >-.[ dsharp,-. < bsharp' gsharp' >-.]
		csharp,-.[ < a' e' >-. csharp,-.] < asharp' fsharp' >-.[ csharp,-. < asharp' fsharp' >-.]
		b,-.[ < fsharp' d' >-. b,-.] < bsharp'! gsharp'! >-.[ dsharp,!-. < bsharp' gsharp' >-.] }
	\tuplet 3/2 { csharp,-.[ < a'! e' >-. csharp,-.] < csharp' a' >-.[ e,-. < csharp' a' >-.] d,![ < a' fsharp' >-. d,-.]
		< dsharp' b' >-.[ fsharp,-. < dsharp' b' >-.] e,-.[ < b' gsharp' > e,-.] < csharp' a' >-.[ e,-. < csharp' a' >-.] d,![ < a' fsharp' >-. d,-.]
		< dsharp'! b' >-.[ fsharp,-. < dsharp' b' >-.] }
	\tuplet 3/2 {  e,-.[ < b' gsharp' > e,-.] < e' csharp' >-.[ gsharp,-. < e' csharp' >-.] fsharp,-.[ < csharp' a' >-. fsharp,-.] < fsharp' d' >-.[
		a,-. < fsharp' d' >-.] gsharp,-.[ < e' b' >-. gsharp,-.] < gsharp' e' >-.[ b,-. < gsharp' e' >-.] a,-.[ < e' csharp' >-. a,-.]
		< a' fsharp' >-.[ csharp,-. < a' fsharp' >-.] }
	\tuplet 3/2 { b,-.[ < fsharp' d' >-. b,-.] < b' gsharp' >-.[ d,-. < b' gsharp' >-.] d,-.[_\cr < b' fsharp' >-. d,-.]
		< b' gsharp' >-.[ d,-. < b' gsharp' >-.] a'16[( fsharp d a fsharp d]) d[( fsharp a d fsharp a]) }
	\tuplet 3/2 { d,,-.[ < b' fsharp' >-. d,-.] < b' gsharp' >-.[ d,-. < b' gsharp' >-.] d,-.[ < b' fsharp' >-. d,-.]
		< b' gsharp' >-.[ d,-. < b' gsharp' >-.] a'[( f d a f d]) d[( f a d f a]) }
	\tuplet 3/2 { f,-.[ < d' a' >-. f,-.] < d' b' >-.[ f,-. < d' b' >-.] f,-.[ < d' a' >-. f,-.]
		< d' b' >-.[ f,-. < d' b' >-.] c'[( a f c a f]) c[( a c f a c]) }
	\tuplet 3/2 { a,-.[ < f' c' >-. a,-.] < f' d' >-.[ a,-. < f' d' >-.] a,-.[ < f' c' >-. a,-.]
		< f' d' >-.[ a,-. < f' d' >-.] eflat'[( c! aflat eflat c aflat]) aflat[( c eflat aflat c eflat]) }
	\tuplet 3/2 { c,-.[ < aflat' eflat' >-. c,-.] < aflat' f' >-.[ c,-. < aflat' f' >-.] c,-.[ < aflat' eflat' >-. c,-.]
		< aflat' f' >-.[ c,-. < aflat' f' >-.] fsharp'[( dsharp b! fsharp! dsharp b!]) b[( dsharp fsharp b dsharp fsharp]) }
	
	%%% DOUBLE BAR %%%
	
	gsharp4\trill gsharp4\trill gsharp4\trill gsharp4\trill
	a_>\ff^\trillflat a,,_>^\trillflat a'_>^\trillflat a'_>^\trillflat
	a_>^\trillnatural a,,_>^\trillnatural a'_>^\trillnatural a'_>^\trillnatural
	a4_>\trill a,,_>\trill a'_>\trill a'_>\trill
	\tuplet 3/2 { bsharp,,,16[( fsharp' a) a( fsharp bsharp,]) bsharp16[(_\cr fsharp' a) a( fsharp bsharp,])
		a[( fsharp' bsharp) bsharp( fsharp a,]) a[( fsharp' bsharp) bsharp( fsharp a,]) }
	\tuplet 3/2 { bsharp16[( a' fsharp') fsharp( a, bsharp,]) bsharp16[( a' fsharp') fsharp( a, bsharp,])
		fsharp'[( bsharp a') a( bsharp, fsharp]) fsharp[( bsharp a') a( bsharp, fsharp]) }
	\tuplet 3/2 { a16[( fsharp' bsharp) bsharp( fsharp a,]) fsharp16[( bsharp a') a( bsharp, fsharp])
		a[( fsharp' bsharp) bsharp( fsharp a,]) bsharp[( a' fsharp') fsharp( a, bsharp,]) }
	\tuplet 3/2 { r16\ff fsharp[( a bsharp) a^( bsharp] fsharp'^)[ bsharp,( fsharp'] a)[ fsharp( a] bsharp)[ a( bsharp] fsharp')[ bsharp,( fsharp']
		a)[ fsharp( a] bsharp)[ a( bsharp] }
		
	%%% DOUBLE BAR %%%
	
	csharp8) r r4 r2
	
	R1*32
	
	b,8\f[ \grace { b16[ c] } b( asharp] b8)[ \grace { b16[ c] } b16( asharp] b[ gsharp e dsharp]) e[( fsharp gsharp a])								|
	b8--[ \grace { b16[ c] } b( asharp] b8)[ \grace { b16[ c] } b(\> asharp] b[ c d c]) b[( a g f])\!
	< c e >16\mf[\tempo "Molto sostenuto il tempo, moderatissimo." g,-. e'-. g-.] < c e >[_( g,) e'-.(_\( g-.]
		a-.[ b-. c-. d-.]_) \grace { e[ f] } e-.[_( c e g]_)_\)
	< b, d! >->[ g, g'-. < asharp e' >-.] < b d >[( d, e) fsharp-.]( g-.[ a-. b-. d-.]) < csharp e >->[ a-. b-. csharp-.]
	< d f >-.->[ d,-. a'-. d-.] < d f >[( f,) g-.^\( a-.] b-.[ csharp-. d-. e-.] \grace { f[ g] } f[( d f a])^\)
	< csharp,! e >->[ a, a' < d f >] < csharp e >->[( e, fsharp gsharp]) a-.[( b-. csharp-. d-.]) < csharp e >-.[ d-. csharp-. e-.]
	a->-.[ < f, a >-. < f a >-. b'-.->] c->[( a,) b'-.-> a-.->] g-.[ < g,, e' c' >-. b''-. < g,, e' c' >-.] c''-.[ < g,, e' c' >-. a''-.( g-.)]			|
	< a, f' >-.[ < d, a' >-. < d a' >-. gsharp'-.] a[( a,) g'-. f-.] e-.[ < a,, e' a >-. gsharp''-. < a,, e' a >-.]
		a''-.[ < a,, e' a >-. f''-.( e-.])
	d32[( e f e d c b a]) b[( c d c b a g! f]) e16:32[ e': gsharp,: b:] e:[ gsharp: b: e:]
	d,32[( e f e d c b a]) b[( c d c b a g! f]) e16:32[\> e': b: gsharp:] e:[ f: gsharp: b:]\!
	< c e >16[ g,-. e'-. g-.] < c e >[( g,) e'-.( g-.] a-.[ b-. c-. d-.]) \grace { e[ f] } e-.[( c e g])
	< b, d! >16->[ g, g'-. < asharp e' >-.] < b d >[( d, e) fsharp-.]( g-.[ a-. b-. d-.]) < csharp e >->[ a-. b-. csharp-.]
	< d f >-.->[ d,-. a'-. d-.] < d f >[( f,) g-.^\( a-.] b-.[ csharp-. d-. e-.] \grace { f[ g] } f[( d f a])^\)
	< csharp, e >->[ a, a' < d f >] < csharp e >->[( e, fsharp gsharp]) a-.[( b-. csharp-. d-.]) < csharp e >-.[ d-. csharp-. e-.]
	a->-.[ < f, a >-. < f a >-. b'-.->] c->[( a,) b'-.-> a-.->] g-.[ < g,, e' c' >-. b''-. < g,, e' c' >-.] c''-.[ < g,, e' c' >-. a''-.( g-.)]			|
	< a, f' >-.[ < d, a' >-. < d a' >-. gsharp'-.] a[( a,) g'-. f-.] e-.[ < a,, e' a >-. gsharp''-. < a,, e' a >-.]
		a''-.[ < a,, e' a >-. f''-.( e-.])
	dsharp-.[ fsharp,!-. < dsharp' b' >-. fsharp,-.] < dsharp' c' >-.[ fsharp,-. < fsharp d' >-. b,-.] < fsharp' dsharp' >-.[ b,-.
		< fsharp' a >( < g b >] < a c >)[ b,-. < csharp! e >( < dsharp fsharp >]																		|
	< e g >)[ g,-. < e' asharp >( < fsharp asharp >] < g asharp >)[ g,-. < asharp' e' >( < b e >] < csharp e >)[ e,-.
		< csharp' asharp' >-. e,-.] < e' csharp' >-.[ g,-. < g' e' >-. asharp,!-.]
	< fsharp' dsharp' >-.[ b,-. < dsharp b' >-. fsharp,-.] < dsharp' c' >-.[ fsharp,-. < fsharp d' >-. b,-.] < fsharp' dsharp' >-.[
		b,-. < fsharp' a >( < g b >] < a c >)[ b,-. < csharp e >( < dsharp fsharp >]
	< e g >)[ g,-. < e' asharp >(< fsharp asharp >] < g asharp >)[ g,-. < asharp' e' >( < b e >] < csharp e >)[ e,-. < csharp' asharp' >-. e,-.]
		< e' csharp' >-.[ g,-. < g' e' >-. b,-.]
	< g' e' >-.[ a,!-. < csharp a' >-. e,-.] < csharp' bflat' >-.[ e,-. < e c' >-. a,-.] < e' csharp' >-.[ a,-. < e' g >( < f a >])
		< g bflat >-.[ a,-. < b! d >-.( < csharp e >]																				|
	< d f >)[ a-.< d a' >( < e a >] < f! a >)[ d-. d'( < d e >] < d f >)[ d,-. < d' a' >-. d,-.] < f' d' >-.[ d,-. < a'' f' >-. d,,-.]					|
	< csharp'' a' >-.[ a,-. < csharp a' >-. e,-.] < csharp' bflat' >-.[ e,-. < e c' >-. a,-.] < e' csharp' >-.[ a,-. < e' g >( < f a >]
		< g bflat >-.)[ a,-. < b! d >-.( < csharp e >]
	< d f >)[ a-.< d a' >( < e a >] < f a >)[ d-. d'( < d e >] < d f >)[ d,-. < d' a' >-. d,-.] < f' d' >-.[ d,-. < d' f' >-. d,-.]
	< d' f' >-.[ d,-. < d b' >( < e b' >] < f b >)[ gsharp,-. d''( < d e >] < d f >)[ d,-. < d' a' >-. d,-.] < f' d' >-.[ d,-. < d' f' >-. d,-.]
	< d' f' >-.[ d,-. < d b' >( < e b' >] < f b >)[ gsharp,-. d''( < d e >] < d f >)[ d,-. < d' a' >-. d,-.] < f' d' >-.[ d,-. < f' f'! >-. d,-.]
	< d' fsharp'! >16:32[ d,:-. fsharp:-. b:-.] d:[ fsharp: b: d:] gsharp:[ d,,: gsharp: b:] d:[ gsharp: b: d:]											|
	gsharp:[ d,,: gsharp: b:] d:[ gsharp: b: d:] gsharp:[ gsharp,,: b: f':] gsharp:[ b: f': gsharp:]													|
	a8\ff r r4 r2
	
	R1*18
	
	< a,,, e' a >8\downbow\ff r < a e' csharp' >\downbow r < a e' csharp' e >\downbow r < a e' csharp' a' >\downbow r
	R1
	< a e' a >8\downbow\ff r < a e' csharp' >\downbow r < a e' csharp' e >\downbow r < a e' csharp' a' >\downbow r
	R1
	< a e' a >8_\downbow\ff < a e' csharp' >_\downbow < a e' csharp' e >_\downbow
		< a e' csharp' a' >_\downbow < a' e' csharp' >^\markup { \italic \larger Cadenza } r < csharp a' e' > r											|
		
	%%% CADENZA %%%

	\theCadenza
	
	%%% TUTTI %%%
	
	\override TupletBracket.transparent = ##f
	<<a'1\p {s4\startTrillSpan s s s\stopTrillSpan}>> |
	<<a1 {s4\startTrillSpan s s s\stopTrillSpan}>> |
	<<d2 {s4\startTrillSpan s\stopTrillSpan}>>
		d16[( d, d' csharp] b[ a g g,] |
	fsharp)[ d( fsharp a] \tuplet 6/4 { d[ fsharp a b d b] } a8)[ b( csharp_\markup { \italic dolce } d]			|
	e)[ g]( a,4~ a8)[ b(_\cr csharp d])
	e[( g] a,4~ \tuplet 3/2 { a8)[ gsharp( a] } \tuplet 3/2 { asharp)[ gsharpsharp-- asharp--] }
	\tuplet 3/2 { b--[ d-- fsharp--] } gsharp,,,4\f~ \tuplet 11/8 { gsharp32[\< a( b csharp d e fsharp gsharp a b csharp] }
		\tuplet 10/8 { d[ e fsharp gsharp a b csharp d dsharp])\! s }
		%%% NOTE: The edition left out a note in the 8/10! I don't know what it is, so I just added an s32.
	e4~ e16[ esharp--( fsharp-- gsharp--]) a8[ b16 r32 b32]( csharp,4~
	csharp8[ e16-.) r32 e]( g,4~ g16)[ b32-. b-. csharp,-. csharp-. e-. e-.] g,[ g b b csharp, csharp e e]
	a,[ a bflat bflat gsharp gsharp bflat bflat] a[ a bflat bflat gsharp gsharp bflat bflat] a[ a bflat bflat gsharp gsharp bflat bflat]
		a[ a bflat bflat gsharp gsharp bflat bflat]
	a[ bflat gsharp a a bflat gsharp a] a[ bflat gsharp a a bflat gsharp a] a[ bflat gsharp a a bflat gsharp a]
		\tuplet 15/8 { a[^( bflat gsharp a b csharp d e fsharp g! a] b[ csharp d e]^) }
	fsharp8\mf r < d, a' fsharp' >2 \grace { e'16[ fsharp] } e16[( d fsharp a])
	<< { e4.( fsharp8) } \\ { \appoggiatura e,8 \stemDown a2 } >> \tuplet 3/2 { e'8[( dsharp e]) } \tuplet 3/2 { < d,! a' fsharp' >[( e' fsharp]) }
	< d, d'! g >8 r < d d'~ g~ >4( <d' g>8.[ fsharp16]) g16[( a b csharp])
	fsharp,4.( g8 fsharp8.)[ fsharp16]( g[ a b c])
	e,4.( fsharp8 e8.)[ e16]( f[ g a bflat])
	d,4.( eflat8 d8.)[ d16]( csharp[ d fsharp! g])
	g8.--[\< g16]( fsharp[ g a bflat]) bflat8.--[ fsharp16]( g[ a bflat csharp])\!
	d8\f[( e!16-.) r32 e32]( b8[ d16-.) r32 d]( g,8[ b16-.) r32 b]( e,8[ g16-.) r32 g](
	c,8[_\markup { \italic {dim. molto} } e16-.) r32 e]( a,8[ eflat'16-.) r32 eflat]( c8[ e16-.) r32 e]( a,8[ eflat'16-.) r32 eflat](
	c8[ e16-.) r32 e]( c8[ eflat16-.) r32 eflat]( b8[ d16-.) r32 d]( bflat8[ csharp16-.) r32 csharp](
	a8[_\markup { \dynamic p \italic grazioso }\tempo "Ben sostenuto." c16-.) r32 c]( fsharp,8[ a16-.) r32 a]( 
		e8[ a16-.) r32 a32]( fsharp8[ d'16-.) r32 d-.]
	\tuplet 3/2 { g,16[(\< b d] } \tuplet 3/2 { e8[ fsharp16]) } \tuplet 3/2 { b,16[( d e] } \tuplet 3/2 { fsharp8[ g16]) }
		\tuplet 3/2 { d16[( g a]\! } \tuplet 3/2 { bflat8[ b16]) } \tuplet 3/2 { e16[(\> d b] } \tuplet 3/2 { g[ d b])\! }
	a8[ c16-. r32 c]( fsharp,8[ a16-.) r32 a32]( e8[ a16-.) r32 a]( fsharp8[ d'16-.) r32 d-.]
	\tuplet 3/2 { g,16[(\< b d] } \tuplet 3/2 { e8[ fsharp16]) } \tuplet 3/2 { b,16[( d e] } \tuplet 3/2 { fsharp8[ g16]) } \tuplet 3/2 { d16[( g a] }
		\tuplet 3/2 { bflat8[ b16])\! } \tuplet 3/2 { e16[(\> d b] } \tuplet 3/2 { g[ e d])\! }
	\override TupletBracket.transparent = ##t
	b8[( c16-.) r32 c]( b8[ csharp16-.) r32 csharp]( \tuplet 3/2 { b16[ dsharp fsharp a asharp b]) d,[( e g b dsharp e]) }
	e,8[( f16-.) r32 f]( e8[ fsharp16-.) r32 fsharp]( \tuplet 3/2 { e16[ gsharp b d dsharp e]) a,[( b c e gsharp a]) }
	\tuplet 3/2 { a,[( bsharp csharp! e gsharp a]) a,[( csharp d f gsharp a]) a,,[( b! bsharp csharp e a]) csharp,[( d e f a d]) }
	\tuplet 3/2 { eflat16-.[ g,( a!] bflat)[ eflat,( fsharp!] g!)[ bflat,( d] eflat!)[ g,( a] bflat)[ eflat,( fsharp!]
		g[ a bflat] d-.)[ eflat( fsharp g bflat eflat] }
		
	\tuplet 3/2 { e!)[ bflat( c dflat) e,!( a] bflat)[ bflat,( eflat e) bflat( c] dflat)[ bflat( dflat e! bflat'! dflat!] e!)[ dflat!( e
		\ottava #1 bflat' dflat eflat] }
	f8\f) \ottava #0 r r4 f,,,32[(_\cr a b c d eflat e f] gsharp[ a b c csharp d eflat e])
	
	f8 r r4 f,,32[( a b csharp d! eflat e fsharp] gsharp[ a b c csharp d eflat e])
	f8 r g,,32[( b d g]) g[( b d g]) g8 r a,,32[( csharp! g' a]) a[( csharp! g' a])
	a8 r d,,32[( g bflat e]) \ottava #1 e[( g bflat csharp!]) csharp8 \ottava #0 r f,,32[( g gsharp d']) d[( e f gsharp])
	\stemDown a16-.[ a,,-. b''-. a,,32-. b''-.] a16-.[ a,,-. b''-. a,,32-. b''-.] a32[( e d a]) a[( e a, b] csharp[ d e gsharp a b csharp e])
	a16-.[ a,,-. b''-. a,,32-. b''-.] a16-.[ a,,-. b''-. a,,32-. b''-.] a32[( e d a]) a[( e a, b] csharp[ d e gsharp a b csharp e]) \stemNeutral
	e32[( csharp a e]) csharp[( e fsharp gsharp] a[ gsharp a b] csharp[ d e fsharp])
		g![( e csharp a]) e[( gsharp a b] csharp b csharp d e fsharp g! a])
	b[( a g fsharp) e( g e d]) csharp[( e csharp b) a( b g fsharp]) e[( g e d) csharp( e csharp b]) a[( b g fsharp) e( g e d]
	csharp16)[ d8 csharp16]~ csharp[ bsharp8 csharp16]~( csharp[ d) dsharp e] esharp[\> fsharp g b](
	a,)[ bflat8 a16]~\! a[ bflat8 b16]~ b8 bsharp4( csharp8)
	d4\p(^\markup { \italic {con molto espress.} } csharp) e16[( d csharp e] d4)
	e( dsharp) fsharp16[( e dsharp fsharp] e4)
	\tuplet 3/2 { fsharp8[( g a] b[ c b]) } b(\< e4\!\> b8)\!
	\grace { a16[ b] } \tuplet 3/2 { a8[( gsharp a] c)[\< b-- a--]\! } b( e4\> b8)\!
	\grace { bflat16[ c] } \tuplet 3/2 { bflat8[( a bflat] d)[ d,-- e--] } esharp[ fsharp]~ \tuplet 3/2 { fsharp[ fsharp-.( g-.]) }
	gsharp[( a])~ \tuplet 3/2 { a[\< asharp^.^( b!^.] bsharp-.[ csharp-. d-.]) dsharp[( fsharp e])\! }
	d!4( csharp) e16[( d csharp e] d4)
	e4( dsharp) fsharp16[( e dsharp fsharp] e4)
	\tuplet 3/2 { fsharp8[( g a] b)[ c-. b-.] } b( e4-> b8)
	\tuplet 3/2 { bflat8[( csharp d] e)[ fsharp-- e--] } e a4~ a8--
	\tuplet 3/2 { \ottava #1 b!8\p--[ a-- g--] fsharp--[ g-- a--] c--[ b-- a--] g--[ fsharp-- e--] }
	\tuplet 3/2 { b'--[ a-- gsharp--] gsharp--[ a-- b--] d--[ csharp!-- b--] b--[ a-- gsharp--] }
	\tuplet 3/2 { d'[( csharp) b]( gsharp)[ fsharp( d] \ottava #0 b)[_\cr gsharp( b] dsharp[ fsharp a]) }
	\ottava #1 bflat4\f( a) c16[( bflat a c] \tuplet 3/2 { bflat8)[ dflat( c] }
	\tuplet 3/2 { aflat)[ c( bflat] g)[ bflat( aflat] f)[ aflat( g] eflat)[ g( f]) }
	bflat4( a!) c16[( bflat a c] bflat)[ bflat( dflat c]
	aflat)[ aflat( c bflat] g)[ g( bflat! aflat] f)[ f( aflat g] eflat)[ eflat( g f])
	eflat4( d) f16[( eflat d f] eflat)[ eflat( g eflat]) \ottava #0
	d4( csharp!) e!16[( d csharp e] d)[ d( fsharp d])
	csharp4( b16[ csharp d b]) b[( a gsharp b] a)[ fsharp( esharp gsharp]
	fsharp)[ d( csharp e] d)[ a( gsharp b] a)[ fsharp( esharp g] fsharp)[ d( csharp e])
	
	\override TupletBracket.transparent = ##f
	d8->[ e32^( fsharp g a] \tuplet 11/8 { b[ csharp d e fsharp g a b csharp d e]) } \tuplet 3/2 { fsharp8->[ g-> a->] } r4
	d,,,8->[ e32^( fsharp g a] \tuplet 11/8 { b[ csharp d e fsharp g a b csharp d e] } \tuplet 3/2 { fsharp8->)[ gsharp-> a->] } r4
	\tuplet 5/4 { a,,32[( b csharp d e] } \tuplet 7/4 { fsharp[ gsharp a b csharp d e] } \tuplet 3/2 { fsharp8->)[ gsharp-> a->] }
		\tuplet 5/4 { a,,32[( b csharp d e] } \tuplet 7/4 { fsharp[ gsharp a b csharp d dsharp] } \tuplet 3/2 { e8->)[ gsharp!-> a->] }
	\tuplet 5/4 { a,,32[( b csharp d e] } \tuplet 7/4 { f[ g! a b csharp d e] } \tuplet 3/2 { f8->)[ gsharp!-> a->] }
		\tuplet 5/4 { a,,32[( b c d e] } \tuplet 7/4 { f[ g! a bflat csharp! d e]) } \tuplet 3/2 { f8->[ gsharp!-> a->] }
	\stemDown bflat16:32[ f,,: g: a:] bflat:[ c: d: f:] e:[ b: e: b':] e:[ fsharp!: gsharp: b:]
	\ottava #1 e:[ \ottava #0 a,,,: e: gsharp:] a:[ b: csharp: e:] d:[ a: d: a':] d:[ e: fsharp: a:]
	\ottava #1 d:[\< \ottava #0 d,,: d,: d':] d':[ d,: d,: d':] d':[ d,: d,: d':]\! g,:[ bflat: d: g:]
	d':[\< d,: d,: d':] d':[ d,: d,: d':] d':[ d,: d,: d':]\! g,:[ bflat: d: g:]
	\tuplet 3/2 { r16 e,[( < bflat' e >) } \tuplet 3/2 { < bflat e >( e, < bflat' e >]) } \tuplet 3/2 { r16 a[( a') } \tuplet 3/2 { a( a, a']) }
		\tuplet 3/2 { r16 a,[( a') } \tuplet 3/2 { a( a, a']) } \tuplet 3/2 { r16 d,,[( < f' d' >) } \tuplet 3/2 { < f d' >( d, < f' d' >]) }
	\tuplet 3/2 { r16 e,[( < a e' >]) } \tuplet 3/2 { < a e' >[( e < a e' >]) } \tuplet 3/2 { r16 d,[( < a' fsharp' >]) }
		\tuplet 3/2 { < a fsharp' >[( d, < a' fsharp' >]) } \tuplet 3/2 { r < d, d' >[( < d' d' >]) } \tuplet 3/2 { < d d' >[( d, < d' d' >]) }
		\tuplet 3/2 { r < d, d' >[( < d' d' >]) } \tuplet 3/2 { < d d' >[( d, < d' d' >]) }
	
	\override TupletBracket.transparent = ##t
	\tuplet 3/2 { a'16-.\p[ fsharp-. a-. b-. fsharp-. b-.] g-.[ e-. g-. csharp-. gsharp-. csharp-.] a-.[ fsharp-. a-. b-. fsharp-. b-.]
		g-.[ e-. g-. csharp-. gsharp-. csharp-.] }
	\tuplet 3/2 { a-.[ fsharp-. a-. c-. a-. c-.] g!-.[ e-. g-. bflat-. g-. bflat-.] fsharp-.[ d-. fsharp-. a-. fsharp-. a-.]
		d,-.[ b-. d-. fsharp-. d-. fsharp-.] }
	\tuplet 3/2 { e[( csharp a]) b'-.[ fsharp-. b-.] g-.[ e-. g-. c-. gsharp-. c-.] a-.[ fsharp-. a-. b-. fsharp-. b-.]
		g-.[ e-. g-. c-. gsharp-. c-.] }
	\tuplet 3/2 { a-.[ fsharp-. a-. c-. a-. c-.] g!-.[ e-. g-. bflat-. g-. bflat-.] fsharp-.[ d-. fsharp-. a-. fsharp-. a-.]
		d,-.[ b-. d-. fsharp-. d-. fsharp-.] }
	\stemNeutral
	\tuplet 3/2 { e[(_\markup { "" \raise #-1.5 \italic {poco a poco cresc.}} csharp a]) b-.[ dsharp,-. b'-.] g-.[ e-. g-.] < esharp csharp' >-. gsharp,-.
		< esharp' csharp' >-.] a,-.[ < fsharp' a >-. a,-.] b'-.[ dsharp,-. b'-.] g!-.[ e-. g-.] < esharp csharp' >-. gsharp,-. < esharp' csharp' >-.] }
	\tuplet 3/2 { a,-.[ < fsharp' a >-. a,-.] < fsharp' d'! >-.[ a,-. < fsharp' d' >-.] g,!-.[ < d'! b' >-. g,-.] < gsharp' e' >-.[ b,-. < gsharp' e' >-.]
		a,-.[ < e' csharp' >-. a,-.] < fsharp' d' >-.[ a,-. < fsharp' d' >-.] g,!-.[ < d'! b' >-. g,-.] < gsharp' e' >-.[ b,-. < gsharp' e' >-.] }
	\tuplet 3/2 { a,-.[ < e' csharp' >-. a,-.] < a' fsharp' >-.[ csharp,-. < a' fsharp' >-.] b,-.[ < fsharp' d' >-. b,-.] < b' g'! >-.[ d,-. < b' g' >-.]
		csharp,-.[ < a' e' >-. csharp,-.] < csharp' a' >-.[ e,-. < csharp' a' >-.] d,-.[ < a' fsharp' >-. d,-.] < d' b' >-.[ fsharp,-. < d' b' >-.] }
	\tuplet 3/2 { e,-.[ < b' g' >-. e,-.] < e' csharp' >-. g,-. < e' csharp' >-.] g,-.[ < e' b' >-. g,-.] < e' csharp' >-.[ g,-. < e' csharp' >-.]
		d'[( b g d b g]) d'[( b g d b g]) }
	\tuplet 3/2 { g'-.[ < e' b' >-. g,-.] < e' csharp' >-.[ g,-. < e' csharp' >-.] g,-.[ < e' b' >-. g,-.] < e' csharp' >-.[ g,-. < e' csharp' >-.]
		d'[( bflat g d bflat g]) d'[( bflat g d bflat g]) }
	\tuplet 3/2 { bflat'-.[ < g' d' >-. bflat,-.] < g' e' >-.[ bflat,-. < g' e' >-.] bflat,-.[ < g' d' >-. bflat,-.] < g' e' >-.[ bflat,-. < g' e' >-.]
		f'[( d bflat f d bflat!]) bflat[( d f bflat d f]) }
	\tuplet 3/2 { d,-.[ < bflat' f' >-. d,-.] < bflat' g' >-.[ d,-. < bflat' g' >-.] d,-.[ < bflat' f' >-. d,-.] < bflat' g' >-.[ d,-. < bflat' g' >-.]
		aflat'[( f dflat aflat f dflat]) dflat[( f aflat dflat f aflat]) }
	\tuplet 3/2 { f,-.[ < dflat' aflat' >-. f,-.] < dflat' bflat' >-.[ f,-. < dflat' bflat' >-.] f,-.[ < dflat' aflat' >-. f,-.] < dflat' bflat' >-.[
		f,-. < dflat' bflat' >-.] b'[( gsharp e! b! gsharp e]) e[( gsharp b e gsharp b]) }
	csharp4\ff\trill csharp\trill csharp\trill csharp\trill
	
	\override Staff.OttavaBracket.outside-staff-priority = 1000
	\ottava #1 d^\trillflat
		\ottava #0 d,,^\trillflat
		d'^\trillflat
		d'^\trillflat \ottava #0
	\ottava #1 d^\trillnatural \ottava #0
		d,,^\trillnatural
		d'^\trillnatural \ottava #1
		d'^\trillnatural \ottava #0
	\ottava #1 d^\trillnatural \ottava #0
		d,,^\trillnatural
		d'^\trillnatural
		d'^\trillnatural \ottava #0
	\revert OttavaBracket.outside-staff-priority
	
	\tuplet 3/2 { g,,,,16[( b esharp) esharp( b g]) g[(_\cr b esharp) esharp( b g]) g[( d' b') b( d, g,]) g[( d' b') b( d, g,]) }
	\tuplet 3/2 { b[( esharp d') d( esharp, b]) b[( esharp d') d( esharp, b]) d[( b' esharp) esharp( b d,]) d[( b' esharp) esharp( b d,]) }
	\tuplet 3/2 { esharp[( d' b') b( d, esharp,]) b'[( esharp d') d( esharp, b]) d[( b' esharp) esharp( b d,]) d[( b' esharp) esharp( b d,]) }
	\tuplet 3/2 { g,,[(\< b d) b( d esharp]) d[( esharp b') esharp,( b' d]) b[( d esharp) d( esharp b']) esharp,[( b' d) b( d esharp])\! }
	
	%%% CODA %%%
	
	fsharp16\fp[ d,,-. d-. e!-.] fsharp-.[ csharp-. d-. e-.] fsharp-.[ fsharp-. gsharp-. asharp-.] b-.[ fsharp-. g-. a-.]
	b[_\cr b csharp dsharp] e[ b csharp d] e[ e fsharp g] a[ a b csharp]
	d[ e f g] a[ e f g] a[ e f g] a[ f g a]
	bflat[ f g bflat] bflat[ f d bflat] f[ d bflat f] < d' bflat' >[ f, < b gsharp' > e,]
	< a a' >[ e'' fsharp! gsharp] a[ e csharp a] e[ csharp a e] < a a' >[ a < a fsharp' > d,]
	< b' g' >[ d' e fsharp] g[ d b g] d[ b g d] < d' g >[ d, < c' e > e,]
	f[ c'' d e] f[ c b dsharp] e[ b csharp dsharp] e[ b a csharp]
	d[ d,, d' d,] fsharp'[ d, < a' a' > d,] < d' d' >[ d, < fsharp' fsharp' > d,] \ottava #1 < a'' a' >[ \ottava #0
		d,, \ottava #1 < d'' d' > \ottava #0 d,,]
	r d[ d' d,] f'[ d, < a' a' > d,] < d' d' >[ d, < f' f' > d,] \ottava #1 < a'' a' >[ \ottava #0
		d,, \ottava #1 < d'' d' > \ottava #0 d,,]
	r16 aflat[ bflat c] d[ f g aflat] bflat[ c d eflat] f[ bflat c d]
	
	\override TupletBracket.transparent = ##f
	eflat8\f[ \tuplet 3/2 { csharp!16( a csharp] } d8)[ \tuplet 3/2 { d16( bflat d] } eflat8)[ \tuplet 3/2 { csharp16( a csharp] }
		d8)[ \tuplet 3/2 { d16( bflat d]) }
		
	\override TupletBracket.transparent = ##t
	\tuplet 3/2 { eflat16[( d eflat) bflat( a bflat]) g[( fsharp g) eflat( d eflat]) bflat[( a bflat) g( fsharp g]) eflat[( d eflat) bflat( a bflat]) }
	\tuplet 3/2 { f'''[( e! f) d( csharp! d]) b[( asharp b) f( e f]) d[( csharp! d) b!( asharp b]) f[( e f) d( csharp! d]) }
	\tuplet 3/2 { a!16[( b a\p]) } << { \noDynamic fsharp'8\mf \noBeam g \noBeam a b csharp d } \\ { \tuplet 3/2 { a,16[(\<
		c a]) b[( d b]) csharp[( e csharp]) d[( f d]) e[( g e]) f[( a f])\! } } >> \tuplet 3/2 { e'[( a, e]) }
	\tuplet 3/2 { f'16[( a, d,) fsharp'(_\cr a, d,]) g'[( d d,) gsharp'( d d,]) a''[( a, a') bflat( a, bflat']) b[( a, b') csharp( a, csharp']) }
	\tuplet 3/2 { < d, d' >\ff[( < d, d' > < d' d' >\p]) } << { \noDynamic fsharp,8\mf \noBeam g \noBeam a b csharp d } \\ { \tuplet 3/2 { a,16[(\<
		c a]) b[( d b]) csharp[( e csharp]) d[( f d]) e[( g e]) f[( a f])\! } } >> \tuplet 3/2 { e'[( csharp e,]) }
	\tuplet 3/2 { f'16[( a, d,) fsharp'(_\cr a, d,]) g'[( d d,) gsharp'( d d,]) a''[( a, a') bflat( a, bflat']) b[( a, b') csharp( a, csharp']) }
	d8\ff[ \tuplet 3/2 { eflat16( csharp eflat] } d8)[ \tuplet 3/2 { eflat16( csharp eflat] } d8) r r4
	r8 \tuplet 3/2 { eflat16[( csharp eflat] } d8)[ \tuplet 3/2 { eflat16( csharp eflat] } d8) r r4
	r8 \tuplet 3/2 { eflat16( csharp eflat] } d8) r r \tuplet 3/2 { eflat16( csharp eflat] } d8) r
	r8 \tuplet 3/2 { eflat16[( csharp eflat] } d8) r r \tuplet 3/2 { d,,16[( d' d']) d[( d, d,)
		d( d' d']) }
	< d, d' >16\ff[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >])
		< d d' >16[( < d, d' >) < d d' >( < d' d' >])
	< d d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >])
		< d d' >16[( < d, d' >) < d d' >( < d' d' >])
	d'8 d4 e8 d csharp4 d8
	csharp b4 g8 r < g, eflat' bflat' >16-.\fff[ < g eflat' bflat' >-. < g, g' >-. < g g' >-.] r8
	< d'' d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >])
		< d d' >16[( < d, d' >) < d d' >( < d' d' >])
	< d d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >]) < d d' >16[( < d, d' >) < d d' >( < d' d' >])
		< d d' >16[( < d, d' >) < d d' >( < d' d' >])
	d'8 d4 e8 d csharp4 d8
	csharp b4 g8 r < g, eflat' bflat' >16-.\fff[ < g eflat' bflat' >-. < g, g' >-. < g g' >-.] r8
	r16 d'-.[ d( d']) d[( d,) d( < a' fsharp' >)]
	< a fsharp' >[( d,) d( < d' a' >]) < d a' >[( d,) d( < fsharp' d' >])
	< fsharp d' >[( d,) d( d']) d[( d,) d( < a' fsharp' >)]
	< a fsharp' >[( d,) d( < d' a' >]) < d a' >[( d,) d( < fsharp' d' >])
	< fsharp d' >16[( d,) d( < fsharp' d' >]) < fsharp d' >16[( d,) d( < fsharp' d' >]) < fsharp d' >16[( d,)
		d( < fsharp' d' >]) < fsharp d' >16[( d,) d( < fsharp' d' >])
	< fsharp d' >16[( d,) d( < fsharp' d' >]) < fsharp d' >16[( d,) d( < fsharp' d' >]) < fsharp d' >16[( d,)
		d( < fsharp' d' >]) < fsharp d' >16[( d,) d( < fsharp' d' >])
	< fsharp d' >8[ d, fsharp a] < d, d' >[ < d d' > < d a' fsharp' > < d a' a' >]
	< d fsharp' d' >4 < d fsharp' d' > < d fsharp' d' > < d d' fsharp' >
	< d d >1\fermata
}
