\header{
filename =	"violoncello.ly"
enteredby =	"Felix Braun"
copyright =	"Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

fe =  { r8 r4 r8 }

violoncello =  \relative c' {
a2.:16\mf | a:\< |  a:\!\sf\> |  a:\!\< |  a:\!\sf\> |  a4.\!: g!: | f2.: | f: | 
e: | a: | a:\sf\> |  a:\!\< |  a:\!\sf\> |  a4.\!:-"cresc." g: | f: e: |
d: g: | g2.: | fis: | <<g2.:{s2 s4-"cresc."}>> | fis2.: | g: | fis: |
dis:\sf | dis4.:-"dim." e: | fis: g: |
c,8\p r \fe | g-"pizz." r \fe | c r \fe | g-"cresc." r \fe |
%% 30
c r \fe | dis2.:\f-"arco" | dis:\> |  e:\!\p |
g8 r r h r r | e, r \fe | r2. | a:-"arco"\p\< | a: |  g:\!\> | 
%% 40
 g:\! | g4.: c,8 r r | R2.*3 |
c8 r \fe | f r \fe | f, r \fe | b r \fe | R2.*2 |
%% 51
e4\sf \fe | a2.:-"arco" | g: | fis: | f!: | 
e8 r \fe | e-"pizz." r \fe | e r \fe | e r \fe |
%% 60
e r \fe | e r \fe | e,4.-"arco"(\<  f\! | e\>  f\!) | e8 r \fe | e r \fe |
e r \fe | e r \fe | e r \fe | R2.*4 |
%% 73
r4 r8 e'-"pizz." r r | a4.-"arco"( h4 cis8 | d4.  f) | e4.( cis4  a8) | d4.(  f) |
e4.(\< \slashedGrace g32 f4\!\>  e8\!) | a4.~ a4(  f8) | 
%% 80
d4. d | f\sf(  e) | e( c4-"cresc."  a8) | f'4.(  d) | g!4.\sf( e4  cis8) |
a'2.(\sf | 
gis4.  g)\dim | fis(  f)~ | f e( | dis  d)~ |
%% 90
d( c)\! |
d,4\p \fe | e-"pizz." r8 e4 r8 | a4 r8 f4 r8 | 
e4.-"arco"(\<  e'\!)\sf~ | e d-"dim."~ | d c( | h  f') | e(  a,) | d,2.:\pp |
%% 100
d4.\<  es\!\> |  d2.\!: | d4. es | d2.:-"cresc." | d: | c4 r8-"pizz."
d4-"cresc." r8 | e4 r8 d4 r8 | c4 r8 d4-"cresc." r8 | e4 r8 d4 r8 | cis4\f
r8 d4 r8 |
%% 110
e4 \fe | a,4.\p-"cresc.molto"(  h4) c8 | d4.\<( e)\! |
g\f\>( f4 ) e8\! | d4.( c4-"dim."  d8) | e4.\p r4 r8 | e4-"pizz." \fe | e \fe |
e4 \fe | a,4.-"arco"(  h4)-"cresc."\< cis8 | d4.( e)\! |
g\f\>( f4  e8) | dis4.( cis4 ) dis8\! | e4 \fe | e4-"pizz." \fe | e \fe |
e \fe | a,8 r \fe | r4 r8 a4 r8 | a4 \fe | 
%% 130
r4 r8 a4-"dim." r8 | a4 \fe | r2. |
r4 r8 a4 r8 | a4 r8 a4 r8 | a4 \fe | R2.*5 | a8 r \fe |
}

violoncelloStaff = \new Staff = "violoncello" <<
	\set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = #"Violoncello"
	\set Staff.shortInstrumentName = #"Vc."
	\clef "bass"
	<< 
		\global
		\new Voice = "violoncello" 			\violoncello
	>>
>>
