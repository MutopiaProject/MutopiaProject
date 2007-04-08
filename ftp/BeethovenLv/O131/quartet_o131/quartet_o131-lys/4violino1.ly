\version "2.6.2"

mIVViolinOne =  \relative a' {
	\clef "treble"
	
	r8_\markup { \dynamic p \italic {dolce}} \noDynamic a4\p( b16 a
	gsharp8) r r4
	r8 d'4( e16 d
	csharp8) r r4
	r8 a'4(\< g16\!\> esharp)\!
	esharp8( fsharp) r4
	r8 e!16[( d!] csharp8) r
	r fsharp,16[( e] dsharp8) r
	R1*2/4
	r8 gsharp4( a16 gsharp
	d'8) r r4
	r8 csharp4( d16 csharp
	a'8) r r4
	r8 fsharp4(\< e16\!\> csharp\!
	dsharp8) b,[( csharp]) b'16( a
	gsharp8) r r d!16( b
	gsharp8) b'4(\< csharp16\!\> b)\!
	b4( csharp8 d)
	csharp e4(\< fsharp16\!\> e)\!
	e4( fsharp8 g)													|
	fsharp4(_\cr gsharp!)
	gsharp8( a4\> fsharp16 d\!
	csharp8-.\p)[ d16( b] a8)[ b16( gsharp]
	a8)[ fsharp16( e] dsharp8) r
	r e( e'4)~_\espressivo
	e2~
	e8 e4(\< fsharp16\!\> e)\!
	e4( fsharp8 g)
	fsharp4(_\cr gsharp!)
	gsharp8( a4\> fsharp16 d\!
	csharp8-.\p) d16( b a8) b16( gsharp)
	a8( e4.)~														|
	e2~_\espressivo
	e16 fsharp'( e dsharp d b gsharp f)
	e2~_\espressivo
	e16 e'( b' bflat a e csharp bflat)
	a4( a')\espressivo
	fsharp( fsharp')~_\espressivo
	fsharp8[(_\cr gsharp] a8.[ a,16\p])
	a16( gsharp dsharp e) e16.(_\cr fsharp32) fsharp16.( gsharp32)
	a4\p(\< gsharp8..\!\> a32)\!									|
	b8 r r4
	b4(\< csharp8..\!\> b32)\!
	a8 r r4
	e8(\< g)~\! g8.(\> fsharp32 esharp)\!
	esharp16( fsharp) r8 r4
	R1*2/4
	gsharp!16[( a]) a[( gsharp32 fsharp]) fsharp16[( e!32 dsharp]) dsharp16[( fsharp32 e])
	\setTextCresc
		e'2~\<
	e8 b16.[( a32]) a16[( gsharp32 fsharp])\! fsharp16\p[( dsharp32 e])
	e16.[(_\cr dsharp32]) dsharp16.[( e32]) e16.[( fsharp32]) fsharp16.[( g32])
	g16.[( a32]) b16.[( csharp32]) d!16.[( e32]) fsharp16.[( g32])	|
	\noDynamic fsharp4.\p_\markup { \dynamic p \italic {cresc.}} fsharp16( e32 d)
	d4. fsharp16(\> e32 d)\!
	\noDynamic d16\p[(_\markup { \dynamic p \italic {dolce}} csharp32 e])
		e16[( fsharp,32 d']) d16[( e,32 csharp']) csharp16[( e,32 e'])
	e16[( d32 csharp]) csharp16[( b32 a]) \appoggiatura { a16[ b] } a16[( gsharp32 a]) b8~
	b16.[(_\cr asharp32]) asharp16.[( b32]) b16.[( csharp32]) csharp16.[( d32])
	d8 r r dsharp16.\p( e32)										|
	\setTextCresc
		e16.[(\< dsharp32]) dsharp16.[( e32]) e16.[( fsharp32]) fsharp16.[( g32])
	g[( a,, a' b]) csharp16[( d!32 e]) e16[( fsharp32 g]) g16[( gsharp32 a])\!
	a16.\p[(
		\setTextCresc
		a,32])\< a16.[( b32]) b4~
	b16.[( csharp32]) csharp8~ csharp16.[( d32])\! d8~\>			|
	d32\p[(\! dsharp) dsharp( e]) e[( fsharp,) csharp'( d]) d[( e,) b'( csharp])
		csharp[( e,) dsharp'( e])
	e16[(_\markup { \italic {dim.}} d!32 csharp]) csharp16[( b32 a]) a16[( fsharp32 dsharp])
		d16[( b32 e])												|
		
	%%% PIU MOSSO %%%
	
	a,4\pp r r2
	r8 e'[(\< a gsharp]\! a[\> e csharp' a])\!
	d4 r r2
	
	R1*2
	
	r8 a[( a' gsharp] a[ g e esharp]
	fsharp-.)[ fsharp,( fsharp' esharp] fsharp[ e csharp e]
	dsharp-.)[ b( e d] csharp-.)[ b( csharp a])
	a[( gsharp a fsharp]) fsharp[( e fsharp gsharp])
	a r < csharp, e >\pp r < csharp e > r < csharp e > r
	< csharp e > r < csharp e > r < csharp e > r < csharp e > r
	< gsharp e' > r < d' e > r < d e > r < d e > r
	< d e > r < d e > r < d e > r < gsharp, e' > r					|
	< a e' > r csharp' r csharp r csharp r
	d r asharp r asharp r asharp r
	b r b r csharp r csharp r
	csharp r e r e r e r
	e_\cr r e r e r e r
	e[ e,,( gsharp b] e[ gsharp b e])~
	e[ g( e csharp] a[ g e csharp]
	g[ csharp e g] csharp[ e) g g]
	fsharp\f a,,[( d csharp] d[ fsharp gsharp!\sf e])
	a[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])					|
	a!\sf( a,) r4 r2
	r8 d'\p[(
		\setTextCresc
		b\< gsharp] e[ d b gsharp]
	fsharp[ e gsharp b] e[ gsharp b e])~
	e[ g( e csharp] a[ g e csharp]
	g[ csharp e g] csharp[ e) g g]\!
	fsharp\f a,,[( d csharp] d[ fsharp gsharp!\sf e])
	a[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])
	a!\sf( a,) r4 r2												|
	
	%%% ANDANTE MODERATO %%%
	
	R1*8
	
	r4 \noDynamic a8.\p(_\markup { \dynamic p \italic dolce } b16 csharp8. b16 a4
	gsharp fsharp2) r4
	r d'8.( e16) fsharp8.( e16) e8.( d16)
	d8. csharp16 r4 r a'8.(_\cr g16)
	g8.( fsharp16) e8.( a16) a8.(\> g16)\! e4\p						|
	r2 r4 a8.(_\cr fsharp16)
	e8.( dsharp16) d4~ d8[( csharp]) csharp[( b])~
	b\p[( a) fsharp-. b-.] e,4 r
	
	R1*8
	
	e4-._\cr fsharp\trill \grace { e16[ fsharp] } gsharp4-. a\sfp~
	a8[( gsharp) fsharp-. e-.] dsharp-. d r4
	a'-._\cr b\trill \grace { a16[ b] } csharp4-. d\sfp~
	d8[( csharp) b-. a-.] gsharp-. g-. r4							|
	fsharp4-._\cr gsharp!\trill \grace { fsharp16[ gsharp] } a4-. d'\sfp~
	d8[( csharp) b-. a-.] gsharp-.[ d'-. csharp-. b-.]
	csharp4-._\cr d\trill \grace { csharp16[ d] } e4-.
		fsharp^\markup { \column {
		\line { \natural }
		\line { \musicglyph #"scripts.trill" }}}
		\bar "" \grace { e16[ fsharp] } \bar "|"
	fsharp8\sf a4--\p( gsharp!8-.)_\cr a[ fsharp e e]
	
	%%% ADAGIO %%%
	
	\bar "||"
	\time 6/8
	
	e8\sfp[( a,16 e csharp d] e[ fsharp gsharp a b csharp])			|
	d8[ r d] d r r
	b8.[( gsharp16 e fsharp] gsharp[ a b csharp d e])
	csharp8[ r csharp] csharp r r
	e8.[(_\cr csharp16 a b] csharp d e fsharp gsharp a)
	a4\p r8 a,[ r asharp]
	asharp[ r b] gsharp[ r a]
	a[ r c,] b[ r e]												|
	r csharp!16(\< e a gsharp\! fsharp\> e d csharp b a)\!
	gsharp8[ r gsharp] gsharp r
		\set Staff.midiInstrument = #"pizzicato strings"
		< gsharp e' b' >\sf^\markup {pizz.}
	
	\set Staff.midiInstrument = #"violin"
	b'8.[(\<^arco gsharp16 e fsharp]\! gsharp\> a b csharp d e)\!
	csharp8[ r csharp] csharp r
		\set Staff.midiInstrument = #"pizzicato strings"
		< a, e' e' >\sf^\markup {pizz.}
	
	\set Staff.midiInstrument = #"violin"
	r4 r8 a'8.[(^arco g16 e esharp])
	fsharp8 r r fsharp8.[( e!16 csharp e])
	dsharp r r8 r16 b( gsharp![ b a]) r r8							|
	r4 r8 r r16 e'[(\< b csharp])\!
	fsharp4.\p~\< fsharp8[(\!\> e d])\!
	d4.\p~ d8[( csharp b])
	g'4.~_\cr g8[( fsharp e])
	e4.~ e8[( d csharp])											|
	csharp16\p[( a' g])_\espressivo r r fsharp r g(\< fsharp)\! r r e\p
	r d'( csharp) r r b r csharp( b) r r a
	r csharp[(_\cr c]) c[( b]) b[(_\markup { \italic {dim.}} a]) a[( a]) a[( gsharp!]) gsharp(
	a8) r r d,16[(\> b gsharp])\! r r8								|
	gsharp,16\p(\< a b csharp d e\! fsharp\> gsharp a b csharp d\!
	e\p fsharp gsharp a b csharp) d( dsharp) dsharp( e) e e
	e4.~_\cr e8[( d! csharp])										|
	csharp4.~ csharp8[( b asharp16 a])
	g8.[(\< e16\!\> csharp fsharp])\! r g(\< fsharp)\! r r e\p
	e8.[(\< csharp16\!\> asharp d])\! d'8.[(\< b16 gsharp! csharp])\!
	csharp(_\cr a! fsharp gsharp b esharp, fsharp_\markup { \italic {dim.}} a dsharp, e fsharp e)
	e'8.[( csharp16 a b] csharp_\cr d! e fsharp gsharp a)			|
	
	%%% ALLEGRETTO %%%
	
	\noDynamic a8\p_\markup { \dynamic p \italic {dol.}}
		<< { e,4.~ | e2~ | e~ | e8 e4.~ | e8 }
		\\ { r8 r a,~ | a gsharp4.~ | gsharp2~ | gsharp8 } >>
		a'4 fsharp8~
	fsharp d4 b8~													|
	b csharp4 a8~
	a gsharp4( b8
	a) r r4
	
	R1*2/4*2
	
	r8 << { e'4.~ | e8 } \\ { a,8\rest a\rest a~ | a } >> csharp,8[( d]) r
	r csharp''[( d]) r												|
	r csharp4( dsharp8)
	dsharp( e4) r8
	
\repeat volta 2 {
	r4 r8 b~
	b[(\< csharp\! d!\> e])\!
	csharp << { e,4.~ | e2~ | e } \\ { e,8\rest e\rest a~ | a2~ | a_\espressivo } >>
	a4 r8 b'(_\cr
	e,) r r e'~
	e[(_\markup { \italic {dim.}} fsharp e b])
}

\alternative {
	{ csharp8\p r r4 }
	{ csharp8\p d,[(\< csharp e])\! }}
	
	%%% ADAGIO MNT %%%
	
	r4_\markup { \italic {sotto voce}} a,4-.( a-.) a-.( b-. a-.) a-.( b-. a-.)
	r d-.( d-.) d-.( e-. d-.) d-.( e-. d-.)							|
	r b-.( b-.) b-.( csharp-._> b-.) b-.( csharp-._> b-.)
	r e-.( e-.) e-.( fsharp-._> e-.) e-.( fsharp-._> e-.)
	r e-.(_\cr e-.) e-.( a-. a-.) a-.( a-. a-.)
	a2.~ a~\> a4( gsharp fsharp)\!
	\noDynamic fsharp\p(_\markup { \dynamic p \italic cantabile } e d!)
		\grace d16 csharp4( b csharp e d csharp)					|
	csharp( b a) gsharp( a fsharp) e( fsharp gsharp)
	a a'-.( a-.) a-.( b-. a-.) a-.( b-. a-.)
	a-.( d-. d-.) d-.( e-. d-.) d-.( e-. d-.)
	csharp-.( b-. b-.) b-.( csharp-._> b-.) b-.( csharp-._> b-.)
	b-.( e-. e-.) e-.( fsharp-._> e-.) e-.( fsharp-._> e-.)
	e-.(_\cr a-. a-.) a-.( a-. a-.) a-.( a-. a-.)
	a2.~ a~\> a4( gsharp fsharp)\!									|
	fsharp\p( e d) \grace d16 csharp4( b csharp) e( d csharp)
	csharp( b a) \noDynamic gsharp\p(_\markup { \italic {poco cresc.} \dynamic p }
		a fsharp e dsharp d)
	R1*9/4
	r4 asharp'-.\pp( asharp-.) asharp(\( b) b-.\) b( a gsharp
	b a g) r2 r4 r2 r4												|
	r g-.\pp( g-.) g-.( csharp-. csharp-.) csharp( d e)
	e( csharp d) d(\(_\cr fsharp) fsharp\) fsharp( esharp gsharp!)
	gsharp( fsharp a) a-.( a-. a-.) a(\> fsharp dsharp)\!
	fsharp\p( d! b) d( csharp e dsharp d gsharp,)
	b( a) a( \noDynamic gsharp\p_\markup { \italic {poco cresc.} \dynamic p } a fsharp e dsharp d)
	r2 r4 r2 fsharp16\f( e fsharp e) b'4-. asharp-.\pp( asharp-.)
	asharp-.( d-. d-.) d(\( csharp) csharp-.\) csharp( b) e(
	d csharp e) r2 d,16\f( csharp d csharp) g'4 csharp-.\pp( csharp-.)
	csharp(\( e) e-.\) e(\( d) d-.\) d( csharp e)					|
	e( d fsharp) fsharp-.(_\cr fsharp-. fsharp-.) fsharp( esharp gsharp!)
	gsharp( fsharp a) a-.( a-. a-.) a(\> fsharp dsharp)\!
	fsharp\p( d! b d csharp e dsharp d gsharp,)
	b(_\cr a g fsharp e d csharp_\markup { \italic {dim.}} b e)
	e(_\cr a, g fsharp e d csharp_\markup { \italic {dim.}} b e)	|
	a2.~_\markup { \italic {sotto voce}} \times 2/3 { a8^( gsharp! fsharp } \times 2/3 { e dsharp fsharp }
		\override TupletBracket   #'transparent = ##t
		\times 2/3 { a b dsharp fsharp e dsharp a' gsharp fsharp csharp' b a^) }
	
	\override TupletBracket   #'transparent = ##f
	a2.~ \times 2/3 { a8 b^( a } gsharp[ a b csharp] d!4^) r r
	R1*9/4
	r2 r4 r2 r4 r csharp,8[( d e fsharp])
	< a, g' >4_\cr r r < e' g > r r r2 r4
	csharp'_\cr r r csharp r r r2 r4								|
	
	b2.~_\cr \times 2/3 { b8( a gsharp } \times 2/3 { fsharp e dsharp }
		\override TupletBracket   #'transparent = ##t
		\times 2/3 { e fsharp d csharp_\markup { \italic {dim.}} d csharp e d csharp e d b^) }
	b2.\p~\startTrillSpan b~ b~
	b4\stopTrillSpan \noDynamic csharp2\p~\startTrillSpan_\markup { \italic più \dynamic p }
		csharp2.~ csharp~											|
	csharp4\stopTrillSpan c2~\startTrillSpan_\markup { \italic morendo } c2.~ c~
	c4\stopTrillSpan c2\ppp~\startTrillSpan c2.~ c2~ c8\stopTrillSpan b^(
	
	%%% ALLEGRETTO II %%%
	
	c8^) \noDynamic c4\p(_\markup { \dynamic p \italic dolce } d16 c)
	b8 b4( c16 b)
	f'8 f4( g16 f)
	e8 e4( f16 e)													|
	e8 e4(_\cr f16 e)
	e8 e4( f16 e)
	e8 e4( f16 e)
	e8 e4( f16 e)
	e8 e4( f16 e)
	e8[( f16 e]) e8[( fsharp16 e])
	
	\override TupletBracket   #'transparent = ##f
	\times 2/3 { \noDynamic e16\p[(_\markup { \dynamic p \italic più \dynamic p } fsharp e] }
		\times 2/3 { fsharp[ e fsharp]) } e4\pp~\startTrillSpan		|
	e8.[(\stopTrillSpan_\cr dsharp16\trill]) d\trill[( e,8\trill e'16\trill]) \bar "" \grace { dsharp32[ e] }
	
	\bar "||"
	\key a \major
	
	csharp8.\p[(\startTrillSpan^\markup { " " \raise #4.0 {\natural} } b32\stopTrillSpan csharp])
		csharp'8.[(\startTrillSpan b32\stopTrillSpan csharp])		|
	e,,8.[(\startTrillSpan dsharp32\stopTrillSpan e]) d'!8.[(\startTrillSpan csharp32\stopTrillSpan d])
	e,16.[(\startTrillSpan dsharp64\stopTrillSpan e] b'16.[\startTrillSpan asharp64\stopTrillSpan b])
		b'8.[(\startTrillSpan asharp32\stopTrillSpan b])
	e,,8.[(\startTrillSpan dsharp32\stopTrillSpan e]) e'16.[(\startTrillSpan dsharp64\stopTrillSpan e]
		a!16.[\startTrillSpan gsharp64\stopTrillSpan a])
	e,8.[(\startTrillSpan dsharp32\stopTrillSpan\< e]) e'16.[(\startTrillSpan dsharp64\stopTrillSpan e]\!
		a16.[\startTrillSpan\> gsharp64\stopTrillSpan a])\!			|
	d,,!16.[(\startTrillSpan csharp64\stopTrillSpan d] d'!16.[\startTrillSpan\< csharp64\stopTrillSpan d])
		csharp16.[(\startTrillSpan b64\stopTrillSpan csharp] fsharp16.[\startTrillSpan^\markup { " " \raise #'4.0 {\natural} }
		e!64\stopTrillSpan fsharp])\!								|
	fsharp16.\p[(\startTrillSpan^\markup { " " \raise #'4.0 {\natural} } esharp64\stopTrillSpan fsharp]
		b16.[\startTrillSpan_\cr a64\stopTrillSpan b]) csharp16.[(\startTrillSpan b64\stopTrillSpan csharp]
		\times 4/6 { e!32[_\( d csharp e d b])_\) }
	b2~\startTrillSpan_\markup { \italic {dim.}}
	b16\stopTrillSpan csharp~\startTrillSpan csharp4.~
	csharp16\stopTrillSpan c~\startTrillSpan c4._\cr				|
	c8\stopTrillSpan c!4~\startTrillSpan c32\p[(\stopTrillSpan b] \times 2/3 { c32[ d e]) }
	
	%%% ALLEGRETTO III %%%
	
	\noDynamic f8\p_\markup { \dynamic p \italic dolce } f,4( g16 f)
	e8 e4( f16 e)
	bflat'8 bflat4( c16 bflat)
	a8 a4( bflat16 a)
	\setTextCresc
		a8\< a4( bflat16 a)
	a8 a4( bflat16 a)
	a8 a4( bflat16 a)
	a8 a4( bflat16 a)
	a8 a4\! a8\f~
	a a4 a8~
	a8~_\markup { \italic cantabile } \times 2/3 { a16[( gsharp! b!] } \times 2/3 { d[ b gsharp] }
		\times 2/3 { e[ d b]) }
	\times 4/6 { gsharp32[(_\cr e d b gsharp a]) } \times 4/6 { b[( csharp d e fsharp g]) }
		gsharp64[( a b csharp d e fsharp g] gsharp[ a b csharp d e fsharp gsharp])
	gsharp8(\< a4\! fsharp16\> d\!
	csharp8-.\p)[ d16( b] a8-.)[ b16( gsharp])
	gsharp8(\< a4\! fsharp16\> d\!
	csharp8-.\p)[ d16( b] a8-.)[ b16( gsharp])
	r8 fsharp'16[( d] csharp8-.)[ d16( b])
	R1*2/4
	r8 d16[( b] a8-.)[ b16( gsharp])
	R1*2/4
	gsharp2\p
	a8 r e' r
	csharp4(_\cr d8 f\p)
	r_\markup { \italic semplice } a[ a] r\fermata
}