\header{
filename =	 "contrabasso.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

fe =  { r8 r4 r8 }

contrabasso =  \relative c {
r2. | a4-"pizz." \fe | r2. | a4 \fe | r2. | a'4 r8 g!4 r8 |
f4 \fe | r2. | e4 \fe | 
a,4 \fe | r2. |
a4 \fe | r2. |
a'4 r8 g4-"cresc." r8 | f4 r8 e4 r8 | d4-"dim." r8 g4 r8 | c,4 \fe |
c4\p \fe |
g4 \fe | c4 \fe | g4 \fe | c4 \fe | dis8\sf r \fe | r4 r8 e-"dim." r r |
fis r r g r r | c,\p r \fe | g r \fe | c r \fe | g-"cresc." r \fe |
%% 30
c r \fe | dis4\f-"pizz." \fe | r2. | e4\p \fe | g8 r r h r r | e, r \fe |
R2.*4 |
%% 40
g,4 \fe | c8 r \fe | R2.*3 | c8 r \fe | f r \fe | f, r \fe | b r \fe | R2.*2 |
%% 51
e4\sf \fe | a4 \fe | R2.*2 | f!4 \fe | e8 r \fe | e r \fe | e r \fe | e r \fe
%% 60
e r \fe | e r \fe | e,4.-"arco"(\<  f\! | e\>  f\!) | e8 r \fe | e r \fe |
e r \fe | e r \fe | e r \fe | R2.*4 |
%% 73
r4 r8 e'-"pizz." r r | a,4 \fe | r2. | a4 \fe | r2. | a'4 r8 g4 r8 | f4 \fe |
r2. | e4 \fe | c4 \fe | d4-"cresc." \fe | e4 \fe | f4 r8 f4 r8 |
e4 r8 es4\dim r8 | d4 \fe | g4 r8 c,4 r8 | h4 \fe | 
%% 90
e4 r8 f4  r8\! | 
d4\p \fe | e r8 e4 r8 | a4 r8 f4 r8 | e4 \fe | e \fe | e \fe | e \fe | 
e r8 f4 r8 | d4\pp \fe | 
%% 100
r4 r8 es4 r8 | d4 \fe | r4 r8 es4 r8 | d4 \fe | r4 r8 d4 r8 | 
c4 r8 d4-"cresc." r8 | e4 r8 d4 r8 | c4 r8 d4-"cresc." r8 | e4 r8 d4 r8 |
cis4\f r8 d4 r8 | 
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

contrabassoStaff = \new Staff = "contrabasso" <<
	\set Staff.midiInstrument = #"contrabass"
	\set Staff.instrumentName = #"Basso"
	\set Staff.shortInstrumentName = #"Cb."
	\transposition c 
	\clef "bass"
	<< 
		\global
		\contrabasso
	>>
>>
