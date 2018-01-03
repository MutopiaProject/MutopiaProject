\version "2.18.2"

theCadenza =  \relative d'' {
	\cadenzaOn
	\override TupletBracket.transparent = ##f
	
	< a e' csharp' a' >8\ff_\markup { \italic legato } r8 gsharp''4( a) << { csharp,4 } \\ { a,4^( } >>
	<< { r s r } \\ { bflat < g,! e' >^)( gsharp) } >> < gsharp d' b' e >8 r
	<< {a4( csharp32[ e a csharp e a csharp e]) gsharp4( a } \\ { } >>
	<< { csharp,4) r s r } \\ { a,4^( bflat < g,! e' >^)( gsharp) } >>
	< gsharp d' b' e >8 r \bar "" \break a4 csharp32[( e a csharp e a e'])
	<< { e,2 a, } \\ { bsharp4( csharp) < bsharp, dsharp >( < csharp e >) } >>
	gsharp!4( \stemUp a8)[ \stemNeutral\stemDown gsharp'''!]( \stemNeutral a)[ < bsharp,,! e >]( < csharp e >)[ < bsharp,! dsharp! a' >](
	< csharp e a >)[ gsharp!]( \stemUp a)[ \stemNeutral\stemDown gsharp'''!]( \stemNeutral a)[ < bsharp,,! e >]( < csharp e >)[ < bsharp,! dsharp! a' >](
	< csharp e a >)[ gsharp!] \bar ""\break a32[( csharp e a csharp e]) a[( e csharp a e csharp]) a32[( csharp e a csharp e a])
	csharp[( a e csharp a e csharp]) a[( csharp e a csharp e a csharp e a]) csharp8--[ \ottava #1 e8] \bar ""\break
	< a,, d\harmonic >2\fermata \ottava #0 s2 g,,32[( a csharp e a csharp e] a[ e csharp a e csharp]) g[( csharp e a csharp e a] csharp[ a e csharp a e csharp a])
	g[( a csharp e a csharp e a csharp e a]) csharp8[ e] \bar ""\break
	< a,, d\harmonic >2\fermata s2
	< g,, a' e' csharp' >8 r < g a' e' csharp' >4 < g' a >8[( csharp']) \grace { csharp16[ d] } csharp16[( b csharp e])
	< fsharp,, a >8 d32[( fsharp a d fsharp a d]) fsharp8-.[ a-.]
	d2\fermata s2
	< a,, fsharp' dsharp' >8 r < a fsharp' dsharp' >4\downbow < a, fsharp' a >8[( dsharp'' ]) \grace { dsharp16[ e] } dsharp16[( csharp dsharp fsharp])
	gsharp,,,8[( b32 e gsharp b e gsharp b e]) gsharp!8[ b] \bar ""\break
	\ottava #1 e2\fermata s2
	e8-0[ \ottava #0 < gsharp,,,, e' >( < a f' > < asharp fsharp' >]) e'''-0[ < bflat,, g' >( < b gsharp' > < csharp a' >])
	e'-0 < d, b' >8[( < dsharp bsharp' > < e csharp' >]) < f' d' >32--[ < e csharp' >( < dsharp bsharp' > < d b' > < csharp asharp' > < c a' > < b gsharp' > < asharp fsharpsharp' > < a fsharp' > < gsharp esharp' > < g e' > < fsharp dsharp' >] < f d' >8)
	r s8.. \bar "" \break
	\ottava #1 e'''8 \ottava #0 < b,,, gsharp' >[( < c a' > < csharp asharp' >]) e''-0 < d,, b' >[( < dsharp bsharp' > < e csharp' >]) \bar ""
	e'-0 < e, csharp' >[( < fsharp d'! > < fsharpsharp dsharp' >]) < gsharp' e' >32--[ < fsharpsharp dsharp' >( < fsharp d' > < esharp csharp' > < e c' > < dsharp b' > < csharpsharp asharp' > < csharp a' > < bsharp gsharp' > < b g' > < asharp fsharp' > < gsharpsharp esharp' >] < gsharp e' >8)
	r s4 \bar ""
	\ottava #1 e'''!8 \ottava #0 < e,,, d'! e >\downbow[ < fsharp! d' e >\downbow < g! d' e >\downbow] \bar ""\break < gsharp d' e >\downbow[ < a d e >\downbow < bflat d e >\downbow < b d e >\downbow] \bar ""
	< c d e >[ < csharp d e > < d e > < dsharp e >] << { e8\downbow[ e\downbow e\downbow] e\upbow[ } \\ { e8[ e e] e[ } >>
	<< { e8\downbow e\upbow] } \\ { e8 e]_\markup { \italic dim. } } >>
	
	< e e >1^\trillsharp\fermata
	< e e >1^\trillnatural \grace { dsharp16[ e\p] }
	\tempo "Quasi andante"
	<< { f4( e!) } \\ { s4 < bflat, g' dflat' >8 r } >> f''16[( e dsharp f] \tuplet 3/2 { e)[ c--( csharp--] } \tuplet 3/2 { d--[ dsharp-- e--]) } \bar ""\break
	<< { g4( f!) } \\ { s4 < a,, f' >8 r } >> g''!16[( f! e g] \tuplet 3/2 { f)[ c( dflat-.] } d!32-.[ eflat-. e-. f-.])
	<< { g4(^\markup { \italic {cresc. e accelerando}} fsharp) } \\ { s4 < c, a' >8 r } >> a''16[( g fsharp a]) << { g4 } \\ { < b,, g' >8 r } >>
	<< { a''4( gsharp) } \\ { s4 < d, b' >8 r8 } >> \stemUp b''16[( a gsharp b] a8)[ < c,,! e a >\downbow] \stemNeutral \bar ""\break
	b''16\upbow[( a gsharp! b] a8)[ < csharp,, e a >] b''16[( a gsharp b] a8)[ < d,, fsharp a >-.]
	a''-.[ < dsharp,, fsharp a >-.] a''-.[ < e, g! a >-.] a'-.[ < f, a >-.] \tuplet 3/2 { a'-.[ < fsharp, a >-. a'-.] }
	\tuplet 3/2 { < g,! a >-.[ a'-. < gsharp, a >-.] } \tuplet 3/2 { a'-.[ a,-. a'-.] } \tuplet 3/2 { a,-.[ a'( a,]) } < g, e' csharp' bflat' >8.\ff[( bflat'''16])
	bflat4~ bflat8[ a-- g--] \bar ""\break f--[^\markup { "" \raise #2.0 \italic {meno mosso} } e-- d--]
	csharp!--[( bflat-- a--]) g[( f e]) d[_( csharp! \bar ""
	bflat!] a32[\( g f e d c bflat a]_)\) < gsharp f'! d' b' >8.[( b'''16]) b4~
	b8[ a-- gsharp--] f--[ e-- d--] b--[( a--
	gsharp--]) f![( e d]) b![( a gsharp] \bar ""\break
	f!32[ e eflat d csharp c b bflat]) \tuplet 3/2 { a4( bflat a) }
	\tuplet 3/2 { a'4( bflat! a) } \tuplet 3/2 { a,4( bflat a) }
	\tuplet 3/2 { a'4( bflat a) } \tuplet 3/2 { a,8[( bflat! a]) } \tuplet 3/2 { a'8[( bflat! a]) }
	\tuplet 3/2 { a,8[( bflat a]) } \tuplet 3/2 { a'8[( bflat! a]) } \tuplet 3/2 { a,16[( bflat a]) } \tuplet 3/2 { a'16[( bflat a]) } \bar "" \break \tuplet 3/2 { a'16[( bflat a]) } \tuplet 3/2 { a,16[( bflat! a]) }
	\tuplet 3/2 { a'[( bflat! a) } \tuplet 3/2 { a'( bflat a]) } \tuplet 3/2 { a,( bflat! a) } \tuplet 3/2 { a,( bflat! a]) } \tuplet 3/2 { a,[( bflat! a) } \tuplet 3/2 { a'( bflat! a]) } \tuplet 3/2 { a'( bflat! a) } \tuplet 3/2 { a,( bflat! a]) }
	\tuplet 3/2 { a'[( bflat! a) } \tuplet 3/2 { a'( bflat! a]) } \bar "" \break \tuplet 3/2 { a,[( bflat! a)] } \tuplet 3/2 { a,[( bflat! a]) } \tuplet 3/2 { a'[(\( bflat a]) } \tuplet 3/2 { a,[( bflat a])\) } \tuplet 3/2 { a'[(\( bflat a]) } \tuplet 3/2 { a,[( bflat a])\) }
	\tuplet 3/2 { a'[(\( bflat a]) } \tuplet 3/2 { a,[( bflat a])\) } \tuplet 3/2 { a'[(\( bflat a]) } \tuplet 3/2 { a,[( bflat a])\) }
	a'2^\trillsharp\fermata
	a2^\trillnatural\fermata
	
	\cadenzaOff
	\bar "||" \break
}


 
