\header{
filename =	 "flaucla.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

flaucla =  \relative c' {
r2. | r4 r8\mf e'(\> gis,  a\!) |
r2. | r4 r8 e'(\> gis,  a\!) |
r2. | r4 r8 c(\> gis  a\!) |
r2. | c4(\>  h8\!) h4 a8 | 
r4 r8 r\mf a(\< h |  c\!\> gis  a\!) r4 r8 |
%%11
r4 r8 r a(\< h |  c\!\> gis  a\!) r4 r8|
r4 r8 r a(\< h |  c\!\> gis  a\!) r4 r8|
a'(\sf gis,  a) r4 r8 | f'4(-"dim."  a,8) r4 r8 | f'4.(\>  e8)  r\! r |
r4 r8 r\p \slashedGrace a,32( g8\<  fis\! | h\> g fis  e\!) r r |
r4 r8 r \slashedGrace a32( g8-"cresc."\<  fis\! | h\> g fis  e\!) r r |
%%22
r4 r8 r \slashedGrace c'32( h8\f a| g'4.\sf  fis)~ | fis r4 r8 |
r4 r8 r\p \slashedGrace d32( c8\<  h\! | e\> c  a\!  fis) r r |
r4 r8 r \slashedGrace d'32( c8-"cresc."\<  h\! | e\> c  a\!  fis) r r |
r4 r8 r \slashedGrace d'32( c8-"cresc." h | e c a  fis) r r |
%%31
R2.*2 | r8 r\p e'(\<  g4\!\>  e8\!) | e4. r4 r8 |
R2.*4 | r8 r\mf f(\< e4  f8\! | a4\> g8  f4\!  g8) | f4.(\>  e\!) |
%% 42
R2.*4 | r8 r es-"cresc."( d4 es8\< |  g4\! f8\>  es4\!  f8)  | es4.(\>  d4\!) r8 |
r4 r8 r4 f8( | e!4.\sf  d) |
%% 51
r2. | r4 r8 r r e( | d4.\sf  c) |
r4 r8 r4 e8(\f | dis4 c!8 h4 a8 |  gis4) r8 r4 r8 |
r2. | r8 r\f h(\<  gis'4\!\>  e8\! | dis4 c!8 h4 a8 |  gis4) r8 r4 r8 |
%% 61
r h-"dim."( e  dis c! a |  gis4) r8 r4 r8 |
r h(\<  c\! d\> h  a\! |  gis) r r r4 r8 |
r d(\p f gis f gis |  h) r r r4 r8 |
r h( c-"cresc." d h d |  f) r r r4 r8 |
r4 r8 a\sf( e  c) |
%% 70
r4 r8 a-"dim."( c  f) | r4 r8 e-"dim."( a,  f) | r4 r8 d( f  b) |
r4 r8 gis4.(\p |  a8) r r\mf e'(\sf gis,  a) | r2. | r4 r8 e'(\sf gis,  a) |
r2. | r4 r8 cis(\> gis  a\!) | r2. |
%% 80
c!4(\>  h8\!) h4(  a8) |
r4 r8 r a( h | c gis  a) r4 r8 |
r4 r8 r a-"cresc."( h | cis gis  a) r4 r8 |
r f'( e d a a' |  gis) r r r4 r8 | r a,(\<  h\! c!\> d  c\! |  h) r r r4 r8 |
%% 89
r fis(\<  gis\! a\> h  a\! |  gis) r r r gis( a |  b) r r r4 r8 |
r c( e d h gis |  a) r r r4 r8 | 
r e'-"cresc."(\<  d\! cis\> h  cis\! |  d) r r r4 r8 |
r a-"dim."( h c gis a |  fis) r r r4 r8 |
r fis( gis  a) r r | 
%%99
r4 r8 r4 f8 | f'\pp( d b a c  f,) | b r r r e!( g | f d b a c  f,) | 
b r r r e-"cresc."( g | f d h! gis h  e,) |
r4 r8 f-"cresc."( b  d) | r4 r8 f,( gis  h!) |
r4 r8 f-"cresc."( b  d) | r4 r8 f,( gis  h!) |
r4 r8 f\f( b  d) |
%% 110
r4 r8 h( gis  e) | R2.*4 |
r4 r8 e'\p( gis,  a) | r4 r8 a-"cresc."( e  c) | r4 r8 b'-"dim."( d  f) |
r4 r8 e,( d  h!) | R2.*4 |
%% 123
r4 r8 e'\accent( gis,  a) | r4 r8 a( e  c) | r4 r8 h'( d-"dim."  f) |
r4 r8 e,( d  h) |
r4 r8 a'( c  e) | r4 r8 gis,( f  d) |
r4 r8 a'( c-"dim."  e) |
%% 130
r4 r8 gis,( f  d) |
r4 r8 gis( f  d) |
r4 r8 gis( f  d) |
}

flautiEnd =  \relative c'' {
\skip 2.*132
R2.*4 |
<<  \relative c'' { a'8 a( h  c) c( e |  a) a( e  c) c( h |  a) }
   \relative c'' { c8\pp c e a a h | c c h a a e | c }
>>
r8 r r4 r8 | R2.*2 |
}

clarinettiEnd =  \relative c'' {
\skip 2.*132
r4 r8 as( f  d) | r4 r8 f( d  h) | c r g c c( d |  es) es( g  c) c( d |
 es) r r r4 r8 | r2. | es8 es( d  c) c( g  es) es( d  c) c( g |  c) r r r4 r8 |
}

flautiStaff = \new Staff = "flauti" <<
	\set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauti"
	\set Staff.shortInstrumentName = #"Fl."
	 \context Staff = "flauti" << 
		\global
		\context Voice = "flauti" 		\flaucla
		\flautiEnd
	>>
>>

clarinettiStaff = \new Staff = "clarinetti" <<
	\set Staff.midiInstrument = #"clarinet"
	\set Staff.instrumentName = #"Clarinetti in A"
	\set Staff.shortInstrumentName = #"Cl."
	\transposition a 
	 \context Staff = "clarinetti" <<
		\time 6/8
		\key c \minor
		\context Voice = "clarinetti" 			\transpose c es { \flaucla }
			\clarinettiEnd
	>>
>>
