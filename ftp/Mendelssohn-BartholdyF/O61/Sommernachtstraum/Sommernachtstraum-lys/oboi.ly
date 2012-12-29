\header{
filename =	 "oboi.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

oboeB =  \relative c'' {
	r4 r8 r8\mf a8(\<  h\! | c\> gis  a\!) r4 r8 |
	r4 r8 r8 a8(\<  h\! | c\> gis  a\!) r4 r8 |
	r4 r8 r8 a8( h | c gis  a) r4 r8 |
	e'4(\>  d8\!) d4(  c8) | r2. | a8(\p gis fis  gis) r8 r8 |
%% 10
	r4 r8 e'(\> gis,  a\!) | r2. |
	r4 r8 e'(\> gis,  a\!) | r2. |
	r4 r8 e'(-"cresc." gis,  a) | r4 r8 g'!(\> gis,  a\!) |
	r4 r8 h4(-"dim."  f'8) | r4 r8 r\p h,(\<  c\! |
	e\> c  a\!  fis) r r | r4 r8 r \slashedGrace d'32( c8-"cresc."\<  h\! |
%% 20
	e\> c a  fis\!) r r | r4 r8 r \slashedGrace d'32( c8\<  h\! |
	e\> c a  fis\!) r r | r2. | r4 r8 e'4.\p( | dis  e4) e8 |
	e2.~ | e4(\<  fis8\! g4\>  dis8\!) | e2.~ | e4 h'8\sf( g4  dis8) |
%% 30
	e2. | r2. | c'4.\sf(\>  h\!)~ | h2.~ | h4.~ h4 r8 |
	R2.*2 | 
	r8 r c,\p( h4 c8-"cresc." | e4 d8 c4  d8) | c2.( | 
%% 40	
	 h) | R2.*3 |
	r8 r b\p( a4-"cresc." b8 | d4 c8 b4  c8) | b2.( |  a) |
	r4 r8 r4 f'8( | e!4.\sf  d) |
%% 50
	r4 r8 r4 f8( | e4\sf h8 c4  d8) | d4.(  c4) r8 | 
	r4 r8 r4 e8( | dis4.\sf  c!4) r8 | r2. |
	r8 r\f h8(\<  gis'4\!\>  e8\! | dis4 c!8 h4 a8 |  gis4) r8 r4 r8 | r2. |
%% 60
	r8 h-"dim."( e dis c! a |   gis4) r8 r4 r8 |
	r8 h(\<  c\! d!\> h  a\! |  gis) r r r4 r8 |
	r d\p( e f d f |  gis) r r r4 r8 |
	r gis-"cresc."( a h gis h |  d) r r r4 r8 |
	r d\f( e f d f | h\sf f  d) r4 r8 |
%% 70
	g!-"dim."( d  h) r4 r8 | e-"dim."( h  g) r4 r8 |
	c( g  e) r4 r8 | 
	r4 r8 r a(\<  h\! | c\> gis  a\!) r4 r8 |
	r4 r8 r a(\<  h\! | c\> gis  a\!) r4 r8 |
	r4 r8 r a(\<  h\! | c\> gis  a\!) r4 r8 |
	e'4(\>  d8\!) d4(  c8) |
%% 80
	r2. | a8( h a  gis) r r | r4 r8 e'( gis,  a) | r2. |
	r4 r8 g'-"cresc."( e  cis) |  a'2.\sf( | gis4.-"dim."  g) |
	fis(  f)~ | f e( | dis  d)~ | 
%% 90
	d(  c) |
	b8\p( d e f d b |  a) r r r4 r8 |
	r4 r8 a'4.\sf( |  gis)-"cresc."( g |  fis) f~ | f( e | dis  d)~ |
	d(  c)-"dim." |
	b8\pp(\< d  e\! f\> e  g\! | 
%% 100	
	 f) r r r f,( a | b\< d  e\! f\> e  g\! | 
	 f) r r r f,( a-"cresc." | b d e f e g |  f) r r r h,!( e,	|
	e' c  a) r4 r8 |  c-"cresc."( a  e) r4 r8 | 
	e'( c  a) r4 r8 |  c-"cresc."( a  e) r4 r8 |
	e'\f( b  g) r4 r8 | 
%% 110	
	e( a  c) r4 r8 | R2.*3 | 
	r4 r8 r a\p( h | c gis  a) r4 r8 |
	a'-"cresc."( e  c) r4 r8 | b,-"dim."( d  f) r4 r8 |
	e'( d  h!) r4 r8 | R2.*3 |
%% 122
	r4 r8 r a(\<  h\! | c\> gis  a\!) r4 r8 |
	a'( e  c) r4 r8 | h,-"dim."( d  f) r4 r8 |
	e'( d  h!) r4 r8 | R2.*15 |
}

oboeC =  \relative c'' {
	%R2.*31 | c4.(  h)~ | h2.\p~ | h4.~ h4 r8 | \skip 2.*38 | R2.*38 |
	R2.*31 | c4.(  h)~ | h2.\p~ | h4.~ h4 r8 | R2.*2 |
	r8 r c\p( h4 c8-"cresc." | e4 d8 c4  d8) | c2.( | 
%% 40	
	 h) | R2.*3 |
	r8 r b\p( a4-"cresc." b8 | d4 c8 b4  c8) | b2.( |  a) |
	r4 r8 r4 f'8( | e!4.\sf  d) |
%% 50
	r4 r8 r4 f8( | e4\sf h8 c4  d8) | d4.(  c4) r8 | 
	r4 r8 r4 e8( | dis4.\sf  c!4) r8 | r2. |
	r8 r\f h8(\<  gis'4\!\>  e8\! | dis4 c!8 h4 a8 |  gis4) r8 r4 r8 | r2. |
%% 60
	r8 h-"dim."( e dis c! a |   gis4) r8 r4 r8 |
	r8 h(\<  c\! d!\> h  a\! |  gis) r r r4 r8 |
	r d\p( e f d f |  gis) r r r4 r8 |
	r gis-"cresc."( a h gis h |  d) r r r4 r8 |
	r d\f( e f d f | h\sf f  d) r4 r8 |
%% 70
	g!-"dim."( d  h) r4 r8 | e-"dim."( h  g) r4 r8 |
	c( g  e) r4 r8 | 
	R2.*38 |
	a'2.\p\<~ | a~ |  a\!\f\>~ | a |  e4\!\p r8 r4 r8 | R2.*3 |
	a2.\p\<~ | a~ |  a\!\f\>~ | a |  e4\!\p r8 r4 r8 | R2.*18 |
}

oboiStaff = \context Staff = "oboi" <<
	\set Staff.midiInstrument = #"oboe"
	\set Staff.instrumentName = #"Oboi"
	\set Staff.shortInstrumentName = #"Ob."
	 << 
		\global
		\partcombine \oboeB \oboeC
	>>
>>
