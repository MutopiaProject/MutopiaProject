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
% Rectus part, clavier one and two %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OneRightRectus = \new Voice{\relative c''{

	\global

	\partial 4 r4

	R1*4												%1 to 4
	r4 a e' e,											%5
	r8*4/3 a'8*2/3[ cis,8.*8/9 d16*4/3] g,4 e'
	r8*4/3 cis8*2/3[ d8.*8/9 bes'16*4/3] \times 2/3{a8 g f} g8.*8/9 cis,!16*4/3
	d4 d, r d'
	a' a,~ \times 2/3{a8 b c b c d
	c d e} d4~ \times 2/3{d8 e f e f g					%10
	f e d} e4~ \times 2/3{e8 d c d c b}
	c8[ e a e] c[ b c d]
	e2 r4 cis
	d f8 e d4 c'!
	bes d, r b											%15
	c e8 d c4 bes'!
	a4. g8 f[ e d f]
	bes,4 bes' g e
	cis4. d16 e a,8[ e' f g]
	a4. g8 \times 2/3{f e d} e8.*8/9 bes'16*4/3			%20
	a4 \times 2/3{g8 a f g f e~} e8.*8/9 f16*4/3
	\times 2/3{e8 f g f d a b cis d cis d e}
	d4 f d a
	bes8[ d g d] bes[ g a b]
	c4 ees c g											%25
	a8[ c f c] a[ f g a]
	bes4 bes'~ \times 2/3{bes8 aes g aes g f
	g f ees} f4~ \times 2/3{f8 ees d ees d c}
	d4 f d a
	bes1~												%30
	bes~
	bes2 r4 bes
	f f'~ \times 2/3{f8 ees d ees d c
	d c bes} c4~ \times 2/3{c8 bes a bes a g
	a bes c} bes4~ \times 2/3{bes8 c d c d ees}			%35
	d8[ bes f bes] d[ ees d c]
	\times 2/3{bes g a bes c d} ees8.*8/9[ d16*4/3 c8.*8/9 ees16*4/3]
	\times 2/3{d8 ees f ees g ees c b a b c d
	c bes! a bes g a bes c d ees d c
	d g, bes d bes d} g8[ fis g a]						%40
	bes[ g d g] bes[ c bes a]
	g4 e! g bes
	a8[ f c f] a[ bes a g]
	f4 d f a
	g e cis r											%45
	r8 cis16[ d e f g a] bes4 r
	\times 2/3{r8 e, a g f e f e d cis d e}
	f4 r r bes,
	a \times 2/3{g8 a f g f e~} e8.*8/9 f16*4/3
	e4 r r e'											%50
	a, r r a
	bes8[ d g d] bes[ g a b]
	e,4 r r b'
	c8[ e a e] c[ a bes! c]
	f,4 r r c'											%55
	d8[ f bes f] d[ bes c d]
	g,4 r r d'
	cis r r8 g'[ f e]
	bes'2 r4 \times 2/3{r8 bes cis,}
	d4~ \times 2/3{d8 e f} e4\trill~ \times 2/3{e8 d e}	%60
	f4~ \times 2/3{f8 g a} g4\prall~ \times 2/3{g8 f g}
	a1~
	\times 2/3{a8 bes c bes g d e fis g fis g a
	g f! e f e d} e4 r
	r2 r4 d												%65
	a a'~ \times 2/3{a8 g f g f e
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8[ g f e]
	\times 2/3{d8 c bes} c4~ \times 2/3{c8 bes a bes c d}	%70
	a4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OneLeftRectus = \new Voice{\relative c{

	\global
	
	\partial 4 r4						

	R1*3													%1 to 3
	r2 r4 d
	a a'~ \times 2/3{a8 g f g f e							%5
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8[ d a d] f[ g f e]
	\times 2/3{d8 cis b cis d e} f4 gis,
	a r r a'~												%10
	a \times 2/3{gis8 a fis} gis2\trill
	a1~
	a8[ e c e] a[ bes! a g]
	f[ a d a] f[ d e fis]
	g[ d bes d] g[ a g f!]									%15
	e[ g c g] e[ c d e]
	f[ g f e] d[ e f d]
	g[ a g f] e[ f g e]
	a[ bes a g] f[ e d e]
	f[ e f g] a4 cis,										%20
	d bes'! r gis
	a r r a
	d, r r d
	g r r d
	c r r c													%25
	f r r c
	g' r r2
	r2 r4 f 
	bes bes,~ \times 2/3{bes8 c d c d ees
	d ees f} ees4~ \times 2/3{ees8 f g f g aes				%30
	g f ees} f4~ \times 2/3{f8 ees d ees d c}
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8[ c d e!]
	f4 d a8.*8/9[ bes16*4/3 c8.*8/9 a16*4/3]
	bes4~ \times 2/3{bes8 a g a bes c d c bes
	c d ees d ees c d c bes a bes c}						%35
	bes4 d f bes,
	ees r c r
	g'1~
	g~
	g~														%40
	g2 r4 g
	c2 r4 g
	f2 r4 f
	bes2 r4 f
	e8[ g bes g] e[ f e d]									%45
	cis[ e g e] cis[ d cis b]
	a8.*8/9[ cis16*4/3 e8.*8/9 cis16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	\times 2/3{f8 a d f e d} cis2\prallmordent
	d4 bes'! r gis
	a8.*8/9 g!16*4/3 \times 2/3{f8 g a} bes8.*8/9 d,16*4/3 \times 2/3{cis8 d e}	%50
	d4 f a d,
	g r r g
	g, g' b e,
	a r r a
	a, a' c f,												%55
	bes d bes fis
	g bes g d
	e8[ g bes g] e[ cis d e]
	g,2 r4 g'
	\times 2/3{f8 e d} g4~ \times 2/3{g8 f e} a4			%60
	d, r r g
	d' d,~ \times 2/3{d8 e f e f g
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3]	%65
	a1~\prall
	a~
	a4 bes g cis,
	\times 2/3{d8 a d f e f} a4 a,
	d~ \times 2/3{d8 fis g a bes c} d8.*8/9 d,16*4/3		%70
	d4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TwoRightRectus = \new Voice{\relative c''{

	\global

	\set Staff.instrument=\markup{\hspace #0 \raise #10.0 \large Rectus}
	
	\partial 4 a4

	d d,~ \times 2/3{d8 e f e f g							%1
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8[ a d a] f[ e f g]
	\times 2/3{a e g f e d} cis4 bes'						%5
	a~ \times 2/3{a8 g f} g2~
	g4~ \times 2/3{g8 f e} f8.*8/9[ d'16*4/3 c8.*8/9 bes16*4/3]
	a2~ a8 bes a g
	f4 r r f
	e \times 2/3{f8 e g f e d cis d e}						%10
	d4 r r f
	e c e a8 b
	c4 a c e
	d d, r2 
	r4 g bes d 												%15
	c c, r2 									
	r4 a' a'2~
	a4 d, g2~
	g4 f8 e d cis d4~
	d8[ cis d e] cis4 r										%20
	r g8 a bes!4 \times 2/3{b8 cis d}
	a4 \times 2/3{a'8 f d} g8.*8/9 bes16*4/3 a8.*8/9 cis,16*4/3
	d4 a' a, d
	r c16 bes a8 bes4 d
	r g g, c												%25
	r bes16 a g8 a4 c
	r d8 ees f4 bes,~
	\times 2/3{bes8 a g a bes c} bes8.*8/9 f'16*4/3 a,8.*8/9 ees'16*4/3
	\times 2/3{d8 bes c d c bes} f2~
	f4 \times 2/3{g8 f aes} g4 d							%30
	ees \times 2/3{d8 ees c} d4 g
	\times 2/3{f8 bes, d f d f} bes8[ e,! f g]
	\times 2/3{a8 bes c bes c d} f,2\prall~
	f1~
	f~														%35
	\times 2/3{f8 bes f d f d} \stemUp bes[ \stemDown c'' bes a] \stemNeutral
	g4~ \times 2/3{g8 a fis} g8.*8/9 g,16*4/3 ees'8.*8/9 fis,16*4/3
	g4 \times 2/3{r8 c' g ees d c} f8.*8/9 b,16*4/3
	c4 \times 2/3{r8 bes! c} d8.*8/9 g,16*4/3 fis8.*8/9 ees'16*4/3
	\times 2/3{d8 g d bes d bes} g[ ees' d c]				%40
	bes d g4 r bes~
	bes g c8[ e, f g]
	c, a f'4 r a~
	a f bes r	
	\times 2/3{r8 cis, e g e g} bes4 bes,					%45
	\appoggiatura bes16 a4 r \times 2/3{r8 g' f e f g}
	cis,2 r4 e,
	a, a'~ \times 2/3{a8 g f g f e
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}					%50
	f8[ d a d] f[ g f e]
	d4 bes' g d
	g8[ e b e] g[ a g f]
	e4 c' a e
	a8[ f c f] a[ bes a g]									%55
	f2 r4 a
	bes8[ g d g] bes[ c bes a]
	g4 r4 r8 e[ f g]
	cis,2\prall r4 e
	\times 2/3{f8 g a bes g a b a b cis b cis				%60
	d f, g a g f e g a bes a g
	f d f a f a d cis b cis d e}
	d1\prall~
	d4~ \times 2/3{d8 cis b} cis4 r
	\times 2/3{r8 d a f a f d f a d cis b					%65
	cis a e cis d e f e d} e8.*8/9 cis'16*4/3
	d4~ \times 2/3{d8 cis b cis d e f e d}
	e8.*8/9 g,16*4/3 \times 2/3{f8 e d} bes'2\prall
	a4 r r8 bes[ a g]
	\times 2/3{f8 e d} a'4~ a \times 2/3{g8 a bes}			%70 
	fis4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TwoLeftRectus = \new Voice{\relative c{

	\global
	
	\partial 4 r4						

	r f bes cis,											%1
	d bes' e, fis
	g~ \times 2/3{g8 f! e} f4 a
	d, f a d~
	d8.*8/9 cis16*4/3 \times 2/3{d8 cis b} a4 cis			%5
	d8.*8/9[ c!16*4/3 bes!8.*8/9 a16*4/3] bes8.*8/9 a16*4/3 \times 2/3{bes8 a g}
	e'4 \times 2/3{a,8 b cis} d4 r
	\times 2/3{r8 d a f a f} d4 a'
	\times 2/3{d8 e f e d cis} d4~ \times 2/3{d8 c b}
	c4 a a, r												%10
	r \times 2/3{b'8 c a} b4 r
	\times 2/3{r8 a, c e c e} a8[ gis16 fis e d c b]
	a8[ c e a] <<{a,[ g' f e]}\new Voice{\stemDown a,4}>>
	<<{\stemUp f'4 a}\new Voice{\stemDown d,2}>> \stemNeutral r8 c[ bes a]
	g[ bes d g] <<{g,[ f' e d]}\new Voice{\stemDown g,4}>>	%15
	<<{\stemUp e' g}\new Voice{\stemDown c,2}>> \stemNeutral r8 bes[ a g]
	f4 f' r d
	d'2 \clef treble r4 bes'8 g 
	e4 r r d
	a a'~ \times 2/3{a8 g f g f e							%20
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f[ d a d] f[ g f e]
	d4 e8 fis g4 f
	ees8[ c a c] ees[ f ees d]								%25
	c4 d8 ees f4 ees
	d8[ c bes c] d8.*8/9[ ees16*4/3 f8.*8/9 d16*4/3]
	ees4~ \times 2/3{ees8 d c d c bes c bes a}
	bes4 r \clef bass \times 2/3{r8 r bes ees d c}
	bes4~ \times 2/3{bes8 d bes} ees8.*8/9 bes16*4/3 \times 2/3{aes8 g f	%30
	ees f g} bes,4 r8*4/3 bes8*2/3[ ees,8.*8/9 ees'16*4/3]
	bes4 d g,8[ bes a g]
	d'4 d, r f
	bes ees r8*4/3 es8*2/3[ d8.*8/9 e16*4/3]
	f4 f, r8*4/3 f8*2/3[ a8.*8/9 f16*4/3]					%35
	bes2 \clef treble r4 d'
	g g,~ \times 2/3{g8 a bes a bes c
	bes c d} c4~ \times 2/3{c8 d ees d ees f
	ees d c} d4~ \times 2/3{d8 c bes c bes a}
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8[ a bes c]		%40
	d4 bes d g8 f
	e![ g c g] e[ c d e]
	f4 a, c f8 e
	d[ f bes f] d[ e cis d]
	e2 r8 d[ e f]											%45
	g4 g, g'2~
	g4 e cis r
	\clef bass r a e' \times 2/3{e,8 d cis
	a' g f} cis'8.*8/9 d16*4/3 g,8.*8/9 a16*4/3 \times 2/3{b8 a gis
	g! f e f e d} g8.*8/9 a16*4/3 bes8.*8/9 cis,16*4/3		%50
	d4 d, r8 e''[ d c]
	\times 2/3{bes g bes d bes g} r4 b
	b g e8[ f' e d]
	\times 2/3{c8 a c e c a} r4 c
	c a f8[ g' f ees]										%55
	\times 2/3{d bes f d f bes} d2~
	d8[ bes g bes] d e f4
	bes,8[ g e g] bes4 bes
	e,2\prall r4 \times 2/3{g8 a bes
	a g f} d'4~ d8.*8/9 g16*4/3 e8.*8/9 g16*4/3				%60
	\times 2/3{f8 d e f e d} d4 cis
	\times 2/3{d8 a f d a f} d4 a'
	d4~ \times 2/3{d8 c bes bes a g} c8.*8/9 fis,16*4/3
	g4 d \times 2/3{a'8 cis d e f g}
	a8.*8/9 f16*4/3 d4 r a'~								%65
	\times 2/3{a8 cis, e} g8.*8/9 cis,16*4/3 d8.*8/9[ a'16*4/3 a,8.*8/9 a'16*4/3]
	d,4 a' r d,
	a8.*8/9 cis'16*4/3 d4 \times 2/3{r8 bes a g f e}
	f8.*8/9 a16*4/3 d2 cis4\prall
	d8.*8/9[ g,16*4/3 fis8.*8/9 e16*4/3] d8.*8/9 c16*4/3 \times 2/3{bes8 a g}	%70
	d'4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Inversus part, clavier one and two %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OneRightInversus = \new Voice{\relative c''{

	\global

	\partial 4 d4
	
	a a'~ \times 2/3{a8 g f g f e							%1
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g}
	f8[ d a d] f[ g f e]
	\times 2/3{d8 g e f g a} bes4 cis,						%5
	d4~ \times 2/3{d8 e f} e2~
	e4~ \times 2/3{e8 f g} f8.*8/9 a,16*4/3 b8.*8/9 cis16*4/3
	d2~ d8[ cis d e]
	f4 r r fis
	 g \times 2/3{fis8 g e fis g a bes a g}					%10
	a4 r r fis 
	g bes g d8 c
	bes4 d bes g 
	a a' r2
	r4 e c a												%15
	bes bes' r2
	r4 a,4 d2~
	d4 g, c2~
	c4 bes a a'
	d d,~ \times 2/3{d8 e f e f g							%20
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f[ a d a] f[ e fis gis]
	a4 g!8 fis e4 fis
	g8[ b e b] g[ fis g a]									%25
	b4 a8 g fis4 gis
	a8[ b c bes] a8.*8/9[ g16*4/3 f8.*8/9 a16*4/3]
	g4~ \times 2/3{g8 a bes a bes c bes c d
	c c, bes a bes c} f2~
	f4 \times 2/3{e8 f d} e4 a								%30
	g \times 2/3{a8 g bes} a4 e
	\times 2/3{f8 c' a f a f} c[ g' f ees]
	\times 2/3{d c bes c bes a} f'2~
	f1~
	f~														%35
	f2 r4 a
	e e'~ \times 2/3{e8 d c d c b
	c b a} b4~ \times 2/3{b8 a gis a gis fis
	gis a b} a4~ \times 2/3{a8 b c b c d}
	c[ a e a] c[ d c b]										%40
	a4 c a e8 fis
	g[ e b e] g[ bes! a g]
	f4 d' bes f8 g
	a[ f c f] a[ g bes a]
	g2 r4 cis,												%45
	d r r8 f,[ g e]
	bes'4 r r g'
	d' d,~ \times 2/3{d8 e f e f g
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}					%50
	f[ a d a] f[ e fis gis]
	a4 c, e a
	e8[ g c g] e[ d e fis]
	g4 bes, d g
	d8[ f bes f] d[ c d e]									%55
	f2 r4 d
	cis8[ e a e] cis[ b cis d]
	e4 r r8 g[ f e]
	bes'2 r4 g
	\times 2/3{f8 e d cis e d c d c bes! c bes				%60
	a f' e d e f g e d cis d e
	f a f d f d a bes c bes a g}
	a1~
	a4~ \times 2/3{a8 bes c} bes4 r
	\times 2/3{r8 a d f d f a f d a bes c					%65
	bes d g bes a g fis g a} g8.*8/9 bes,16*4/3
	a4~ \times 2/3{a8 bes c bes a g fis g a}
	g8.*8/9 e'16*4/3 \times 2/3{f!8 g a} cis,2
	d4 r r8 cis[ d e]
	\times 2/3{fis g a} d,4~ d \times 2/3{e8 d cis}			%70
	fis4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OneLeftInversus = \new Voice{\relative c{

	\global
	
	\partial 4 r4						

	r d f a													%1
	d g,8.*8/9 a16*4/3 bes4 gis
	a8.*8/9 g!16*4/3 \times 2/3{f8 g a} bes4 cis,
	d f a a,
	bes8.*8/9 g16*4/3 \times 2/3{d'8 e f} g4~ \times 2/3{g8 f e	%5
	f e d} bes'4~ \times 2/3{bes8 a g} a8.*8/9 a,16*4/3
	\times 2/3{d8 f e} f8.*8/9 e16*4/3 \times 2/3{d8 e f e f g}
	f4~ \times 2/3{f8 d f} a[] \clef treble g'[ f e]
	d8.*8/9 a'16*4/3 \times 2/3{d8 c bes} a4\prall~ \times 2/3{a8 g a
	d, c bes a bes c} d,4 r									%10
	\clef bass r8.*8/9 fis16*4/3[ g8.*8/9 a16*4/3] \times 2/3{bes8 c d c bes a}
	bes4 g, r16 d'[ e fis g a bes c]
	d8[ bes g d] g4 c,
	\times 2/3{f8 a c} f4 r8 f[ e d]
	e[ c a e] a4 d,											%15
	\times 2/3{g8 bes d} g4 r8 g[ f e]
	d2 r4 d,
	e2 r4 c
	g' g, f f'~
	f8[ e f g] a4 cis,8.*8/9 e16*4/3						%20
	a8.*8/9[ f'16*4/3 e8.*8/9 d16*4/3] cis4 c8.*8/9 a'16*4/3
	g4 \times 2/3{d8 a f} d2~
	\times 2/3{d8 a f d f a} d4 c8 b
	\times 2/3{c e a} c4 r d,
	\times 2/3{e8 b g e g b} e4 d8 cis						%25
	\times 2/3{d fis b} d4 r b,
	\times 2/3{c8 d b a bes c} f,4 bes~
	\times 2/3{bes8 a g} d'2~ \times 2/3{d8 c bes}
	f'4~ \times 2/3{f8 c bes a bes c} f,8.*8/9 g16*4/3
	\times 2/3{a8 bes a} c4~ \times 2/3{c8 d e d e f		%30
	e d c} f8.*8/9 c'16*4/3 f8.*8/9 f,16*4/3 \times 2/3{bes8 a g}
	f4~ \times 2/3{f8 c a} f4 a
	\times 2/3{bes8 c d ees d c} bes4 bes'
	f8.*8/9[ ees'16*4/3 d8.*8/9 c16*4/3] \times 2/3{bes8 a g a g f}
	bes4 f ees d8.*8/9 d'16*4/3								%35
	\times 2/3{c8 f, a c a c f g f e! f d}
	c4~ \times 2/3{c8 d c} b8.*8/9 e,16*4/3 e'4~
	e8.*8/9 a,16*4/3 \times 2/3{e8 gis b gis fis e} a8.*8/9 a,16*4/3
	e'8.*8/9 b16*4/3 \times 2/3{c8 a b c d e} e,8.*8/9 e'16*4/3
	a,4 a'~ a8[ gis a b]									%40
	\clef treble \times 2/3{c a c e c e a b a g a fis
	e b g} e4 r a
	\times 2/3{d8 bes! d f d f bes! c bes a bes g
	f c a} f4 r d'~
	\times 2/3{d8 bes' g e g e cis d e} a,4~				%45
	a \clef bass d, g8[ f e a]
	d,8.*8/9[ d'16*4/3 cis8.*8/9 e16*4/3] a,4 r
	r d g, g'
	r e8.*8/9 d16*4/3 cis4 c8.*8/9 c,16*4/3
	g'4 f8.*8/9 g16*4/3 a4 cis,								%50
	\times 2/3{d8 a f d f a} d4 c8 b
	\times 2/3{a c e a c e} a4 r 
	\times 2/3{c,,8 g e c e g} c4 bes!8 a
	\times 2/3{g bes d g bes d} g4 r 
	\times 2/3{bes,8 f d bes d f} bes4 a8 g					%55
	\times 2/3{a f a c a c} \clef treble f[ e d f]
	\times 2/3{g e cis a cis e} g[ f e d]
	\times 2/3{cis e g bes g e} cis4 d8 e
	g,2 r4 \clef bass \times 2/3{bes,8 a g}
	d'8.*8/9[ f16*4/3 a8.*8/9 a,16*4/3] bes8.*8/9[ a16*4/3 bes8.*8/9 g16*4/3]	%60
	d8.*8/9 a'16*4/3 bes4~ bes8.*8/9[ g16*4/3 a8.*8/9 cis16*4/3]
	d,8.*8/9[ d'16*4/3 f8.*8/9 a16*4/3] d8.*8/9 d,16*4/3 \times 2/3{d'8 c bes}
	a4 a, \times 2/3{a'8 b cis b cis d
	g, fis e fis e d} g4 cis,
	d d, r d'												%65
	\times 2/3{g,8 bes d g a bes} a8.*8/9 d16*4/3 bes8.*8/9 g16*4/3
	d8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3] g4 d
	g8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3] \times 2/3{a8 bes a g a g}
	f8.*8/9[ e16*4/3 f8.*8/9 d16*4/3] bes'4.*10/9 a16*2/3 g
	d'8.*8/9[ fis16*4/3 g8.*8/9 a16*4/3] bes8.*8/9[ d16*4/3 g8.*8/9 a16*4/3]	%70
	d,4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TwoRightInversus = \new Voice{\relative c''{

	\global

	\set Staff.instrument=\markup{\hspace #0 \raise #10.0 \large Inversus}
	
	\partial 4 r4

	R1*3													%1 to 3
	r2 r4 a
	d d,~ \times 2/3{d8 e f e f g							%5
	f g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f[ a d a] f[ e f g]
	\times 2/3{a bes c bes a g} fis4 ees'
	d r r d,~												%10
	d \times 2/3{ees8 d f} ees2
	d1~
	d8[ g bes g] d[ c d e]
	f[ c a c] f[ a g f]
	e[ a c a] e[ d e fis]									%15
	g[ d bes d] g[ bes a g]
	f[ e f g] a[ g f a]
	e[ d e f] g[ f e g]
	d[ cis d e] f[ g a g]
	f[ g f e] d4 bes'										%20
	a cis, r ees
	d r r d
	a' r r a
	e r r a
	g r r b													%25
	fis r r b
	e, r r2
	r2 r4 f 
	c c'~ \times 2/3{c8 bes a bes a g
	a g f} g4~ \times 2/3{g8 f e f e d						%30
	e f g} f4~ \times 2/3{f8 g a g a bes}
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8[ bes a g]
	f4 a d8.*8/9[ c16*4/3 bes8.*8/9 d16*4/3]
	c4~ \times 2/3{c8 d ees d c bes a bes c
	bes a g a g bes a bes c d c bes}						%35
	c4 a f c'
	g r b r
	e,1~
	e~
	e~														%40
	e2 r4 e
	b2 r4 e
	f2 r4 f
	c2 r4 f
	g8[ e cis e] g[ f g a]									%45
	bes[ g e g] bes[ a b cis]
	d8.*8/9[ bes16*4/3 g8.*8/9 bes16*4/3] d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
	\times 2/3{f8 d a f g a} bes2
	a4 cis, r ees
	d8.*8/9 e!16*4/3 \times 2/3{f8 e d} cis8.*8/9 a'16*4/3 \times 2/3{bes8 a g}	%50 
	a4 f d a'
	e r r e
	e' e, c g'
	d r r d
	d' d, bes f'											%55
	c a c f
	e cis e a
	g8[ e cis e] g[ bes a g]
	e'2 r4 e,
	\times 2/3{f8 g a} e4~ \times 2/3{e8 fis g} d4			%60
	a' r r e
	a, a'~ \times 2/3{a8 g fis g f e
	f e d} e4~ \times 2/3{e8 d cis d cis b
	cis d e} d4~ \times 2/3{d8 e f e f g} 
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]	%65
	d1~
	d~
	d4 cis e bes'
	\times 2/3{a8 d a f a f} d4 d'
	a~ \times 2/3{a8 fis e d c bes} a8.*8/9 a'16*4/3		%70
	a4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TwoLeftInversus = \new Voice{\relative c'{

	\global
	
	\partial 4 r4						

	R1*2													%1 to 2
	r2 r4 a
	\times 2/3{d,8 f a} d2 \times 2/3{cis8 a cis}
	f,4 \times 2/3{r8 bes, a} g8.*8/9[ a16*4/3 bes8.*8/9 g16*4/3]	%5
	d'8.*8/9[ f16*4/3 e8.*8/9 d16*4/3] cis4~ \times 2/3{cis8 d e}
	d8.*8/9[ d'16*4/3 cis8.*8/9 a16*4/3] d4 d,~
	\times 2/3{d8 a f} d4 r a''
	d, d'~ \times 2/3{d8 c bes c bes a
	bes a g} a4~ \times 2/3{a8 g fis g fis e				%10
	fis g a} g4~ \times 2/3{g8 a bes a bes c}
	bes[ g d g] bes[ c bes a]
	g2 r4 bes
	a f8 g a4 b,
	c2 r4 c'												%15
	bes g8 a bes4 cis,
	d4. e8 f[ g a f]
	c'4 c, e g
	bes4. a16 g d'8[ g, f e]
	d4. e8 \times 2/3{f8 g a} g8.*8/9 cis,16*4/3			%20
	d4 \times 2/3{e8 d f} e16*2/3 fis g4*4/3 fis8*2/3
	\times 2/3{g8 f! e f a d c bes a bes a g}
	a4 g a d
	c8[ a e a] c[ e d c]
	b4 g b e												%25
	d8[ b fis b] d[ f! e d]
	c4 c,~ \times 2/3{c8 d e d e f
	e f g} f4~ \times 2/3{f8 g a g a bes} 
	a4 f bes d
	c1~														%30
	c~
	c2 r4 c
	f f,~ \times 2/3{f8 g a g a bes
	a bes c} bes4~ \times 2/3{bes8 c d c d ees
	d c bes} c4~ \times 2/3{c8 bes a bes a g}				%35
	a[ c f c] a[ g a b]
	\times 2/3{c8 e d c b a} gis8.*8/9[ a16*4/3 b8.*8/9 gis16*4/3]
	\times 2/3{a8 gis fis gis e gis b c d c b a
	b c d c e d c b a gis a b
	a e' c a c a} e[ f e d]									%40
	c[ e a e] c[ b c d]
	e4 g e cis
	d8[ f bes f] d[ c d e]
	f4 a f d
	e a bes r												%45
	r8 bes16[ a g f e d] cis4 r
	\times 2/3{r8 g' d e f g f g a bes a g}
	f4 r r \clef treble cis'
	d \times 2/3{e8 d f} e16*2/3 fis g4*4/3 fis8*2/3
	g4 r r \clef bass g,									%50
	d' r r d
	c8[ a e a] c[ e d c]
	g'4 r r c,
	bes8[ g d g] bes[ d c bes]
	f'4 r r bes,											%55
	a8[ f c f] a[ c bes a]
	e'4 r r a,
	bes r r8 e,[ f g]
	cis,2 r4 \times 2/3{r8 cis bes'}
	a4~ \times 2/3{a8 g fis} g4~ \times 2/3{g8 a g}			%60
	f!4~ \times 2/3{f8 e d} e4~ \times 2/3{e8 f e}
	d1~
	\times 2/3{d8 cis b cis e a g f e f e d
	e fis g fis g a} g4 r
	r2 r4 a													%65
	d d,~ \times 2/3{d8 e fis e fis g
	fis g a} g4~ \times 2/3{g8 a bes a bes c
	bes a g} a4~ \times 2/3{a8 g f g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8[ e f g]
	\times 2/3{a8 bes c} bes4~ \times 2/3{bes8 c d cis b a}	%70
	d4.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% Music parts definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

music = {

	\tag #'rectus \new StaffGroup <<
							\new PianoStaff <<
								\new Staff{\clef treble \OneRightRectus}
								\new Staff{\clef bass \OneLeftRectus}
								>>
							\new PianoStaff <<
								\new Staff{\clef treble \TwoRightRectus}
								\new Staff{\clef bass \TwoLeftRectus}
								>>
					>>

	\tag #'inversus \new StaffGroup <<
							\new PianoStaff <<
								\new Staff{\clef treble \OneRightInversus}
								\new Staff{\clef bass \OneLeftInversus}
								>>
							\new PianoStaff <<
								\new Staff{\clef treble \TwoRightInversus}
								\new Staff{\clef bass \TwoLeftInversus}
								>>
					>>
}
		