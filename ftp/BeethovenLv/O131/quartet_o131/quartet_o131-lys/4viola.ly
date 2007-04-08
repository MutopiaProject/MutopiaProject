\version "2.6.0"

mIVViola =  \relative csharp {
	\clef "alto"
	
	r8\p e4.~
	e2~
	e2~
	e2~
	e4( a)~
	a8( fsharp4.)~
	fsharp8 gsharp8[( a]) dsharp,(
	e) r r4
	< e csharp' >2(
	< e d' >)
	< e b' >(
	< e a >)~
	< e a >8 e( a4)~
	a8 fsharp4.~
	fsharp8[ gsharp( e) dsharp](
	e) r r4
	r8 e4.~_\espressivo
	e2~
	e8 < a a' >4.~
	< a a' >2~
	< a a' >8(_\cr fsharp' e4)
	csharp,8( e4\> fsharp8\!
	e\p)[ fsharp( e]) << { d'16( b csharp8) } \\ { e,8~ e } >>
	% partial from above
		r8 r e~
	e gsharp4(\< a16\!\> gsharp)\!							|
	gsharp4( a8 b)
	a8 csharp4(\< d16\!\> csharp)\!
	csharp4( d8 e)
	d_\cr d4 b8(
	csharp,)^( e4\> fsharp8\!
	e8\p^)[ fsharp( e]) << { d'16( b) } \\ e,8 >>			|
	< e csharp' >8 r r csharp~
	csharp4(\< d8..\!\> csharp32)\!
	d8 r r d~
	d4(\< e8..\!\> d32)\!
	d16( csharp) r8 r4
	R1*2/4
	d''4(\< csharp8..\!\> asharp32)\!
	b4(_\cr a!8. b16\p)
	b8[( fsharp16 b,]) b8[(_\cr e16 d])						|
	csharp8\p(\< a'\! b8..\> a32)\!
	gsharp8 r r4
	gsharp4(\< fsharp8..\!\> gsharp32)\!
	a8 r r4
	R1*2/4
	r16 d,( csharp b asharp fsharp' csharp asharp)
	b( fsharp') r8 gsharp,16[( a!]) a[( fsharp'])
	e,( e') r8 e,16( e') a,16[( fsharp32 gsharp])
	\setTextCresc
		d16.[(\< csharp32]) csharp16.[( d32]) d16.[( asharp'32]) asharp16.[( b32])
	b8[ gsharp16.( a!32]) b8\! b\p							|
	a_\cr a16.[( g32]) g16.[( fsharp32]) fsharp16.[( csharp32])
	csharp8 r r e16( d32 csharp)
	csharp\p[( csharp'
		\setTextCresc
		d\< e]) fsharp8~ fsharp16.[( gsharp!32]) gsharp8~
	gsharp16.[( a32]) a8 a,16.[( b32])\! b8\>
	b16\p[(\! e,]) fsharp[( d']) e,[( csharp']) csharp[( b])
	b[( csharp]) r8 e'16[( d32 csharp]) d16[( csharp32 d])
	gsharp,4~_\cr gsharp16.[( asharp32]) asharp16.[( b32])	|
	b,16.[( csharp32]) d16.[( e32]) fsharp16.[( gsharp32]) a!16.\p[( b32])
	\setTextCresc
		r16\< a, < a a' >4.~
	< a a' >16 g32[( fsharp]) fsharp16[( e32 d]) d'16[( csharp32 b]) b16[( a32 gsharp])\!
	fsharp16.\p[(
		\setTextCresc
		a32])\< d8~ d16[( e32 d]) fsharp16[( e32 d])
	csharp8 r r16 a'32[( gsharp!]\! b16[\> a32 gsharp])\!
	a16\p[( fsharp32 e]) asharp16[ asharp32( fsharp]) gsharp16[ gsharp32( e]) e32[( b) b( gsharp])
	e'[( csharp) d( a]) r8 r4								|
	
	%%% PIU MOSSO %%%
	
	a8\pp r a r a r a r
	a r a r a r a r
	gsharp r gsharp r gsharp r gsharp r
	gsharp r gsharp r gsharp r gsharp r
	csharp, r csharp r csharp r csharp r
	csharp r csharp r csharp r csharp r
	d r asharp' r asharp r asharp r
	a! r gsharp r a r < fsharp a > r
	< e b' > r < fsharp b > r < gsharp b > r < e b' > r
	a r < csharp e >\pp r < csharp e > r < csharp e > r
	< csharp e > r < csharp e > r < csharp e >[ a(\< e'\!\> csharp])\!
	< e, b' > r < gsharp' b > r < gsharp b > r gsharp, r
	gsharp r gsharp r gsharp[ e(\< b'\!\> gsharp])\!
	csharp r csharp' r csharp r a r
	a r asharp r r fsharp[( a fsharp])
	fsharp r gsharp r a! r a r								|
	a r a r < e b' > r < gsharp, e' > r
	< gsharp b >_\cr r < gsharp b > r < gsharp b > r < gsharp b > r
	< gsharp e' > r e r < gsharp b > r < gsharp b > r
	< csharp, a' > r < csharp a' > r < csharp a' > r < csharp a' > r
	< e a > r < g a > r < e a > r < e a > r
	< d d' >\f a'[( d csharp] d[ fsharp gsharp!\sf e])
	a,[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])
	a!8 r8 r4 e'8\sf( e,) r4
	r4 \times 2/3 { csharp'8\p(
		\setTextCresc
		d\< b) } r4 \times 2/3 { csharp8( d b) }
	< e, b' > r e' r < gsharp, b > r < e b' > r				|
	< e csharp' > r \times 2/3 { fsharp( g e) } r4 \times 2/3 { fsharp8( g e) }
	< csharp' e > r < a e' > r < csharp e > r < a e' > r\!
	< d, d' >\f a'[( d csharp] d[ fsharp gsharp!\sf e])
	a,[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])
	a! r r4 csharp8\sf( csharp,) r4
	
	%%% ANDANTE MODERATO %%%
	
	R1
	r4 \noDynamic b'8.\p(_\markup { \dynamic p \italic {dolce}} csharp16 d8. csharp16 b4
	a gsharp2) r4
	r e'8.( fsharp16) g8.( fsharp16) fsharp8.( e16)
	e8.( d16) r4 r b'8.(_\cr a16)
	a8.( g16) fsharp8.( b16) b8.(\> asharp16)\! fsharp4\p
	r b8.( gsharp!16) fsharp8.( e16) e8.( d16)
	d8( csharp4) dsharp8\trill \grace { csharp16[ dsharp] } e8-.[ d-. b-. e-.]
	fsharp1
	R1
	e1
	R1
	a2 csharp,
	R1
	b'2_\cr gsharp8[( a fsharp gsharp])
	gsharp,\p( a4) a8-. gsharp[( a) fsharp-. b-.]
	e,4 r r2
	fsharp4-._\cr gsharp\trill \grace { fsharp16[ gsharp] } a4-. b\sfp~
	b8[( a) gsharp-. fsharp-.] esharp-.[ e-.] r4
	b'4-._\cr csharp\trill \grace { b16[ csharp] } d4-. e\sfp~
	e8[( d) csharp-. b-.] bflat-.[ a-.] r4					|
	gsharp4-._\cr a^\markup { \natural \raise #-1.5 { \hspace #'2.0 \musicglyph #"scripts.trill"}}
		\grace { gsharp16[ a] } b!4-. e'\sfp~
	e8[(_\cr d) csharp-. b-.] a-.[ e'-. d-. csharp-.]
	d4-. e\trill \grace { d16[ e] } fsharp4-. gsharp,\trill
		\bar "" \grace { fsharp16[ gsharp] } \bar "|"
	gsharp8\sfp b4_\cr a8 b[ e,,] fsharp4\trill \bar "" \grace { e16[ fsharp] } \bar "|"
	fsharp'8\p[( e) dsharp-. csharp-.] fsharp, fsharp4 b8
	csharp4-._\cr d!\trill \grace { csharp16[ d] } gsharp,8-. e'4\sfp d8
	b[( a) gsharp-. fsharp-.] f e4 e8
	d4-._\cr e^\markup { \column {
		\line {\sharp}
		\line {\musicglyph #"scripts.trill"}}}
		\grace { d16[ e] } csharp'4-. fsharp\sfp~
	fsharp8[( e) d-. csharp-.] b-.[ fsharp'-. e-. d-.]		|
	a'4-._\cr b\trill \grace { a16[ b] } csharp4-. d\trill
		\bar "" \grace { csharp16[ d] } \bar "|"
	a8\sf csharp4\p b8_\cr a d4 d8
	
	%%% ADAGIO %%%
	
	d8\sfp( e4)~ e16[ e]( d8[ csharp])
	b[ r e,] e r r
	gsharp[~( gsharp16 b d csharp] b[ a gsharp fsharp e e])
	e[( csharp d e fsharp gsharp] a8) r r
	r csharp,16[(_\cr a' csharp b] a[ gsharp fsharp e d csharp])
	csharp'8\p[ r csharp] csharp[ r csharp]					|
	csharp[ r fsharp,] b[ r < csharp, e >]
	fsharp[ r fsharp,] gsharp[( e-.) e-.]
	e[(\< a16 e csharp d]\! e[\< fsharp gsharp a b csharp])\!
	d8[ r d] d \noBeam
		\set Staff.midiInstrument = #"pizzicato strings"
		< e b' >^\markup {pizz.} r
	
	\set Staff.midiInstrument = #"viola"
	r^arco e16[(\< gsharp b a]\! gsharp[\> fsharp e d csharp b])\!
	a8[ r a] a
		\set Staff.midiInstrument = #"pizzicato strings"
		< a e' csharp' >^\markup {pizz.} r
	
	\set Staff.midiInstrument = #"viola"
	r4 r8 r16 csharp,[(^arco e a]) r8
	r4 r8 r16 asharp[( csharp fsharp]) r8
	r4 r16 esharp,( gsharp[ csharp fsharp,]) r r8
	r r16 csharp'[(\< gsharp a!]\! d[\> b gsharp])\! r r8
	r4 r8 r4 fsharp16\p( gsharp								|
	a b csharp d e fsharp gsharp a b csharp d e)
	fsharp,,(_\cr gsharp asharp b csharp d e fsharp gsharp asharp b csharp)
	fsharp,,4.~ fsharp8.[( g16) g( e'])
	e8.\p[(\< csharp16\!\> a! d])\! d8.[(\< b16\!\> gsharp! csharp])\!
	r4 r8 d'8.[(\< b16\!\> gsharp csharp])\!
	csharp(_\cr a fsharp gsharp b esharp, fsharp_\markup { \italic {dim.}} a dsharp,
		e fsharp e)
	a\p[( fsharp dsharp]) r r8 d16[(\> b gsharp)\! d'(\< asharp b])\!
	d4.\p~\< d8[(\!\> csharp b])\!
	b4.\p~ b8[( a! gsharp16 g])
	fsharp(_\cr gsharp! asharp b csharp d e fsharp gsharp asharp b csharp)
	fsharp,,4.~ fsharp8.[( g16) g( e'])
	e8.[(\< csharp16\!\> a! d])\! d8.[(\< b16\!\> gsharp! csharp])\!
	r b(\< asharp)\! r r fsharp\p r a( gsharp) r r e		|
	r csharp'[(_\cr c]) b[( b]) b[( a]) a[(_\markup { \italic {dim.}} a])
		gsharp[( gsharp]) gsharp
	r d\p[( csharp]) r < csharp' e >8 < csharp e > \noBeam
		\set Staff.midiInstrument = #"pizzicato strings"
		< a e' csharp' >^\markup {pizz.} \noBeam csharp,\sf
		
	%%% ALLEGRETTO %%%
	
	R1*2/4*3
	
	\set Staff.midiInstrument = #"viola"
	r8 << { csharp'4.~^arco | csharp8 } \\ { \noDynamic r8\p_\markup { \dynamic p \italic {dol.}} r
		e,~ | e8 } >>
		e'[( fsharp]) asharp(
	b) a,![( b]) gsharp(
	a) a[( a]) fsharp(										|
	e) << { b'4( d8) | csharp2 | b~ | b8 b'4.~ | b8 csharp,4.~ | csharp8 } \\
		{ e,4. | e2 | e~ | e8 e\rest e\rest e'~ | e e,\rest e\rest e~ | e } >>
		r r asharp'8(
	b) fsharp4 gsharp8(
	e) a,![( fsharp]) fsharp~
	fsharp( e4) << { b'8~ } \\ s8 >>
	
\repeat volta 2 {
	<< { b2~ | b( | a8) } \\ { r4 r8 e~ | e2~_\espressivo | e8 } >> r8 r4
	r8 << { g4.~ | g2 } \\ { csharp,8\rest csharp\rest csharp8~ | csharp2_\espressivo } >>
	d8_\cr d'[( b]) r
	r fsharp[( fsharp' gsharp!])
	a[(_\markup { \italic {dim.}} d, e) e](
}

\alternative {
	{ a,8\p) r r b }
	{ a8\p b[(\< a < e b' >])\! } }
	
	%%% ADAGIO MNT %%%
	
	r4_\markup { \italic {sotto voce}} e-.( e-.) e-.( e-. e-.) e-.( e-. e-.)
	r e-.( e-.) e-.( e-. e-.) e-.( e-. e-.)					|
	r e-.( e-.) e-.( < e asharp >-.^> e-.) e-.( < e asharp >-.^> e-.)
	r e-.( e-.) e-.( dsharp-.^> e-.) e-.( dsharp-.^> e-.)
	r < g a >-.(_\cr < g a >-.) < g a >-.( < g a >-. < g a >-.) < g a >-.( < g a >-. < g a >-.)
	< fsharp a >-.( < fsharp a >-. < fsharp a >-.) < fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)
		< fsharp a >-.( < fsharp a >-. < fsharp a >-.)\!
	< e b' >-.\p( < e b' >-. < e b' >-.) < e csharp' >-.( < e csharp' >-. < e csharp' >-.)
		< e csharp' >( fsharp) fsharp
	fsharp( gsharp dsharp' e fsharp, a gsharp a < e b' >)
	e csharp''-.( csharp-.) csharp-.( d-. csharp-.) csharp-.( d-. csharp-.)
	csharp-.( gsharp-. gsharp-.) gsharp-.( fsharpsharp-. gsharp-.)
		gsharp-.( fsharpsharp-. gsharp-.)					|
	< gsharp b >-.( < gsharp b >-. < gsharp b >-.) < gsharp b >-.( < gsharp b >-._> < gsharp b >-.)
		< gsharp b >-.( < gsharp b >-._> < gsharp b >-.)
	< gsharp b >-.( < a csharp >-. < a csharp >-.) < a csharp >-.( bsharp-._> csharp-.)
		csharp-.( bsharp-._> csharp-.)
	csharp-.(_\cr csharp-. csharp-.) csharp-.( csharp-. csharp-.) csharp-.( csharp-. csharp-.)
	dsharp-.( dsharp-. dsharp-.) dsharp-.(\> dsharp-. dsharp-.) dsharp-.( dsharp-. dsharp-.)\!
	d!\p( csharp b) \grace b16 a4( gsharp a) csharp( < fsharp, b > a)
	a( gsharp csharp,) \noDynamic b\p(_\markup { \italic {poco cresc.} \dynamic p }
		csharp a gsharp a e)
	r2 r4 r d-.\pp( d-.) d-. asharp'-.( asharp-.)			|
	asharp-.( d-. d-.) d( gsharp,) gsharp gsharp( a b)
	gsharp( a) < e a > r g-.\pp( g-.) g-. csharp-.( csharp-.)
	csharp-.( < csharp, g' >-. < csharp g' >-.) < csharp g' >-.( asharp''-. asharp-.)
		asharp( b asharp)
	asharp asharp( fsharp) fsharp-.(_\cr fsharp-. fsharp-.) fsharp( gsharp esharp)
	esharp( fsharp) fsharp fsharp-.( < fsharp, a >-. < fsharp a >-.)
		< fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)\!	|
	< fsharp a >-.\p( < fsharp a >-. < fsharp a >-.) a-.( a-. a-.) fsharp( gsharp b)
	gsharp( a csharp,) \noDynamic csharp\p_\markup { \italic {poco cresc.} \dynamic p } csharp( dsharp e
		fsharp gsharp)
		r2 r4 r d-.\p( d-.) d-. asharp'-.\pp( asharp-.)
	asharp-.( d-. b'-.) b(\( a) a-.\) a(\( gsharp) gsharp-.\)
	gsharp( e) < a, e' > r g-.\f( g-.) g-. csharp-.\pp( csharp-.)
	csharp(\( asharp) asharp-.\) asharp(\( b) fsharp-.\) fsharp(\( a) a-.\)
	asharp(\( b) b-.\) b-.(_\cr b-. csharp-.) csharp,( gsharp' esharp)
	esharp( < fsharp a! >) < fsharp a >-.( < fsharp a >-. < fsharp a >-. < fsharp a >-.)
		< fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)	|
	< fsharp a >-.\p( < fsharp a >-. < fsharp a >-.) < e! a > < e a > e( fsharp gsharp b)
	gsharp(_\cr a csharp, d e fsharp gsharp_\markup { \italic {dim.}} gsharp_\( a)_\)
	csharp,(_\cr d e fsharp g fsharp e_\markup { \italic {dim.}} d csharp)
	dsharp\p r r a' r r r2 r4								|
	b2.~ b4 r r r e8[( fsharp gsharp a])
	b,2.~ \times 2/3 { b8^( e, gsharp } \times 2/3 { b csharp d }
		\override TupletBracket   #'transparent = ##t
		\times 2/3 { e fsharp gsharp a b csharp d dsharp e fsharp e d^) }
	
	\override TupletBracket   #'transparent = ##f
	d2.~ \times 2/3 { d8( e d } csharp[ d e fsharp] g4) g,8[( fsharp e d])
	csharp4_\cr r r csharp, r r r2 r4
	asharp'_\cr r r < fsharp csharp' > r r r2 r4			|
	fsharp'_\cr r r b, r r csharp_\markup { \italic {dim.}} r b\p
	r2 r4 r e\p( gsharp b) r r
	r2 r4 r \noDynamic e,\p(_\markup { \italic {più} \dynamic p} a csharp) r r
	r2 r4 r e,(_\markup { \italic morendo} a c) r r
	r2 r4 r f,\ppp( a c) r r								|
	
	%%% ALLEGRETTO II %%%
	
	e,8[ c\p c] r
	r d[ d] r
	r b[ b] r
	r c[ c] r
	r e_\cr e r
	r d d r
	r c c r
	r b b r													|
	
	R1*2/4*4
	
	\bar "||"
	\key a \major
	< e, a >8\p << { < e a >4( b'16 a | gsharp8) } \\ { s4 e8 | s8 } >>
		gsharp4( a16 gsharp
	d'8) < e, d' >4( e'16 d									|
	< e, csharp' >8) << { csharp'4( d16 csharp | a'8) a4( g16 esharp) } \\
		{ fsharp,4. | s8 a4~\< a16\!\> r\! } >>
	esharp'8[( fsharp])~\< fsharp[( e16 csharp]\!			|
	dsharp8\p) e16[(_\cr d] csharp-.)[ e,( fsharp d']
	\times 2/3 { gsharp,)[_\markup { \italic {dim.}} e( gsharp] } \times 2/3 { b) r r }
		\times 2/3 { r e[( gsharp] } \times 2/3 { b) r r }
	\times 2/3 { r e,,[( a] } \times 2/3 { csharp) r r } \times 2/3 { r e[( a] } \times 2/3 { csharp) r r }
	\times 2/3 { r e,,[( a] } c8) \times 2/3 { r16 e[(_\cr a] } c8)
	\times 2/3 { r16 f,,[( a] } c8) \times 2/3 { r16 f[( a] } c8\p)
	
	
	%%% ALLEGRETTO III %%%
	
	a8\p[ a a] r											|
	r bflat[ bflat] r
	r g[ g] r
	r a[ a] r
	r
		\setTextCresc
		a[\< a] r
	r g[ g] r												|
	r f[ f] r
	r e[ e] r
	r f[ f]\! fsharp\f
	fsharp r r4
	b2\p~
	b8 r < e,, d' >16\sf r e\sf r
	e4(\< fsharp)~\!\>
	fsharp8[\! b16( d] csharp8-.)[ d16( b])
	csharp,4(\< d)~\!\>
	d8\p[\! d( e) e]										|
	r4 r8 gsharp16( e')
	R1*2/4
	r8 e,16[( gsharp] < e a >8-.)[ gsharp16( b])
	r4 e,4\p~
	e8( d4 e8)
	csharp8 r gsharp' r
	g[(_\cr g' f d\p])										|
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8^\markup {pizz.} csharp[ csharp'] r\fermata
}