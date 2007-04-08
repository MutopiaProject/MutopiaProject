\header{
filename =	"viola.ly";
enteredby =	"Felix Braun";
copyright =	"Public Domain";
}

\version "1.3.122";
\include "deutsch.ly"

violaB = \notes \relative c' {
	c2.:16\mf | c\< | \!d:\sf\> | \!c:\< | \!d:\sf\> | \!c: | a: | a: |
	<h: e:> | <c4.: e:> <cis: e:> | d:\sf\> h: | \!c!:\< cis: |
	\!d:\sf\>h | \!c!:-"cresc." cis: | a2.: | a4.:-"dim." h: | h: c: |
	a2.:\p | < h: {s2 s4-"cresc."} > | 
%% 20
	a2.: | h: | a: | a:\f | a:-"dim." | a4.: g: | fis2.:\p | g: | fis: | g: |
%% 30
	fis:-"cresc." | a:\f | a:\> | \!g:\p | g4.: <fis: a:> | 
	g8:\< h: \!e: d:\> c: \!h: | c: h: a: h: a: gis: | a4.: c:\< | c2.: |
	\!d:\> | 
%% 40	
	\!d: | h4.: c8: e,: gis: | a: f:-"cresc." a: b: g!: h: | 
	c: a: cis: d: b: d: | e2.:\< | e: | \!es:\> | es: | \!d: | d: | 
%% 50	
	d: | d: | c: | c: | a: | a: | h: | c: | h: | c: | 
%% 60	
	h4.: c:-"dim." | h: c: | gis: a: | gis: a: | gis8 r r r4 r8 |
	d' r r r4 r8 | d r r r4 r8 | d r r r4 r8 | d r r r4 r8 | R2.*4 |
%% 73
	r4 r8 d-"pizz."	r r | c4.:-"arco" e: | d: h: | c4.: e: | d: h: |
	c4.: cis4.: | a2.: | 
%% 80	
	a2.: | h2.: | a: | a4.:-"cresc." h: | g2.: | a:\sf | R*5 |
%% 91
	b: | a4.: h!: | a8 r r r4 r8 | R2.*5 | b:\pp | 
%% 100	
	b4.:\< \!a:\> | \!b2.: | b4.: a: | b2.:-"cresc." | gis : | 
	a4.: b:-"cresc." | a: gis: | a: b:-"cresc." | a: gis: |
	g!:\f f: | 
%% 110	
	a: gis: | 
	a2.:\p-"cresc."\< | a: | \!a:\f\> | a: | \!a:\p | a: | e: | gis: | 
	a:\p-"cresc."\< | 
%% 120	
	a: | \!a:\f\> | a: | \!a:\p 
	| a8 r r a r r | r4 r8 a r r | 
	r4 r8 gis r r | a r r r4 r8 | r4 r8 f'4-"pizz."  r8 | e4  r8 r4 r8 |
%% 130
	r4 r8 d4-"dim." r8 | c4 r8 r4 r8 | r2. | r4 r8 gis4 r8 | a4 r8 f4 r8 |
	e4 r8 r4 r8 | R2.*5 | c8 r r r4 r8 |
}

violaC = \notes \relative c' {
	\skip 2.*45; | c2.:16 | c: | b: | b: | 
%% 50	
	b: | h!: | a: | a: | \skip 2.*2; | gis: | a: | gis: | a: |
%% 60
	gis4.: a: | gis: a: | \skip 2.*3; | h8 s4 s4. | h8 s4 s4. | 
	h8 s4 s4. | h8 s4 s4. | \skip 2.*4; | s4. h8 s4 | 
	a4.: a: | a: a: |
	a: a: | a: a: | a: a: |
	f2.: | f2.: | e: | c2.: | d4.: d: |
	e2.: | f: | \skip 2.*5; | f2.: | e4.: e: | e8 s4 s4. | \skip 2.*5; |
	f2.: | f4.: f: | f2.: | f4.: f: | f2.: | s | e4.: f: | e: e: | e: f:|
	e: e: | s2. | e4.: e: | \skip 2.*4; | e2.: | e: | s | e: |
	s | 
%%120	
	s | s | s | e: | 
        e8 s4 e8 s4 | s4. e8 s4 | 
	s4. e8 s4 | e8 s4 s4. | s4. d'4  s8 | c4 s8 s4. |
	s h4 s8 | \skip 2.*3; | s4. d,4 s8 | c4 s8 s4. |
}	

violaStaff = \context Staff = viola <
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"Viola"
	\property Staff.instr = #"Vla."
	\clef "alto";
	\notes< 
		\global
		\context Voice=violai
			\violaB
		\context Voice=violai
			\violaC
	>
>
