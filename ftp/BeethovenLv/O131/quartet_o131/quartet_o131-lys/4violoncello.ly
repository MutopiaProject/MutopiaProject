\version "2.6.0"

mIVCello =  \relative a, {
	\clef "bass"
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8\p a[^\markup {pizz.} a a]
	r \noDynamic b\mf[ b b]
	r gsharp[ gsharp gsharp]
	r a[ a a]
	r csharp,[ csharp csharp]
	r d[ asharp' asharp]
	b[ e, a! fsharp]
	e r r4
	r8 < a e' >[ < a e' > < a e' >]
	r < b e >[ < b e > < b e >]
	r < gsharp e' >[ < gsharp e' > < gsharp e' >]
	r < a e' >[ < a e' > < a e' >]
	r < csharp, a' >[ < csharp a' > < csharp a' >]
	r d[ asharp' asharp]
	b[ e, a! fsharp]
	e r r4
	r8 e[ e e]
	r d'[ csharp gsharp]
	a[ a a a]
	r g'[ fsharp csharp]
	d[_\cr d b e]
	r csharp[\> csharp, d]
	e\p[ d e e]
	a r r
		\set Staff.midiInstrument = #"cello"
		b16(^arco gsharp!)
	e8
		\set Staff.midiInstrument = #"pizzicato strings"
		e[^\markup {pizz.} e e]
	r d'[ csharp gsharp]
	a a'[ a a]
	r g[ fsharp csharp]
	d[_\cr d b e]
	r csharp[\> csharp, d]\!
	e\p[ d e e]
	a r r
		\set Staff.midiInstrument = #"cello"
		a~^arco
	a4(\< gsharp8..\!\> a32)\!
	b8 r r4
	gsharp4(\< fsharp8..\!\> gsharp32)\!
	gsharp16( a) r8 r4												|
	
	\clef "tenor"
	csharp'4(\< e8..\!\> csharp32)\!
	d8 r r4
	r fsharp
	fsharp16[( e8) e16] e(_\cr d) d( b)
	a8\p( e'4.)~_\espressivo
	e16 fsharp( e dsharp d b gsharp f)
	e8 r r e'~
	e16[ a8( gsharp16] g e csharp bflat)
	
	\clef "bass"
	a( g e d csharp a' e csharp)
	d8 r r4
	r8 gsharp,!16( e') r8 fsharp,16( dsharp')
	r8 e,16( e') r8 e,16( e')										|
	
	r4
		\clef "tenor"
		e'8[~_\cr e16.( gsharp,32])
	gsharp16.[( a32]) b16.[( csharp32]) d16.[( e32]) fsharp16.\p[( gsharp32])
	a2~_\cr
	a16[( g32 fsharp]) e16[( d32 csharp]) csharp16[( b32 a])
		\clef "bass"
		csharp,16[( b32 a])
	a32\p[(
		\setTextCresc
		a'\< b csharp])
		\clef "tenor"
		d8~ d16.[( e32]) e8~
	e16.[( fsharp32]) fsharp8
		\clef "bass"
		fsharp,,16.[( gsharp32])\! gsharp8\>
	gsharp16\p[(\! a]) asharp[( b]) gsharp[( a]) e[( e'])
	e,[( a]) r8 r4													|
	
	\clef "tenor"
	e''4~_\cr e8..( gsharp,32)
	gsharp16.[( a32]) b16.[( csharp32]) d16.[( e32]) fsharp16.\p[( gsharp32])
	\setTextCresc
		a8(\< g)~ g16.[( fsharp32]) fsharp16.[( csharp32])
	csharp16[
		\clef "bass"
		e,32( d]) d16[( csharp32 b]) b16[( a32 g]) g16[( fsharp32 e])\!
	d16.\p[(
		\setTextCresc
		fsharp'32])\< fsharp16.[( gsharp!32]) gsharp,!4
	gsharp'16.[( a32]) a,8 a'16.[( b32])\! b,8\>
	b'32\p[(\! bsharp) bsharp( csharp]) csharp[( fsharp) e( d]) b[( e) d( csharp])
		e,[( gsharp) fsharp( e])
	a,[( csharp) b( a]) r8 r4										|
	
	%%% PIU MOSSO %%%
	
	R1*3
	
	r8 e8\pp[(\< b' asharp]\! b[\> e, d' b])\!
	e r r4 r2
	
	\clef "tenor"
	r4 a'8 r a r
		\clef "bass"
		csharp,,, r
	r4
		\clef "tenor"
		fsharp''8 r fsharp r
		\clef "bass"
		fsharp,, r
	fsharp r e r a r fsharp r
	e r
		\clef "tenor"
		e'' r e r e r
	e r r4 r2													|
	
	\clef "bass"
	r8 e,,[(\< a gsharp]\! a[\> e csharp' a])\!
	d4 r r2
	r8 e,[(\< b' asharp]\! b[\> e, d' b])\!
	e8
		\clef "tenor"
		a!\p[( a' gsharp] a[ g e esharp]
	fsharp-.)[ fsharp,( fsharp' esharp] fsharp[ e csharp e]
	dsharp-.)[ b( e d] csharp-.)[ b( csharp a])
	a[( gsharp a fsharp])
		\clef "bass"
		fsharp[( e b gsharp])
	fsharp[(_\cr e gsharp b] d[ e gsharp b]
	csharp[ d b gsharp] e[ d b gsharp])
	g[( csharp, e g] a[ csharp e g]
	a[ g e csharp] a[ g e csharp])								|
	d\f a'[( d csharp] d[ fsharp gsharp!\sf e])
	a,[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])
	a! r r4 r e'8\sf( e,)
	fsharp\p[(
		\setTextCresc
		e\< gsharp b] d[ e gsharp b]
	csharp[ d b gsharp] e[ d b gsharp])
	g[( csharp, e g] a[ csharp e g]						|
	a[ g e csharp] a[ g e csharp])\!
	d\f a'[( d csharp] d[ fsharp gsharp!\sf e])
	a,[( asharp b\sf gsharp]) bsharp[( csharp d\sf b])
	dsharp[( e fsharp\sf d]) csharp[( b e\sf e,])
	a! r r4 r a'8\sf( a,)										|
	
	%%% ANDANTE MODERATO %%%
	
	r4
		\clef "tenor"
		\noDynamic a'8.\p(_\markup { \dynamic p \italic dolce } b16 csharp8. b16 a4
	gsharp fsharp2) r4
	r4 d'8.( e16) fsharp8.( e16) e8.( d16)
	d8.( csharp16) r4 r a'8.(_\cr g16)
	g8.( fsharp16) e8.( a16) a8.( g16) e4
	r2 r4 a8.(_\cr fsharp16)
	e8.( dsharp16) d4~ d8[( csharp) csharp( b])
	b\p[( a) fsharp-. b-.] e, fsharp'4 gsharp8\trill
	a4 r r2
	d,1
	R1
	
	\clef "bass"
	a1
	R1
	d2 fsharp,
	
	\clef "tenor"
	r2 e'_\cr
	e,\p~ e8
		\clef "bass"
		csharp,4 dsharp8\trill \bar "" \grace { csharp16[ dsharp] } \bar "|"
	e4-._\cr fsharp\trill \grace { e16[ fsharp] } gsharp4-.	a~	|
	a8\sfp[( gsharp) fsharp-. e-.] dsharp-.[ d-.] r4
	a'4-._\cr b\trill \grace { a16[ b] } csharp4-. d\sfp~
	d8[( csharp) b-. a-.] gsharp-.[ g-.] r4
	fsharp4-._\cr gsharp!\trill \grace { fsharp16[ gsharp] } a4-.
		\clef "tenor"
		d'\sfp~
	d8[( csharp) b-. a-.] gsharp-.[ d'-. csharp-. b-.]
	csharp4-._\cr d\trill \grace { csharp16[ d] } e4-. fsharp\trill \bar ""
		\grace { e16[ fsharp] } \bar "|"
	fsharp8\sfp a4_\cr gsharp8 a
		\clef "bass"
		d,,8[ e e]
		e4 r r2
	fsharp,4-._\cr gsharp\trill \grace { fsharp16[ gsharp] } a4-. b\sfp~
	b8[( a) gsharp-. fsharp-.] esharp-.[ e-.] r4
	b'4-._\cr csharp\trill \grace { b16[ csharp] } d4-. e~
	e8[( d) csharp-. b-.] b-.[ a-.] r4
	gsharp4-. a\trill \grace { gsharp16[ a] } b4-.
		\clef "tenor"
		e'\sfp~
	e8[(_\cr d) csharp-. b-.] a-.[ e'-. d-. csharp-.]
	d4-.\sf \noDynamic e\trill\p_\markup { \dynamic p \italic {cresc.}}
		\grace { d16[ e] } fsharp4-. gsharp\trill \bar "" \grace { fsharp16[ gsharp] } \bar "||"
		
	\time 6/8
	\tempo 8 = 57
	\mark \markup { \bigger\bigger {Adagio.}}
		
	%%% ADAGIO %%%
	
	\clef "treble"
	gsharp'16\sfp[( b8 a16]) a8 a r a~
	a[( gsharp fsharp] gsharp) r
		\clef "bass"
		\set Staff.midiInstrument = #"pizzicato strings"
		e,,,\sf^\markup {pizz.}
	R1*6/8
	r4 r8 r4 a8\sf
	
	\clef "tenor"
	\set Staff.midiInstrument = #"cello"
	r8^arco a''16[(_\cr e csharp d] e[ fsharp gsharp a) a a]	|
	g8\p[ r g] g[ r
		\set Staff.midiInstrument = #"pizzicato strings"
		fsharp]^\markup {pizz.}
	fsharp[ fsharp, b] e,[ e' a,]
	dsharp[
		\clef "bass"
		dsharp, dsharp,]
		\set Staff.midiInstrument = #"cello"
		e[(_\cr^arco fsharp gsharp])
	a8.\p[(\< e16 csharp d!]\! e\> fsharp gsharp a b csharp)\!
	d!8[ r d] d r r
	r e16[(\< gsharp b a]\! gsharp\> fsharp e d csharp b)\!		|
	a( csharp e d csharp b a gsharp a fsharp e d)
	d( csharp e a) r8 r4 r8
	b16\p( asharp csharp fsharp) r8 r4 r8
	a,!16[ gsharp( b e] a,) r r8 r16 fsharp'[(\< csharp dsharp]\!
	b'[\> gsharp e])\! r r8 r4 r8
	e,16\p(\< fsharp gsharp a b csharp\! d!\> e fsharp gsharp a b\!
	
	\clef "treble"
	csharp'\p[ d e fsharp gsharp a] b8) \noBeam
		\clef "bass"
		e,,, r
	fsharp,2._\cr												|
	
	\clef "tenor"
	fsharp'16( gsharp asharp b csharp d e esharp fsharp g) g g
	g8.[(\< e16\!\> csharp fsharp])\!
		\clef "bass"
		d,8.[(\< b16\!\> gsharp! csharp])\!
	
	\clef "tenor"
	e'8.[(\< csharp16\!\> asharp d])\! r4 r8
	R1*3/4
	r4 r8 r r16 fsharp[(\< csharp d])\!
	fsharp4.\p~\< fsharp8[(\!\> e d])\!
	d4.\p~ d8[( csharp b])
	
	\clef "bass"
	fsharp,2._\cr												|
	
	\clef "tenor"
	fsharp'16( gsharp asharp b csharp d) e( fsharp) fsharp( g) g g
	
	\clef "bass"
	e,8.[(\< csharp16\!\> a! d])\!
		\clef "tenor"
		fsharp'8.[(\< d16 b e])\!
		
	\clef "bass"
	r16 g,,(\< fsharp)\! r r fsharp\p r f( e) r r e
	r e'[(_\cr dsharp]) d[( d]) csharp[( csharp]) c[(_\markup { \italic {dim.}} b]) b[( b]) b
	r b\p( a) r a'8 \noBeam a r
		\set Staff.midiInstrument = #"pizzicato strings"
		a,\sfp^\markup {pizz.}
		
	%%% ALLEGRETTO %%%
	
	R1*2/4*2
	
	\set Staff.midiInstrument = #"cello"
	r8 << { e'4.~^arco | e2~ | e8 } \\ { \noDynamic r8\p_\markup { \dynamic p \italic {dol.}} r
		b~ | b csharp4.~ | csharp8 } >>
		\clef "tenor"
		csharp'8[( d]) r
	r
		\clef "bass"
		fsharp,8[( gsharp]) r
	r a,[( fsharp]) b(
	e,4) r
	r8 << { e'4.~ | e2~ | e~ | e~ | e8 } \\ { r8 r a,8~ | a( gsharp4.)~ | gsharp4. b8~ |
		b( csharp4.)~ | csharp8 } >>
		\clef "tenor"
		a''4 fsharp8~
	fsharp d4 b8~
	b csharp4 b8~												|
	b
		\clef "bass"
		<< { b,4.~ } \\ { e,8\rest e\rest e~ } >>
	
\repeat volta 2 {
	<< { b'2~ | b( | a8) } \\ { e2~ | e2~_\espressivo | e8 } >> r8 r4
	r4 r8
		\clef "tenor"
		e''8~
	e[(\< fsharp\! g\> a])\!
	
	\clef "treble"
	fsharp'4.(_\cr gsharp!8
	a4. b8)
	csharp[(_\markup { \italic {dim.}} d csharp e])				|
}

\alternative {
	{ csharp\p
		\clef "bass"
		<< { b,,,4. } \\ { r8 r e,8 } >> }
	{ \clef "treble"
		csharp''''8\p
		\clef "bass"
		<< { e,,,4. } \\ { gsharp,8\rest gsharp\rest\< gsharp\! } >> }}
	
	%%% ADAGIO MNT %%%
	
	r4_\markup { \italic {sotto voce}} a-.( a-.) a-.( gsharp-. a-.) a-.( gsharp-. a-.)
	r gsharp-.( gsharp-.) gsharp-.( fsharpsharp-. gsharp-.) gsharp-.( fsharpsharp-. gsharp-.)
	r d'-.( d-.) d-.( csharp-.^> d-.) d-.( csharp-.^> d-.)		|
	r csharp-.( csharp-.) csharp-.( bsharp-.^> csharp-.) csharp-.( bsharp-.^> csharp-.)
	r < g a >-.(_\cr < g a >-.) < g a >-.( < g a >-. < g a >-.) < g a >-.( < g a >-. < g a >-.)
	< fsharp a >-.( < fsharp a >-. < fsharp a >-.) < fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)
		< fsharp a >-.( < fsharp a >-. < fsharp a >-.)\!
	gsharp!-.\p( gsharp-. gsharp-.) a-.( a-. a-.) a-. d( dsharp)
	e-.( e-. e-.) e-.( e-. e-.) e( d! b)						|
	a^\markup { \italic {non troppo marcato}} r fsharp16[(\< e fsharp e])\!\> a4\! r r r2 r4
	r4 r fsharp16[(\< e fsharp e])\!\> b'4\! r r r2 r4
	r4 r fsharp16[(\< e fsharp e])\!\> d'4\! r r r2 r4
	r r fsharp,16[(\< e fsharp e])\!\> csharp'4\! r r r2 r4
	< g a >-.(_\cr < g a >-. < g a >-.) < g a >-.( < g a >-. < g a >-.) < g a >-.( < g a >-.
		< g a >-.)
	< fsharp a >-.( < fsharp a >-. < fsharp a >-.) < fsharp a >-.(\> < fsharp a >-. < fsharp a >-.)
		< fsharp a >-.( < fsharp a >-. < fsharp a >-.)\!
	gsharp!-.\p( gsharp'-. gsharp-.) a-.( a-. a-.)
		\clef "tenor"
		a-.( d dsharp)
	dsharp( e) e \noDynamic e\p_\markup { \italic {poco cresc.} \dynamic p } e, e e( fsharp gsharp)
	
	\clef "bass"
	r2 fsharp,16\f[( e fsharp e]) b'4-. r r r2 r4				|
	r2 fsharp16\pp[( e fsharp e]) r2 fsharp16[( e fsharp e]) r2 fsharp16[( e fsharp e])
	r2 d16\f[( csharp d csharp]) g'4-. r r r2 r4
	r2 d16\pp[( csharp d csharp]) g'4-.
		\clef "tenor"
		g''4-.( g-.) g( fsharp) fsharp
	fsharp fsharp( b,) b_\cr b( csharp) csharp-.( csharp-. csharp-.)
	d-.( d-. d-.) d-.(
		\clef "bass"
		d,-. b-.) b-.(\> b-. b-.)
	d-.\p( d-. d-.) e-.( e-. e-.) e-.( e-.) fsharp,16( e fsharp e)
	e4( a) a \noDynamic a\p_\markup { \italic {poco cresc.} \dynamic p} a( b) b b( e)
	r2 fsharp,16\f( e fsharp e) b'4-. r r r2 fsharp16\pp( e fsharp e)
	r2 fsharp16( e fsharp e) r2 fsharp16( e fsharp e) r2 fsharp16( e fsharp e)
	r2 d16\f( csharp d csharp) g'4-. g-.( g-.) g-.( g-.) g16\pp( fsharp g fsharp)
	r2 g16( fsharp g fsharp) r2 g16( fsharp g fsharp) r2 g16( fsharp g fsharp)
	r2 csharp'16( b csharp b) r2 d,16(_\cr csharp d csharp) r2 d16 d d d
	r2 e16( d e d) r2 csharp'16( b csharp b) r2 b16\p b b b		|
	r2 e,16( d e d) r2 fsharp16( e fsharp e) r2 fsharp16( e fsharp e)
	r2 b'16(_\cr a b a) r2 d16( a d a) r2 b16(_\markup { \italic {dim.}} a b a)
	r2 b16(_\cr a b a) r2 d16( a d a) r2 b16(_\markup { \italic {dim.}} a b a)
	fsharp4\p r r fsharp' r r r2 r4
	e2.~ e4 r r r d'8[( csharp b a])
	gsharp4 r r e, r r r2 r4
	r2 r4 e'4~ e8[( d csharp b]) a4 r r							|
	
	\clef "treble"
	e'''2.~_\cr \times 2/3 { e8 a,( b } \times 2/3 { csharp d e }
		\override TupletBracket   #'transparent = ##t
		\times 2/3 { fsharp gsharp a b csharp d e_\markup { \italic {dim.}} d csharp b a g) }
	fsharp4_\cr r r
		\clef "bass"
		asharp,,, r r r2 r4
	a'!_\cr r r gsharp r r a_\markup { \italic {dim.}} r d,\p	|
	r e\p( gsharp b) r r r2 r4
	r \noDynamic e,\p(_\markup { \italic {più \dynamic p}} a csharp) r r r2 r4
	r e,(_\markup { \italic morendo } a c) r r r2 r4
	r f,\ppp( a c) r r r2 r4									|
	
	%%% ALLEGRETTO II %%%
	
	g8[ g\p g] r
	r g[ g] r
	r g[ g] r
	r g[ g] r
	
	\clef "tenor"
	r c[_\cr c] r
	r b[ b] r
	
	\clef "bass"
	r a[ a] r
	r gsharp[ gsharp] r											|
	
	R1*2/4*4
	
	\key a \major	
	a,64\p[( csharp e32]) r16 a,64[( csharp e32]) r16 a,64[( csharp e32]) r16 a,64[( csharp e32]) r16
	b64[( d e32]) r16 b64[( d e32]) r16 b64[( d e32]) r16 b64[( d e32]) r16
	gsharp,64[( b e32]) r16 gsharp,64[( b e32]) r16 gsharp,64[( b e32]) r16 gsharp,64[( b e32]) r16
	a,64[( csharp e32]) r16 a,64[( csharp e32]) r16 a,64[( csharp e32]) r16 a,64[( csharp e32]) r16
	csharp,64[( e a32]) r16 csharp,64[( e a32]) r16 csharp,64[( e a32]) r16 csharp,64[( e a32]) r16
	d,64[( fsharp a32]) r16 d,64[(\< a' d32]) r16 fsharp,64[( asharp csharp32]) r16
		asharp64[( csharp fsharp32])\! r16							|
	a,!64\p[( b fsharp'32]) r16 gsharp,64[(_\cr b e32]) r16 a,64[( csharp e32]) r16 d,64[( fsharp b32]) r16
	
	\override TupletBracket   #'transparent = ##f
	e,8_\markup { \italic {dim.}} \times 2/3 { r16 e[( gsharp] } \times 2/3 { b) r r } r8
	r8 \times 2/3 { r16 e,[( a] } \times 2/3 { csharp) r r } r8
	r8 \times 2/3 { r16 e,[(_\cr a] } c8) r
	r \times 2/3 { r16 f,[( a] } c8) r							|
	
	%%% ALLEGRETTO III %%%
	
	\clef "tenor"
	a''8\p[ a a] r
	r g[ g] r
	r e[ e] r
	r f[ f] r													|
	r
		\setTextCresc
		f[\< f] r
	r e[ e] r
	r d[ d] r
	r csharp[ csharp] r
	r d[ d]\! dsharp\f
	dsharp r r4
	e2\p~
	e8 r r
		\clef "bass"
		d,,16\sf r
	csharp4(\< d)~\!\>											|
	d8\p[\! d( e) e]
	
	\clef "tenor"
	e''4(\< fsharp)~\!\>
	fsharp8\p[\! fsharp16( d] csharp8-.)[ d16( b])
	
	\clef "bass"
	r8 d,[( e) e]
	R1*2/4
	r8 e,[ e e]
	R1*2/4
	e2\p
	a8 r e r													|
	a_\cr
		\clef "tenor"
		a''4~ a8\p
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r8^\markup {pizz.} a[ a] r\fermata
	
	\clef "bass"
}