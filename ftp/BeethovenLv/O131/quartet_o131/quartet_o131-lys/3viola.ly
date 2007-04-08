\version "2.5.21"

mIIIViola =  \relative csharp' {
	\clef "alto"
	
	r4 d-.\f csharp-. r
	R1
	r8 g-.\p[ e-. d-.] csharp4-. r
	r d'-.\f fsharp,-. r
	R1
	r2 d'8-.\p[^\markup { \musicglyph #"scripts.caesura" } gsharp,!16( a!]) b8-.[ d,-.]
	csharp2.( csharp'4)
	< fsharp, a > < fsharp a >~ < fsharp a >2~
	< fsharp a >~ < fsharp a >8 fsharp8[(_\cr b) b](
	csharp) e4.~_\markup { \dynamic rf } e8[ e](\> dsharp4
	d!8\p)\! r r gsharp,(_\cr d a'] < gsharp b >\f) r
}