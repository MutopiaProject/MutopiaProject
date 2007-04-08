\version "2.8.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {

	\time 2/2 \key d \minor
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\override TupletBracket #'transparent = ##t
	#(override-auto-beam-setting '(end * * * *) 1 4)
	#(override-auto-beam-setting '(end * * * *) 2 4)
	#(override-auto-beam-setting '(end * * * *) 3 4)
	#(override-auto-beam-setting '(end * * * *) 4 4)
	%\set Staff.midiInstrument = "harpsichord"
	}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Voices for the rectus part %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trebleRectus = \new Voice{\relative c''{

	\global

	\partial 4 r
	R1*7																		%1 to 7
	r2 r4 d
	a' a,~ \times 2/3{a8 b c b c d
	c d e} d4~ \times 2/3{d8 e f e f g											%10
	f e d} e4~ \times 2/3{e8 d c d c b}
	c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ b16*4/3 c8.*8/9 d16*4/3]
	e2 r4 cis
	d f8.*8/9 e16*4/3 d4 c'
	bes d, r b																	%15
	c e8.*8/9 d16*4/3 c4 bes'!
	a4.*10/9 g8*2/3 f8.*8/9[ e16*4/3 d8.*8/9 f16*4/3]
	bes,4 bes' g e
	cis4.*10/9 d16*2/3 e a,8.*8/9[ e'16*4/3 f8.*8/9 g16*4/3]
	a4.*10/9 g8*2/3 \times 2/3{f8 e d} e8.*8/9 bes'16*4/3						%20
	\times 2/3{a8 g f g cis, e g f e~} e8.*8/9 f16*4/3
	\times 2/3{e8 f g f d a b cis d cis d e}
	d4 f d a
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ g16*4/3 a8.*8/9 b16*4/3]
	c4 ees c g																	%25
	a8.*8/9[ c16*4/3 f8.*8/9 c16*4/3] a8.*8/9[ f16*4/3 g8.*8/9 a16*4/3]
	bes4 bes'~ \times 2/3{bes8 aes g aes g f
	g f ees} f4~ \times 2/3{f8 ees d ees d c}
	d4 f d a
	bes1~																		%30
	bes~
	bes2 r4 bes
	f f'~ \times 2/3{f8 ees d ees d c
	d c bes} c4~ \times 2/3{c8 bes a bes a g
	a bes c} bes4~ \times 2/3{bes8 c d c d ees}									%35
	d8.*8/9[ bes16*4/3 f8.*8/9 bes16*4/3] d8.*8/9[ ees16*4/3 d8.*8/9 c16*4/3]
	\times 2/3{bes8 g a bes c d} ees8.*8/9[ d16*4/3 c8.*8/9 ees16*4/3]
	\times 2/3{d8 ees f ees g ees c b a b c d
	c bes! a bes g a bes c d ees d c
	d g, bes d bes d} g8.*8/9[ fis16*4/3 g8.*8/9 a16*4/3]						%40
	bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
	g4 e g bes
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f4 d f a
	g d cis r																	%45
	r8 cis16 d e f g a bes4 r
	\times 2/3{r8 e, a g f e f e d cis d e}
	f4 r r bes,
	\times 2/3{a8 g f g a f} g16*2/3 f e4*4/3 f8*2/3
	e4 r r e'																	%50
	a, r r a
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ g16*4/3 a8.*8/9 bes16*4/3]
	e,4 r r b'
	c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ a16*4/3 bes!8.*8/9 c16*4/3]
	f,4 r r c'																	%55
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ bes16*4/3 c8.*8/9 d16*4/3]
	g,4 r r d'
	cis r r8*4/3 r16*2/3 g' f8.*8/9 e16*4/3
	bes'2\fermata r4 \times 2/3{r8 bes cis,}
	d4~ \times 2/3{d8 e f} e4\trill~ \times 2/3{e8 d e}							%60
	f4~ \times 2/3{f8 g a} g4~ \times 2/3{g8 f g}
	a1~
	\times 2/3{a8 bes c bes g d e fis g fis g a
	g f! e f e d} e4 r
	r2 r4 d																		%65
	a a'~ \times 2/3{a8 g f g f e
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	\times 2/3{d8 c bes} c4~ \times 2/3{c8 bes a bes c d}						%70
	a2.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoRectus = \new Voice{\relative c''{

	\global
	
	\set Staff.instrument=\markup{\large "Rectus"}
	
	\partial 4 a4						
	d d,~ \times 2/3{d8 e f e f g												%1
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[( e16*4/3) f8.*8/9( g16*4/3])
	\times 2/3{a8 e g f e d} cis4 bes'											%5
	a~ \times 2/3{a8 g f} g2~
	g4~ \times 2/3{g8 f e} f8.*8/9[ d'16*4/3 c8.*8/9 bes16*4/3]
	a2~ a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f4 r r f
	\times 2/3{e8 f g f e g f e d cis d e}										%10
	d4 r r f
	e c e a8.*8/9 b16*4/3
	c4 a c e
	d d, r2
	r4 g bes d																	%15
	c c, r2
	R1*2																		%--
	r2 r4 d
	a a'~ \times 2/3{a8 g f g f e												%20
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	d4 e!8.*8/9 fis16*4/3 g4 f
	ees8.*8/9[ c16*4/3 g8.*8/9 c16*4/3] ees8.*8/9[ f16*4/3 ees8.*8/9 d16*4/3]	%25
	c4 d8.*8/9 e!16*4/3 f4 ees
	d8.*8/9[ c16*4/3 bes8.*8/9 c16*4/3] d8.*8/9[ ees16*4/3 f8.*8/9 d16*4/3]
	ees4~ \times 2/3{ees8 d c d c bes c bes a
	bes bes' c d c bes} f2~
	\times 2/3{f8 g aes g f aes} g4 d											%30
	\times 2/3{ees8 d c d ees c} d4 g
	\times 2/3{f8 bes, d f d f} bes8.*8/9[ e,!16*4/3 f8.*8/9 g16*4/3]
	\times 2/3{a8 bes c bes c d} f,2~
	f1~
	f~																			%35
	f2 r4 d
	g g,~ \times 2/3{g8 a bes a bes c
	bes c d} c4~ \times 2/3{c8 d ees d ees f
	ees d c} d4~ \times 2/3{d8 c bes c bes a}
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ a16*4/3 bes8.*8/9 c16*4/3]	%40
	d4 bes d g8.*8/9 f16*4/3
	e!8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
	f4 a, c f8.*8/9 e16*4/3
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ e16*4/3 cis8.*8/9 d16*4/3]
	e2 r4 bes'																	%45
	a r r8*4/3 r16*2/3 f' \times 2/3{e8 f g}
	cis,4 r r e,
	a, a'~ \times 2/3{a8 g f g f e
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}										%50
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	d4 bes' g d
	g8.*8/9[ e16*4/3 b8.*8/9 e16*4/3] g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]
	e4 c' a e
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]		%55
	f2 r4 a
	bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
	g4 r r8*4/3 r16*2/3 e f8.*8/9 g16*4/3
	cis,2\fermata r4 e
	\times 2/3{f8 g a bes g a b a b cis b cis									%60
	d f, g a g f e g a bes a g
	f d f a f a d cis b cis d e}
	d1~
	d4~ \times 2/3{d8 cis b} cis4 r
	\times 2/3{r8d a f a f d f a d cis b										%65
	cis a e cis d e f e d} e8.*8/9 cis'!16*4/3
	d4~ \times 2/3{d8 cis b cis d e f e d}
	e8.*8/9 g,16*4/3 \times 2/3{f8 e d} bes'2\trill
	a4 r r8*4/3 r16*2/3 bes a8.*8/9 g16*4/3
	\times 2/3{f8 e d} a'2 \times 2/3{g8 a bes}									%70
	fis2.\fermata

	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassRectus = \new Voice{\relative c{

	\global

	\partial 4 r4
	
	R1*3																		%1 to 3
	r2 r4 d
	a a'~ \times 2/3{a8 g f g f e												%5
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	\times 2/3{d8 cis b cis d e} f4 gis,
	a r r a'~																	%10
	a \times 2/3{gis8 a fis} gis2\trill
	a1~
	a8.*8/9[ e16*4/3 c8.*8/9 e16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]
	g8.*8/9[ d16*4/3 bes8.*8/9 d16*4/3] g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]		%15
	e8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
	f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3] d8.*8/9[ e16*4/3 f8.*8/9 d16*4/3]
	g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3] e8.*8/9[ f16*4/3 g8.*8/9 e16*4/3]
	a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3] f8.*8/9[ e16*4/3 d8.*8/9 e16*4/3]
	f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3] a4 cis,									%20
	d bes' r gis
	a r r a
	d, r r d
	g r r d
	c r r c																		%25
	f r r c
	g' r r2
	r r4 f
	bes bes,~ \times 2/3{bes8 c d c d ees
	d ees f} ees4~ \times 2/3{ees8 f g f g aes									%30
	g f ees} f4~ \times 2/3{f8 ees d ees d c}
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e!16*4/3]
	f4 d a8.*8/9[ bes16*4/3 c8.*8/9 a16*4/3]
	bes4~ \times 2/3{bes8 a g a bes c d c bes
	c d ees d ees c d c bes a bes c}											%35
	bes4 d f bes,
	ees r c r
	g'1~
	g~
	g~																			%40
	g2 r4 g
	c2 r4 g
	f2 r4 f
	bes2 r4 f
	e8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] e8.*8/9[ f16*4/3 e8.*8/9 d16*4/3]		%45
	cis8[ e g e] cis8.*8/9[ d16*4/3 cis8.*8/9 b16*4/3]
	a8.*8/9[ cis16*4/3 e8.*8/9 cis16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	\times 2/3{f8 a d f e d} cis4.*10/9\trill b16*2/3 cis
	d4 bes'! r gis
	a8.*8/9 g!16*4/3 \times 2/3{f8 g a} bes8.*8/9 d,16*4/3 \times 2/3{cis8 d e}	%50
	d4 f a d,
	g r r g
	g, g' b e,
	a r r a
	a, a' c f,																	%55
	bes d bes fis
	g bes g d
	e8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] e8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
	g,2\fermata r4 g'
	\times 2/3{f8 e d} g4~ \times 2/3{g8 f e} a4								%60
	d, r r g
	d' d,~ \times 2/3{d8 e f e f g
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3]			%65
	a1~
	a~
	a4 bes g cis,
	\times 2/3{d8 a d f d f} a4 a,
	d~ \times 2/3{d8 fis g a bes c} d8.*8/9 d,16*4/3							%70
	d2.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Voices for the inversus part %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trebleInversus = \new Voice{\relative c''{

	\global
	
	\partial 4 d4
	
	a a'~ \times 2/3{a8 g f g f e												%1
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	\times 2/3{d8 g e f g a} bes4 cis,											%5
	d4~ \times 2/3{d8 e f} e2~
	e4~ \times 2/3{e8 f g} f8.*8/9[ a,16*4/3 b8.*8/9 cis16*4/3]
	d2~ d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
	f4 r r fis
	\times 2/3{g8 fis e fis g e fis g a bes a g}								%10
	a4 r r fis 
	g bes g d8.*8/9 c16*4/3
	bes4 d bes g 
	a a' r2
	r4 e c a																	%15
	bes bes' r2
	R1*2																		%--
	r2 r4 a 
	d d,~ \times 2/3{d8 e f e f g												%20
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 fis8.*8/9 gis16*4/3]
	a4 g!8.*8/9 f!16*4/3 e4 fis
	g8.*8/9[ b16*4/3 e8.*8/9 b16*4/3] g8.*8/9[ fis16*4/3 g8.*8/9 a16*4/3]		%25
	b4 a8.*8/9 g16*4/3 fis4 gis
	a8.*8/9[ b16*4/3 c8.*8/9 bes16*4/3] a8.*8/9[ g16*4/3 f8.*8/9 a16*4/3]
	g4~ \times 2/3{g8 a bes a bes c bes c d
	c c, bes a bes c} f2~
	\times 2/3{f8 e d e f d} e4 a												%30
	\times 2/3{g8 a bes a g bes} a4 e
	\times 2/3{f8 c' a f a f} c8.*8/9[ g'16*4/3 f8.*8/9 ees16*4/3]
	\times 2/3{d8 c bes c bes a} f'2~
	f1~
	f~																			%35
	f2 r4 a
	e e'~ \times 2/3{e8 d c d c b
	c b a} b4~ \times 2/3{b8 a gis a gis fis
	gis a b} a4~ \times 2/3{a8 b c b c d}
	c8.*8/9[ a16*4/3 e8.*8/9 a16*4/3] c8.*8/9[ d16*4/3 c8.*8/9 b16*4/3]			%40
	a4 c a e8.*8/9 f16*4/3
	g8.*8/9[ e16*4/3 b8.*8/9 e16*4/3] g8.*8/9[ bes!16*4/3 a8.*8/9 g16*4/3]
	f4 d' bes f8.*8/9 g16*4/3
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ g16*4/3 bes8.*8/9 a16*4/3]
	g2 r4 cis,																	%45
	d r r8*4/3 r16*2/3 f, \times 2/3{g8 f e}
	bes'4 r r g'
	d' d,~ \times 2/3{d8 e f e f g
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}										%50
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 fis8.*8/9 gis16*4/3]
	a4 c, e a
	e8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]
	g4 bes, d g
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]		%55
	f2 r4 d
	cis8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] cis8.*8/9[ b16*4/3 cis8.*8/9 d16*4/3]
	e4 r r8*4/3 r16*2/3 g f8.*8/9 e16*4/3
	bes'2\fermata r4 g
	\times 2/3{f8 e d cis e d c d c bes c bes									%60
	a f' e d e f g e d cis d e
	f a f d f d a bes c bes a g}
	a1~
	\tieDown a4~ \times 2/3{a8 bes c} bes4 r \tieNeutral
	\times 2/3{r8 a d f d f a f d a bes c										%65
	bes d g bes a g fis g a} g8.*8/9 bes,16*4/3
	a4~ \times 2/3{a8 bes c bes a g fis g a}
	g8.*8/9 e'16*4/3 \times 2/3{f8 g a} cis,2\trill
	d4 r r8*4/3 r16*2/3 cis d8.*8/9 e16*4/3
	\times 2/3{fis8 g a} d,2 \times 2/3{e8 d cis}								%70
	fis2.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoInversus = \new Voice{\relative c''{

	\global
	
	\set Staff.instrument=\markup{\large "Inversus"}

	\partial 4 r4
	
	R1*3																		%1 to 3
	r2 r4 a
	d d,~ \times 2/3{d8 e f e f g												%5
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3]
	\times 2/3{a8 bes c bes a g} fis4 ees'
	d r r d,~																	%10
	d \times 2/3{ees8 d f} ees2
	d1~
	d8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
	f8.*8/9[ c16*4/3 a8.*8/9 c16*4/3] f8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]
	e8.*8/9[ a16*4/3 c8.*8/9 a16*4/3] e8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]		%15
	g8.*8/9[ d16*4/3 bes8.*8/9 d16*4/3] g8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3] a8.*8/9[ g16*4/3 f8.*8/9 a16*4/3]
	e8.*8/9[ d16*4/3 e8.*8/9 f16*4/3] g8.*8/9[ f16*4/3 e8.*8/9 g16*4/3]
	d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3] f8.*8/9[ g16*4/3 a8.*8/9 g16*4/3]
	f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3] d4 bes'									%20
	a cis, r ees
	d r r d
	a' r r a
	e r r a
	b r r b																		%25
	fis r r b
	e, r r2
	r r4 f
	c c'~ \times 2/3{c8 bes a bes a g
	a g f} g4~ \times 2/3{g8 f e f e d											%30
	e f g} f4~ \times 2/3{f8 g a g a bes}
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f4 a d8.*8/9[ c16*4/3 bes8.*8/9 d16*4/3]
	c4~ \times 2/3{c8 d ees d c bes a bes c
	bes a g a g bes a bes c d c bes}											%35
	c4 a f c'
	g r b r
	e,1~
	e~
	e~																			%40
	e2 r4 e
	b2 r4 e
	f2 r4 f
	c2 r4 f
	g8.*8/9[ e16*4/3 cis8.*8/9 e16*4/3] g8.*8/9[ f16*4/3 g8.*8/9 a16*4/3]		%45
	bes8[ g e g] bes8.*8/9[ a16*4/3 b8.*8/9 cis16*4/3]
	d8.*8/9[ bes!16*4/3 g8.*8/9 bes16*4/3] d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
	\times 2/3{f8 d a f g a} bes2
	a4 cis, r ees
	d8.*8/9 e!16*4/3 \times 2/3{f8 e d} cis8.*8/9 a'16*4/3 \times 2/3{bes8 a g}	%50
	a4 f d a'
	e r r e
	e' e, c g'
	d r r d
	d' d, bes f'																%55
	c a c f
	e cis e a
	g8.*8/9[ e16*4/3 cis8.*8/9 e16*4/3] g8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	e'2\fermata r4 e,
	\times 2/3{f8 g a} e4~ \times 2/3{e8 fis g} d4								%60
	a' r r e
	a, a'~ \times 2/3{a8 g f g f e
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]			%65
	d1~
	d~
	d4 cis e bes'
	\times 2/3{a8 d a f a f} d4 d'
	a~ \times 2/3{a8 fis e d c bes} a8.*8/9 a'16*4/3							%70
	a2.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassInversus = \new Voice{\relative c'{

	\global

	\partial 4 r4
	
	R1*7																		%1 to 7
	r2 r4 a
	d, d'~ \times 2/3{d8 c bes c bes a
	bes a g} a4~ \times 2/3{a8 g fis g fis e									%10
	fis g a} g4~ \times 2/3{g8 a bes a bes c}
	bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
	g2 r4 bes
	a f8.*8/9 g16*4/3 a4 b,
	c a' r c																	%15
	bes g8.*8/9 a16*4/3 bes4 cis,
	d4. e8 f8.*8/9[ g16*4/3 a8.*8/9 f16*4/3]
	c'4 c, e g
	bes4.*10/9 a16*2/3 g d'8.*8/9[ g,16*4/3 f8.*8/9 e16*4/3]
	d4.*10/9 e8*2/3 \times 2/3{f8 g a} g8.*8/9 cis,16*4/3						%20
	\times 2/3{d8 e f e bes' g e fis g~} g8.*8/9 fis16*4/3
	\times 2/3{g8 f! e f a d c bes a bes a g}
	a4 f a d
	c8.*8/9[ a16*4/3 e8.*8/9 a16*4/3] c8.*8/9[ e16*4/3 d8.*8/9 c16*4/3]
	b4 g b e																	%25
	d8.*8/9[ b16*4/3 fis8.*8/9 b16*4/3] d8.*8/9[ f!16*4/3 e8.*8/9 d16*4/3]
	c4 c,~ \times 2/3{c8 d e d e f
	e f g} f4~ \times 2/3{f8 g a g a bes}
	a4 f a d
	c1~																			%30
	c~
	c2 r4 c
	f f,~ \times 2/3{f8 g a g a bes
	a bes c} bes4~ \times 2/3{bes8 c d c d ees
	d c bes} c4~ \times 2/3{c8 bes a bes a g}									%35
	a8.*8/9[ c16*4/3 f8.*8/9 c16*4/3] a8.*8/9[ g16*4/3 a8.*8/9 b16*4/3]
	\times 2/3{c8 e d c b a} gis8.*8/9[ a16*4/3 b8.*8/9 gis16*4/3]
	\times 2/3{a8 gis fis gis e gis b c d c b a
	b c d c e d c b a gis a b
	a e' c a c a} e8.*8/9[ f16*4/3 e8.*8/9 d16*4/3]								%40
	c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ b16*4/3 c8.*8/9 d16*4/3]
	e4 g e cis
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
	f4 a f d
	e a bes r																	%45
	r8 bes16 a g f e d cis4 r
	\times 2/3{r8 g' d e f g f g a bes a g}
	f4 r r \clef tenor cis'
	\times 2/3{d8 e f e d f} e16*2/3 fis g4*4/3 fis8*2/3
	g4 r r \clef bass g,														%50
	d' r r d
	c8.*8/9[ a16*4/3 e8.*8/9 a16*4/3] c8.*8/9[ e16*4/3 d8.*8/9 c16*4/3]
	g'4 r r c,
	bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ d16*4/3 c8.*8/9 bes16*4/3]
	f'4 r r bes,																%55
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
	e'4 r r a,
	bes r r8*4/3 r16*2/3 e, f8.*8/9 g16*4/3
	cis,2\fermata r4 \times 2/3{r8 cis bes'}
	a4~ \times 2/3{a8 g fis} g4~ \times 2/3{g8 a g}								%60
	f!4~ \times 2/3{f8 e d} e4~ \times 2/3{e8 f e}
	d1~
	\times 2/3{d8 cis b cis e a g f e f e d
	e f g fis g a} g4 r
	r2 r4 a																		%65
	d d,~ \times 2/3{d8 e fis e fis g
	fis g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 fis8.*8/9 g16*4/3]
	\times 2/3{a8 bes c} bes4~ \times 2/3{bes8 c d cis b a}						%70
	d2.\fermata
	
	\bar "|."

}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% Music parts definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

music = {

	\tag #'rectus \new StaffGroup <<
							\new Staff {\clef treble \trebleRectus}
							\new Staff {\clef soprano \sopranoRectus}
							\new Staff {\clef bass \bassRectus}
					>>

	\tag #'inversus \new StaffGroup <<
							\new Staff {\clef treble \trebleInversus}
							\new Staff {\clef soprano \sopranoInversus}
							\new Staff {\clef bass \bassInversus}
					>>

}
		