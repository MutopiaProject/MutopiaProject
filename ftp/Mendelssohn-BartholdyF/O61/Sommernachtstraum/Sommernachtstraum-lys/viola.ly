\header{
filename =	"viola.ly"
enteredby =	"Felix Braun"
copyright =	"Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

viola =  \relative c' {
	c2.:16\mf | c\< |  d:\!\sf\> |  c:\!\< |  d:\!\sf\> |  c:\! | a: | a: |
	<h: e:> | <c: e:>4. <cis: e:> | d:\sf\> h: |  c!:\!\< cis: |
	 d:\!\sf\>h |  c!:\!-"cresc." cis: | a2.: | a4.:-"dim." h: | h: c: |
	a2.:\p | << h: {s2 s4-"cresc."} >> | 
%% 20
	a2.: | h: | a: | a:\f | a:-"dim." | a4.: g: | fis2.:\p | g: | fis: | g: |
%% 30
	fis:-"cresc." | a:\f | a:\> |  g:\!\p | g4.: <fis: a:> | 
	g8:\< h:  e:\! d:\> c:  h:\! | c: h: a: h: a: gis: | a4.: c:\< | c2.: |
	 d:\!\> | 
%% 40	
	 d:\! | h4.: c8: e,: gis: | a: f:-"cresc." a: b: g!: h: | 
	c: a: cis: d: b: d: | e2.:\< | e: |  <es c>:\!\> | q: |  <d b>:\! | q: | 
%% 50	
	q: | <d h!>: | <c a>: | q: | a: | a: | <h gis>: | <c a>: | <h gis>: | <c a>: | 
%% 60	
	<h gis>4.: <c a>:-"dim." | <h gis>: <c a>: | gis: a: | gis: a: | gis8 r r r4 r8 |
	<d' h> r r r4 r8 | q r r r4 r8 | q r r r4 r8 | q r r r4 r8 | R2.*4 |
%% 73
	r4 r8 q-"pizz."	r r | <c a>4.:-"arco" <e a,>: | <d a>: <h a>: | <c a>4.: <e a,>: | <d a>: <h a>: |
	<c a>4.: <cis a>4.: | <a f>2.: | 
%% 80	
	q2.: | <h e,>2.: | <a c,>: | <a d,>4.:-"cresc." <h d,>: | <g e>2.: | <a f>:\sf | R2.*5 |
%% 91
	<b f>2.: | <a e>4.: <h! e,>: | <a e>8 r r r4 r8 | R2.*5 | <b f>2.:\pp | 
%% 100	
	q4.:\<  <a f>:\!\> |  <b f>2.\!: | q4.: <a f>: | <b f>2.:-"cresc." | gis : | 
	<a e>4.: <b f>:-"cresc." | <a e>: <gis e>: | <a e>: <b f>:-"cresc." | <a e>: <gis e>: |
	g!:\f f: | 
%% 110	
	<a e>: <gis e>: | 
	a2.:\p-"cresc."\< | a: |  a:\!\f\> | a: |  <a e>:\!\p | q: | e: | <gis e>: | 
	a:\p-"cresc."\< | 
%% 120	
	a: |  a:\!\f\> | a: | <a e>:\!\p |
	q8 r r q r r | r4 r8 q r r | 
	r4 r8 <gis e> r r | <a e> r r r4 r8 | r4 r8 <f' d>4-"pizz."  r8 | <e c>4  r8 r4 r8 |
%% 130
	r4 r8 <d h>4-"dim." r8 | c4 r8 r4 r8 | r2. | r4 r8 gis4 r8 | a4 r8 <f d>4 r8 |
	<e c>4 r8 r4 r8 | R2.*5 | c8 r r r4 r8 |
}

violaStaff = \new Staff = "viola" <<
	\set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = #"Viola"
	\set Staff.shortInstrumentName = #"Vla."
	\clef "alto"
	<< 
		\global
		\viola
	>>
>>
