\version "2.18.2"

theSolo =  \relative d' {
	\clef "treble"
	\key g \minor
	
	r1*3/4
	R1*3/4*10
	
	r4 r d_\markup { \dynamic p \italic {molto espress.}}^\markup {con sordino}
	\noDynamic g4.\p a8-.[ bflat-. c-.]
	d4--~ d-- d--
	d2\trill^\( \tuplet 5/4 { d32[( eflat d csharp d) } f16 eflat]^\)
	d2( d,4)
	g4. a8[( bflat c])
	d4--( d-- d--)
	c16[( bflat a8]~ a4) bflat16[( a g8])
	fsharp16[( eflat d8]~ d4) d
	g4. a8[( bflat c])
	d4-- d-- d--
	d2\trill^\( \tuplet 5/4 { d32[( eflat d csharp d) } f16 eflat]^\)
	d2( d,4)
	g4. a8[( bflat c])
	d4--~\< d-- d--\!
	eflat^\trill \grace { d16[ eflat] } f4_\cr fsharp\trill \bar "" \grace { e16[ f] } \bar "|"
	g8--\f[ bflat,( d bflat') a-- g--]
	fsharp[( a d,) g(_\markup { \italic dim. } f eflat])
	d[( f bflat,) a\p( bflat c])
	csharp4( d8)[ bflat( a g])
	csharp4( d8)[ bflat( a g])
	fsharp[( g] d) e4( fsharp8)
	g4 r r
	
	R1*3/4*5
	
	g'8\f[( eflat] bflat4.)
	c'8(
	bflat[\> g eflat) bflat( d eflat])\!
	f\p[( g] bflat,4.) eflat8(
	f[ g] bflat,)[ b( d c])
	f,4.( fsharp8 g4)
	aflat4~ \tuplet 3/2 { aflat8[ bflat c] } \tuplet 3/2 { d[ eflat f] }
	g8\f[( eflat]) bflat4. c'8(
	bflat8[ g] \tuplet 3/2 { e)[ c-- d--] } \tuplet 3/2 { eflat--[ f-- g--] }
	aflat4_\markup { \italic piu \dynamic f } g8--[ f-- eflat( d])
	f[( d) bflat( dflat) c g--]
	aflat[(\> cflat) bflat-- f-- g( bflat])\!
	eflat,[(\< e f) fsharp( g g'])\!
	aflat4\f g8--[ f-- eflat( d])
	bflat'[( g) eflat-- eflat--] eflat'4~
	eflat~ eflat8[ eflat,] eflat'4~
	eflat~ eflat8[ eflat,( eflat' d])
	csharp[( a d) a( d_\markup { \italic dim. } c])
	b[( g) c-. bflat-. a( f])
	bflat-.[ aflat-. g( bflat eflat, e])
	f[( eflat! d) c( b c]
	eflat)[ c,-.( d-. eflat-. f-. fsharp-.])
	\tuplet 3/2 { g-.\p[\< g,-. b-.] } \tuplet 3/2 { d[ g b]^(\!\> } \tuplet 3/2 { eflat![ d bflat]^)\! }
	\tuplet 3/2 { r8 aflat,-.[\< c-.] } \tuplet 3/2 { f-.[ aflat-. c-.]^(\!\> } \tuplet 3/2 { f[ eflat bflat!])\! }
	\override TupletBracket.transparent = ##t
	\tuplet 3/2 { r eflat8[( d] c[ d eflat]) a[( g aflat]) }
	\tuplet 3/2 { bflat[( g eflat] c)[ bflat g] eflat[( bflat g]) }
	\tuplet 3/2 { aflat--[_\cr bflat-- b--] c--[ d-- eflat--] f--[ g-- aflat--] }
	\tuplet 3/2 { c--[ b-- c--] c--[ d-- eflat--] f--[ g-- aflat--] }
	\tuplet 3/2 { c--[ d-- eflat--] eflat,[( fsharp g] a)[ a, a']~ }
	\tuplet 3/2 { a[ bflat( a] fsharp[ d c]) a[( fsharp a]) }
	
	\override TupletBracket.transparent = ##f
	d,8 r r4 d\p
	g4. a8[( bflat c])
	d-.[( d-.]) \tuplet 3/2 { d-.[( d-. d-.] } \tuplet 3/2 { d-.[ d-. d-.]) }
	d2\trill^\( \tuplet 5/4 { d32[( eflat d csharp d) } f16 eflat]^\)
	d2( d,4)
	g4. a8[( bflat c])
	d[( d,~ d d' d, d'])
	c16[( bflat a8]~ a4) bflat16[( a g8])
	fsharp16[( eflat d8]~ d4) d
	g4. a8[( bflat c])
	d4-- d-- d--
	d2\trill^\( \tuplet 5/4 { d32[( eflat d csharp d) } f16 eflat]^\)
	d2( d,4) g4. a8[( bflat c])
	d4 d d
	eflat^\trill \grace { d16[ eflat] } f4_\cr fsharp\trill \bar "" \grace { e16[ f] } \bar "|"
	g8--\f[ bflat,( d bflat') a-- g--]
	fsharp[( a d,) g(_\markup { \italic dim. } f eflat])
	d[( f bflat,) a\p( bflat c])
	csharp4(_\cr d8)[ bflat( a g])
	csharp4( d8)[ bflat( a g])
	bflat'\mf[( a g) bflat'\f( a g])
	fsharp16[( g) bflat,( c] csharp[ d) fsharp,( g] a[ bflat) bflat,( c]
	csharp[ d) a( bflat]^\< fsharp[ g)^\! csharp,( d] eflat[ d bflat a])
	g8[( bflat) eflat-- g-- a-- bflat--]
	
	csharp2.~\>\startTrillSpan
	csharp!\fermata \bar "" \grace { b16[(\!\stopTrillSpan csharp]) } \bar "|"
	d8 r r4 r
	
	R1*3/4*23
}
