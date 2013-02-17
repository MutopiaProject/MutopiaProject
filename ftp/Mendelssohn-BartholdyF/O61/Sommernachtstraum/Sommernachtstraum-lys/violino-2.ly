\header{
filename =	"violino-2.ly"
enteredby =	"Felix Braun"
copyright =	"Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

violinoC =  \relative c' {
e2.:16\mf | e:\< |  f:\!\>\sf |  e:\!\< |  f:\!\sf\> |  e:\! | d: | d: | d: |
c4.: g'!: | fis:\>\sf d: |   e:\!\< g!: |  fis\!\sf\> d: |  e2.\!:-"cresc." |
d4.: cis: | d2.:-"dim." | d4.: e: | e2.:\p | <<e: {s2 s4-"cresc."}>> | 
%% 20
e2.: | e: | e: | c:\f | c:-"dim." | c4.: h: | a2.:\p | h: | a: | h: |
%% 30
a:-"cresc." | c:\f | c4.:\>  h:\! | h2.:\p | h: | h8:\< h:  e:\! f!:\> a:  g:\! |
e: g: f: d: f: e: | c4.: e:\< |  f2.\!: | f:\> | 
%% 40
 f:\! | d4.: e8: e: d: | c:-"cresc." f: e: d: g: f: | e: a: g: f: b: a: |
g2.:\< |  g:\! | f:\> |  f:\! | f: | g: | 
%% 50
gis: | gis: | e: | e: | c: | dis: | e:\< |  f!:\!\> |  e:\!\< |  f:\!\> |
%% 60
 e4.\! f:-"dim." | e: f: | <d h>2.: | <d h>: | <d h>8 r r r4 r8 | 
f r r r4 r8 |  
f r r r4 r8 |  
f r r r4 r8 |  
f r r r4 r8 |  
R2.*4 |
%% 73
r4 r8 gis-"pizz." r r  | e4.:-"arco"\<  g!:\! | f:\sf d: | e: g: | f:\sf d: |
%% 80
e2.: | d: | d: | d: | e: | f:-"cresc." | cis: | d:\sf | d8 r r cis-"dim" r r |
d r r r4 r8 | R2.*3 |
%% 91
d2.:\p | c4.: d: | c8 r r r4 r8 | R2.*5 | d2.:\pp
%% 100
d4.:\<  c:\!\> |  d2.\!: | d4.: c: | d2.:-"cresc." | h!: | e4.: d:-"cresc." |
c: h: | e: d:-"cresc." | c: h: |
<<{e4.: d:} \\{b2.:\f}>> |
%% 110
c4.: h: | 
a16\p a'-"cresc." a4: a4.:\< | a2.: |  a:\!\f\> |  a:\! | <e: c:>\p |
< e: c:> | <d: b:> | h!: |
a16\p a'-"cresc." a4: a4.:\< | a2.: |  a:\!\f\> |  a:\! | <e: c:>\p |
<e c>8 r r <e c>8 r r |  r4 r8 <d h> r r | r4 r8 <d h> r r | 
c r r r4 r8 | r4 r8 gis'4-"pizz." r8| a4 r8 r4 r8 | 
%% 130
r4 r8 f4-"dim." r8 | e4 r8 r4 r8 | r2. | r4 r8 d4 r8 | c4 r8 gis4 r8 |
a4 r8 r4 r8 | R2.*5 | a8 r r r4 r8 | 
}

violinoCStaff = \context Staff = "violino2" <<
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = #"Violino II"
	\set Staff.shortInstrumentName = #"Vl. II"
	<< 
		\global
		\context Voice = "violinoii" 			\violinoC
	>>
>>
