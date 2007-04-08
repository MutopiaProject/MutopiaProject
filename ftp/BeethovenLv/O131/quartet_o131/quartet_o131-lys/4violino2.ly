\version "2.6.0"

mIVViolinTwo =  \relative csharp' {
	\clef "treble"
	
	r8_\markup { \dynamic p \italic dolce } \noDynamic csharp4.\p(
	d8) gsharp4( a16 gsharp
	d'8) b,4.(
	a8) csharp'4( d16 csharp
	a'8) r r4
	r8 fsharp4(\< e16\!\> csharp\!
	dsharp8) b,[( csharp]) b'16( a
	gsharp8) r r d16( b
	a8) a4( b16 a
	gsharp8) r r4
	r8 d'4( e16 d
	csharp8) csharp4.~
	csharp8 a'4(\< g16\!\> esharp)\!
	esharp8( fsharp) r4
	r8 e'!16[( d!] csharp8) r
	r fsharp,16[( e] dsharp8) r
	r gsharp,4(\< a16\!\> gsharp)\!
	gsharp4( a8 b)
	csharp csharp4(\< d16\!\> csharp)\!
	csharp4( d8 e)
	d4.^(_\cr b8
	e a,4.~\>
	a8\p^)\! fsharp'16( d csharp8 e)~
	e r r d!16( b
	gsharp8) b'4(\< csharp16\!\> b)\!
	b4( csharp8 d)
	csharp a4.~\espressivo
	a2
	a8(_\cr fsharp e4)~
	e( a,)~\>
	a8\p\! b16( d csharp8) e~
	e r r4
	a,4(\< b8..\!\> a32)\!
	gsharp8 r r b~
	b4(\< csharp8..\!\> b32)\!
	b16( a) r8 r4
	e'4(\< g8..\!\> esharp32)\!
	fsharp8(\< fsharp'\! e!8..\> csharp32)\!
	dsharp8[(_\cr e16. d32]) csharp8( dsharp\p)
	dsharp16( e a, gsharp) gsharp8.(_\cr e'16)
	<< e2 \\ { csharp4\p(\< d8..\!\> csharp32)\! } >>
	<< e8 \\ b8 >> r r4										|
	< d e >2_\espressivo
	< csharp e >8 r r4
	R1*2/4
	fsharp,8(\< e'!)~\! e8.(\> dsharp32 csharp)\!
	csharp16[( dsharp]) csharp[( d]) b[( csharp]) csharp[( b32 a])
	b16[( csharp]) csharp[( b32 a]) a16[( gsharp32 fsharp]) fsharp16[( dsharp32 e])
	\setTextCresc
		b16.[(\< asharp32]) asharp16.[( b32]) b16.[( csharp32]) csharp16.[( d!32])
	d8 r r a'!16.\p(\! b32)									|
	csharp,16.[(_\cr bsharp32]) bsharp16.[( csharp32]) csharp16.[( d32]) d16.[( e32])
	e8 g16[( fsharp32 e]) e16[( d32 csharp]) csharp-.[ csharp'( d e])
	\noDynamic fsharp8\p_\markup { \dynamic p \italic {cresc.}} fsharp16[( e32 d]) d4~
	d8 fsharp16[( e32 d] d8) d16[(\> csharp32 b])\!
	b16\p[( csharp]) csharp[( fsharp,]) b[( e,]) a[( gsharp!])
	gsharp[( a]) e'[( d32 csharp]) csharp16[( b32 a]) gsharp8
	d'16.[(_\cr csharp32]) csharp16.[( d32]) d4~			|
	d16[( d'32 csharp]) csharp16[( b32 a]) a16[( gsharp32 fsharp]) fsharp16\p[( e32 d])
	\setTextCresc
		csharp16.[(\< bsharp32]) bsharp16.[( csharp32]) csharp16.[( d32]) d16.[( e32])
	e16[( csharp32 d]) e16[( fsharp32 g]) g16[( fsharp32 e]) e16[( d32 csharp])\!
	fsharp16\p[(
		\setTextCresc
		e32\< d]) d16[( e32 d]) d8 r
	r16 d32[( csharp] e16[ d32 csharp]) d8 r\!
	r16 a32\p[( e']) e[( csharp) csharp( b]) d[( b) b( a]) a[( b) a( b])
	csharp[( a) gsharp( a]) r8 r4							|
	
	%%% PIU MOSSO %%%
	
	< csharp, e >8\pp r < csharp e > r < csharp e > r < csharp e > r
	< csharp e > r < csharp e > r < csharp e > r < csharp e > r
	< b e > r < b e > r < b e > r < b e > r
	< b e > r < b e > r < b e > r < b e > r
	< a e' > r < a e' > r < a e' > r < a e' > r
	< a e' > r < a e' > r < a e' > r < a a' > r
	< d fsharp > r csharp r csharp r csharp r
	b r < e b' > r < e csharp' > r dsharp' r
	e r a, r b r d! r
	csharp r r4 r8 e,[(\< a\!\> gsharp])\!
	a4 r r2													|
	r2 r8 e[(\< b'\!\> asharp])\!
	b r < e, d' > r < e d' > r e r
	e r e' r e[ a,!( csharp a])
	d r csharp r csharp r csharp r
	b[ gsharp( b gsharp] e')[ d( e csharp])
	csharp[( b csharp a]) a[( gsharp b e])
	gsharp[(_\cr b gsharp e]~ e[ b gsharp e]
	b gsharp) \times 2/3 { csharp[( d b]) } r4 \times 2/3 { csharp'8( d b) }
	e[( e, g a] csharp[ e g a]
	csharp e) \times 2/3 { fsharp,,[( g e]) } r4 \times 2/3 { fsharp'8( g e) }
	fsharp\f a,,[( d csharp] d[ fsharp gsharp!\sf e])
	a[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])			|
	a! r e'\sf[( e,]) r2
	gsharp,8\p r
		\setTextCresc
		< e' b' >\< r < gsharp b > r e r
	r4 \times 2/3 { csharp'8( d b) } r4 \times 2/3 { csharp8( d b) }
	< a e' > r < g a > r < e a > r < g a > r
	< g a > r \times 2/3 { fsharp'( g e) } r4 \times 2/3 { fsharp8( g e)\! }
	< a, fsharp' >\f a,[( d csharp] d[ fsharp gsharp!\sf e])
	a[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])
	a! r e'\sf( e,) r2										|
	
	%%% ANDANTE MODERATO %%%
	
	R1*9
	
	r4 \noDynamic b'8.(_\markup { \dynamic p \italic dolce } csharp16 d8. csharp16 b4
	a gsharp2) r4
	r e'8.( fsharp16) g8.( fsharp16) fsharp8.( e16)
	e8.( d16) r4 r b'8.(_\cr a16)
	a8.( g16) fsharp8.( b16) b8.(\> asharp16)\! fsharp4\p
	r4 b8.(_\cr gsharp!16) fsharp8.( e16) e8.( d16)			|
	d8\p( csharp4) dsharp8\trill( \grace { csharp16[ dsharp] } e4) r
	
	R1*9
	
	a4-._\cr b\trill \grace { a16[ b] } csharp4-. d\sfp~
	d8[( csharp) b-. a-.] gsharp-.[ g-.] r4
	d,4-._\cr e\trill \grace { d16[ e] } b4-. g'\sfp~
	g8[( fsharp) e-. d-.] d-.[ csharp-.] r4
	b'4-. csharp\trill \grace { b16[ csharp] } d4-. g\sfp~
	g8[(_\cr fsharp) e-. d-.] csharp-.[ g'-. fsharp-. e-.]
	fsharp4-.\sf gsharp!\trill \grace { fsharp16[ gsharp] } d8_\cr a' b4\trill
		\bar "" \grace { a16[ b] } \bar "||"				|
		
	%%% ADAGIO %%%
	
	\time 6/8
	\tempo 8 = 57
	
	b16\sfp[( d8 csharp16]) csharp8~ csharp16[ csharp,]( b8[ a])
	e[ r b'] b \noBeam
		\set Staff.midiInstrument = #"pizzicato strings"
		< e, d' b' >^\markup {pizz.} r8
		
	\set Staff.midiInstrument = #"violin"
	r8^arco e16[( gsharp b a] gsharp[ fsharp e d csharp b])
	a8[ r < a e' >] < a e' >\upbow \noBeam
		\set Staff.midiInstrument = #"pizzicato strings"
		< e' csharp' a' >^\markup {pizz.} r					|
	
	\set Staff.midiInstrument = #"violin"
	r8^arco a16[(_\cr csharp e d] csharp b a gsharp fsharp e)
	e8\p[ r e'] \stemUp e[
		\set Staff.midiInstrument = #"pizzicato strings"
		< csharp, e >_\markup {pizz.}
		\set Staff.midiInstrument = #"violin"
		e']^arco \stemNeutral
	e[ r dsharp] d[ r csharp]
	c[ r a] gsharp[( a, b])
	csharp!8.[^(\< e16 a gsharp]\! fsharp\> e d csharp b a^)\!
	gsharp8[ r < b e >] < b e > r r
	e16[^(\< gsharp b8 d16 csharp]\! b\> a gsharp fsharp e d^)\!
	e8[ r e] e r
		\set Staff.midiInstrument = #"pizzicato strings"
		< csharp' a' >\sf^\markup {pizz.}
	
	\set Staff.midiInstrument = #"violin"
	\noDynamic e8.[(^arco\p_\markup { \dynamic p \italic dolce } csharp16 gsharp a]) r4 r8
	csharp8.[( asharp16 esharp fsharp]) r4 r8				|
	fsharp16[(\> d'!( b d csharp8])\! r4 r8
	r4 r8 r r16 csharp,[(\< gsharp asharp])\!
	d4.\p~\< d8[(\!\> csharp b])\!
	b4.\p~ b8[( a gsharp16 g])
	e'4.~_\cr e8[( d csharp])
	csharp4.~ csharp8[( b asharp16 a])
	a'\p[ csharp( csharp])_\espressivo r r a r e'(\< d)\! r r asharp\p
	g'8.[(\< e16\!\> csharp fsharp])\! fsharp8.[(\< d16\> b e])~\!
	e e[(_\cr dsharp]) d[( d]) d[(_\markup { \italic {dim.}} csharp]) csharp[( c]) b[( b]) b(
	csharp!8) r16 b[(\> fsharp gsharp])\! r4 r8
	r4 r8 r16 gsharp,(\> a b csharp d\!
	e\p fsharp gsharp a b csharp) d( dsharp) dsharp( e) e e	|
	g4.~_\cr g8[( fsharp e])
	e4.~ e8[( d! csharp])
	g16[(\< d' csharp])\! r r fsharp,\p r e'(\< d)\! r r asharp\p
	e8.[(\< csharp16\!\> asharp d])\! d'8.[(\< b16\!\> gsharp! csharp])\!
	csharp(_\cr a! fsharp gsharp b esharp, fsharp_\markup { \italic {dim.}} a dsharp, e fsharp e)
	e'8.[( csharp16 a b] csharp_\cr d! e fsharp gsharp a)
	
	%%% ALLEGRETTO %%%
	
	a8\p r r4												|
	r8 << { e,4.~ | e2~ | e~ | e8 } \\
		{ \noDynamic r8\p_\markup { \dynamic p \italic {dol.}} r b~ | b2~ | b8 a4.~ | a8 } >>
	r8 r csharp'(
	d) r r e,~												|
	e e[( dsharp]) dsharp(
	e4) r8 << { e8~ | e2~ | e8 e4.~ | e4. a8\rest | a\rest e4.~ | e8 } \\
		{ s8 | a,2( | b8) g\rest g\rest b~ | b4. gsharp8~ | gsharp a4.~ | a8 } >> r8 r csharp'(
	d) fsharp4 d8~											|
	d csharp[( a]) a~
	a( gsharp4) r8
	
\repeat volta 2 {
	r8 << { d!4.~ | d2 } \\ { g,8\rest g\rest gsharp8~ | gsharp2_\espressivo } >>
	csharp4 r8 << { s8 | e2~ | e } \\ { e8~ | e8 a,4.~ | a2_\espressivo } >>
	< a fsharp' >8_\cr fsharp'( d') b(
	csharp)[ a'( d,) e](
	a,)_\markup { \italic {dim.}} a4( gsharp8
}

\alternative {
	{ a8\p) r r4 }
	{ a8\p gsharp[(\< a b])\! } }
	
	%%% ADAGIO MNT %%%
	
	r4_\markup { \italic {sotto voce}} csharp,-.( csharp-.) csharp-.( d-. csharp-.)
		csharp-.( d-. csharp-.)
	r b-.( b-.) b-.( asharp-. b-.) b-.( asharp-. b-.)		|
	r < gsharp gsharp' >-.( < gsharp gsharp' >-.) < gsharp gsharp' >-.( < g g' >-.^> < gsharp gsharp' >-.)
		< gsharp gsharp' >-.( < g g' >-.^> < gsharp gsharp' >-.)
	r < a a' >-.( < a a' >-.) < a a' >-.( < a a' >-.^> < a a' >-.) < a a' >-.( < a a' >-.^> < a a' >-.)
	r < g' a >-.(_\cr < g a >-.) < g a >-.( < g a >-. < g a >-.) < g a >-.( < g a >-. < g a >-.)
	a-.( dsharp-. dsharp-.) dsharp-.(\> dsharp-. dsharp-.) dsharp-.( dsharp-. dsharp-.)\!
	\noDynamic d!\p(_\markup { \dynamic p \italic cantabile } csharp b) e,( gsharp a csharp b a)
	a( gsharp fsharp) b, b( dsharp) d-.( d-. < d e >-.)		|
	< csharp e > < e e' >-.( < e e' >-.) < e e' >-.( < e e' >-. < e e' >-.) < e e' >-.( < e e' >-. < e e' >-.)
	< e e' >-.( < e e' >-. < e e' >-.) < e e' >-.( < e e' >-. < e e' >-.) < e e' >-.( < e e' >-. < e e' >-.)
	< e e' >-.( < e e' >-. < e e' >-.) < e e' >-.( < e e' >-.^> < e e' >-.) < e e' >-.( < e e' >-.^>
		< e e' >-.)
	< e e' >-.( < e e' >-. < e e' >-.) < e e' >-.( < a a' >-._> < a a' >-.) < a a' >-.( < a a' >-._>
		< a a' >-._>)										|
	< g a >-.(_\cr < g a >-. < g a >-.) < g a >-.( < g a >-. < g a >-.) < g a >-.( < g a >-. < g a >-.)
	< fsharp a >-.( < fsharp a >-. < fsharp a >-.) < fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)
		< fsharp a >-.( < fsharp a >-. < fsharp a >-.)\!
	< e b' >-.\p( < e e' >-. < e e' >-.) < e e' >-.( < e e' >-. < e e' >-.) < e e' >( d' csharp)
	csharp( b a) \noDynamic gsharp\p(_\markup { \italic {poco cresc.} \dynamic p } e dsharp)
		b-.( b-. b-.)
	r2 r4 r d!-.\pp( d-.) d-. asharp'-.( asharp-.)			|
	asharp-.( d-. d-.) d-.( < e, b' >-. < e b' >-.) < e b' >-.( < e csharp' >-. < e d' >-.)
	< e b' >-.( < e csharp' >-. < e e' >-.) r g-.\pp( g-.) g-. csharp-.( csharp-.)
	csharp-.( < csharp, g' >-. < csharp g' >-.) < csharp g' >-.( e'-. e-.) e( d csharp)
	csharp( e d) d-.(_\cr d-. a-.) a(\( b) b-.\)			|
	b(\( a) a-.\) a-.( < fsharp a >-. < fsharp a >-.) < fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)\!
	< fsharp a >-.\p( < fsharp a >-. < fsharp a >-.) a( csharp c) c,( b d)
	d( csharp!) csharp( \noDynamic b\p_\markup { \italic {poco cresc.} \dynamic p } csharp a gsharp a' b)
	r2 r4 r d,-.\p( d-.) d-. asharp'-.\pp( asharp-.)		|
	asharp-.( d-. b'-.) gsharp(\( a!) a-.\) csharp,(\( d) b-.\)
	b(\( a!) a-.\) r g-.\f( g-.) g-. csharp-.\pp( csharp-.)
	csharp-.( csharp-. csharp-.) csharp(\( d) b-.\) b(\( csharp) csharp-.\)
	csharp(\( d) d-.\) d-.(_\cr d-. a-.) a(\( b) b-.\)		|
	b( < fsharp a >) < fsharp a >-.( < fsharp a >-. < fsharp a >-. < fsharp a >-.)
		< fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)\!
	< fsharp a >-.\p( < fsharp a >-. < fsharp a >-.) < e a > < e a > csharp'( c b d,)
	d(_\cr csharp e fsharp g, a b_\markup { \italic {dim.}} d csharp)
	a(_\cr b csharp d e fsharp a,_\markup { \italic {dim.}} gsharp! a)
	a\p r r dsharp r r r2 r4								|
	d!2.~ d4 r r r gsharp8[( a b csharp])
	< e, d' >4 r r < e d' > r r r2 r4
	r2 r4 g4~ g8[( fsharp e d]) csharp4 a'8[( b csharp d])
	e4_\cr r r a, r r r2 r4									|
	csharp2.~ \times 2/3 { csharp8^( fsharp, asharp } \times 2/3 { csharp fsharp asharp }
		\override TupletBracket   #'transparent = ##t
		\times 2/3 { csharp b asharp g fsharp esharp fsharp_\markup { \italic {dim.}} csharp d e csharp fsharp^) }
	dsharp4_\cr r r < e, d' > r r e_\markup { \italic {dim.}} r fsharp\p
	r2 r4 r2 r4 r e'\p( gsharp								|
	b) r r r2 r4 r \noDynamic e,\p(_\markup { \italic più \dynamic p } a
	csharp)( c) r r2 r4 r e,(_\markup { \italic morendo } a
	c) r r r2 r4 r f,\ppp^( a								|
	
	%%% ALLEGRETTO II %%%
	
	c8^) e,,\p[ e] r
	r f[ f] r
	r d[ d] r
	r e[ e] r
	r g[_\cr g] r
	r gsharp[ gsharp] r
	r a[ a] r
	r b[ b] r												|
	
	R1*2/4*4
	
	\key a \major
	< csharp, a' >8\p < csharp a' >4( b'16 a
	gsharp8) gsharp4( a16 gsharp
	d'8) d4( e16 d											|
	csharp8) << { csharp4( d16 csharp | a'8) } \\ { e,4. | s8 } >> a'4(\< g16\!\> esharp)\!
	esharp8[( fsharp])~\< fsharp[( e!16 csharp]\!
	dsharp8\p) e16[(_\cr d] csharp-.)[ e,( fsharp d']
	
	\override TupletBracket   #'transparent = ##f
	b8)_\markup { \italic {dim.}} r r \times 2/3 { r16 e( gsharp }
	\times 2/3 { b) r r } r8 r \times 2/3 { r16 e,( a) }
	\times 2/3 { a r r } r8 r \times 2/3 { r16 a(_\cr a) }
	a8 r r \times 2/3 { r16 f\p( a) }						|
	
	%%% ALLEGRETTO III %%%
	
	< c, a' >8\p c[ c] r
	r c[ c] r
	r c[ c] r
	r c[ c] r
	r
		\setTextCresc
		c[\< c] r
	r csharp[ csharp] r
	r d[ d] r
	r e[ e] r
	r f[ f]\! fsharp\f
	fsharp r r4												|
	d2\p~
	d8 \noBeam < e, d' >16\sf r r8 < b e >16 r
	<< { e4 fsharp~ | fsharp8 } \\ { a,2(_\espressivo | asharp8\p) } >> fsharp'8[( e) e]
	a,!2(_\espressivo
	asharp16\p)[ asharp( b fsharp']) r e[( b d])
	r8 d16[( b] a!8-.)[ b16( gsharp])
	R1*2/4
	r8 gsharp16[( b] csharp8-.)[ b16( d])
	R1*2/4
	b2\p
	csharp8[ e16( csharp]) r8 b'16[( e,])
	r8_\cr e'16[( a,]) r8 d16\p[( f,])						|
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8^\markup {pizz.} e[ e'] r\fermata
}