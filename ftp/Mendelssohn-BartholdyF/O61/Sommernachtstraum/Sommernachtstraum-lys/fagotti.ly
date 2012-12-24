\header{
filename =	"fagotti.ly"
enteredby =	"Felix Braun"
copyright =	"Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

mCresc = \markup \italic "cresc."

fagottoB =  \relative c' {
	R2.*9 | r4 r8 cis4.\mf( | d\<  f\! |  e)\>  cis\!( | d\<  f\! |  e) r4 r8 |
	R2.*7 | r4 r8 r\f \slashedGrace c32( h8 a | g'4.\sf  fis)~ | fis( e\p | 
	dis  e4) r8 | r2. \clef "tenor" | 
	r8 r fis(\<  g4\!\>  dis8\!) | e2.~ | e4 h'8\sf( g4  dis8) | 
%% 30
	e2. | r \clef "bass" | c4.\f(\>  h\!)~ | h2.~ | h4.~ h4 r8 | R2.*25 |
%% 60
	h4.\p( c | h  c) | 
	h2.~ | h | 
	h8 r r r4 r8 | h8 r r r4 r8 | 
	h8 r r r4 r8 | h8 r r r4 r8 | h8 r r r4 r8 | 
	R2.*5 |
%% 74
	a4.\mf( h4 cis8 | d4.  f) | e( cis4  a8) | d4.(  f) | 
	e(\< \slashedGrace g32 f4\!\>  e8\!) | a4.~ a4(  f8) |
%% 80
	d4. d | f4.\sf(  e) | e( c4  a8) | f'4.(  d) | 
	g!( e4  cis8) | a'2.( | gis4.  g) | fis(  f)~ | f e( | dis  d)~ |
%% 90
	d(  c) | d,4\p r8 r4 r8 | e4 r8 e4 r8 | a4. a'\sf( | 
	gis\cresc g\! |  fis) f~ | f( e | dis  d)~ | d(  c) | R2.*4 |
%% 103
	d2.( |  h!) | e4.( d | c  h) | e4.( d | c  h) | 
	e4.( d | 
%% 110	
	c  h) |
	a,\p-\mCresc(  h4) c8 | d4.\<(  e) | 
	 g\f(\> f4  e8\!) | d4.( c4\dim  d8)\! | e4 r8 r4 r8 |
	c'2.( | d |  h!) |
	a,4.(  h4)\<-\mCresc cis8 | 
%% 120	
	d4.(  e) |  g\!\f( f4  e8) | dis4.\>( cis4  dis8) |  e4\! r8 r4 r8 |
	c'2.( | d |  h!) |
	a4 r8 e'4 r8 | f4 r8 r4 r8 | r4 r8 e4 r8 |
%% 130
	f4 r8 r4 r8 | r4 r8 f4 r8 | e4 r8 f4 r8 | e4 r8 r4 r8 | R2.*8 |
}

fagottoC =  \relative c {
	R2.*22 | dis2.~ | dis4. r4 r8 | R2.*2 | g,2.( |  c8) r r r4 r8 |
	g2.( |  c8) r r r4 r8 | R2.*29 | 
	gis'4. a | gis a | gis( a | gis  a) | gis8 r r r4 r8 |
	gis8 r r r4 r8 | gis8 r r r4 r8 | gis8 r r r4 r8 | gis8 r r r4 r8 |
	R2.*13 | c,,2.\p\cresc( | d | e\sf |  f\sf) |
	e'8 r r es\< r r | d4 r8 r4 r8 | g4 r8 c,4 r8 | h4 r8 r4 r8 | 
%% 90
	e4 r8 f4  r8\! | 
	d4\p r8 r4 r8 | e4 r8 e4 r8 | a4. a'\sf( | 
	gis\cresc g\! |  fis) f~ | f( e | dis  d)~ | d(  c)-\markup\italic "dim." | R2.*4 |
	b2.\p-\mCresc( |
	 gis2.) | a4. b\cresc | a gis\! | a4. b\cresc | a gis | b2.\f |
%% 110
	a4. gis | 
	a,\p-\mCresc(  h4) c8\! | d4.\<(  e) | 
	 g\f(\> f4  e8\!) | d4.( c4\dim  d8)\! | e4 r8 r4 r8 |
	a2.\p | b | gis | 
	a,4.(  h4)\<-\mCresc cis8 | 
%% 120	
	d4.(  e) |  g\!\f( f4  e8) | dis4.\>( cis4  dis8) |  e4\! r8 r4 r8 |
	a2.\p | h | gis |
	a4 r8 c4 r8 | d4 r8 r4 r8 | r4 r8 c4 r8 | d4 r8 r4 r8 | 
	r4 r8 d4 r8 | c4 r8 d4 r8 | c4 r8 r4 r8 | R2.*8 |
}

fagottiStaff = \new Staff = "fagotti" <<
	\set Staff.midiInstrument = #"bassoon"
	\set Staff.instrumentName = #"Fagotti"
	\set Staff.shortInstrumentName = #"Fg."
	\clef "bass"
	<< 
		\global
		\partcombine \fagottoB \fagottoC
	>>
>>
