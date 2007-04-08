\header{
filename =	"fagotti.ly";
enteredby =	"Felix Braun";
copyright =	"Public Domain";
}

\version "1.3.122";
\include "deutsch.ly"

fagottoB = \notes \relative c' { \voiceOne
	R2.*9 | r4 r8 cis4.\mf( | d\< \!f | )e\> \!cis( | d\< \!f | )e r4 r8 |
	R2.*7 | r4 r8 r\f \grace{c32} h8( a | g'4.\sf )fis~ | fis( e\p | 
	dis )e4 r8 | r2. \clef "tenor"; | 
	r8 r fis(\< \!g4\> \!)dis8 | e2.~ | e4 h'8\sf( g4 )dis8 | 
%% 30
	e2. | r \clef "bass"; | c4.\f(\> \!)h~ | h2.~ | h4.~ h4 r8 | R2.*25 |
%% 60
	\stemDown h4.\p( c | h )c | 
	\stemUp h2.~ | h | 
	\stemDown h8 r r r4 r8 | h8 r r r4 r8 | 
	h8 r r r4 r8 | h8 r r r4 r8 | h8 r r r4 r8 | 
	\stemUp r2.*5 |
%% 74
	a4.\mf( h4 cis8 | d4. )f | e( cis4 )a8 | d4.( )f | 
	e(\< \grace{g32} \!f4\> \!)e8 | a4.~ a4( )f8 |
%% 80
	d4. d | f4.\sf( )e | e( c4-"cresc." )a8 | f'4.( )d | 
	g!\sf( e4 )cis8 | a'2.\sf( | gis4. )g | fis( )f~ | f e( | dis )d~ |
%% 90
	d( )c | d,4 r8 r4 r8 | e4-"a 2." r8 e4 r8 | a4. a'\sf( | 
	gis-"cresc." g | )fis f~ | f( e | dis )d~ | d( )c-"dim." | R2.*4 |
%% 103
	\stemDown d2.( | )h! | e4.( d | c )h | e4.( d | c )h | 
	\stemUp e4.( d | 
%% 110	
	\stemDown c )h |
	\stemBoth a,-"a 2."-"cresc."\p( )h4 c8 | d4.\<( )e | 
	\!g\f(\> f4 \!)e8 | d4.( c4-"dim." )d8 | e4 r8 r4 r8 |
	\stemDown c'2.( | d | )h! |
	\stemBoth a,4.-"a 2."( )h4-"cresc."\< cis8 | 
%% 120	
	d4.( )e | \!g\f( f4 )e8 | dis4.\>( cis4 )dis8 | \!e4 r8 r4 r8 |
	\stemDown c'2.( | d | )h! |
	\stemUp a4 r8 \stemDown e'4 r8 | f4 r8 r4 r8 | r4 r8 e4 r8 |
%% 130
	f4 r8 r4 r8 | r4 r8 f4 r8 | e4 r8 f4 r8 | e4 r8 r4 r8 | R2.*8 |
}

fagottoC = \notes \relative c { \voiceTwo
	R2.*22 | dis2.~ | dis4. r4 r8 | R2.*2 | g,2.( | )c8 r r r4 r8 |
	g2.( | )c8 r r r4 r8 | R2.*29 | 
	gis'4. a | gis a | gis( a | gis )a | gis8 r r r4 r8 |
	gis8 r r r4 r8 | gis8 r r r4 r8 | gis8 r r r4 r8 | gis8 r r r4 r8 |
	R2.*13 | c,,2.\p( | d | e | )f |
	\property Voice.decrescendoText = "dim."
	\property Voice.decrescendoSpanner = #'dashed-line
	e'8 r r es\< r r | d4 r8 r4 r8 | g4 r8 c,4 r8 | h4 r8 r4 r8 | 
%% 90
	e4 r8 f4 \!r8 | 
	\property Voice.decrescendoText = ""
	\property Voice.decrescendoSpanner = #'hairpin
	d4\p r8 r4 r8 | \skip 2.*11; | <b'2.\p( {s2 s4-"cresc." }> |
	)gis2. | a4. b-"cresc." | a gis | a4. b-"cresc." | a gis | b2.\f |
%% 110
	a4. gis | 
	\skip 2.*5; | a2.\p | b | gis | 
	\skip 2.*5; | a2.\p | h | gis |
	a4 r8 c4 r8 | d4 r8 r4 r8 | r4 r8 c4 r8 | d4 r8 r4 r8 | 
	r4 r8 d4 r8 | c4 r8 d4 r8 | c4 r8 r4 r8 |
}

fagottiStaff = \context Staff = fagotti <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"Fagotti"
	\property Staff.instr = #"Fg."
	\clef "bass";
	\notes< 
		\global
		\context Voice=fagottoi
			\fagottoB
		\context Voice=fagottoii
			\fagottoC
	>
>
