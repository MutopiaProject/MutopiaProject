\version "2.10.0"

\include "functions.ly"

violinOne = \new Voice {
	\set Staff.midiInstrument = "violin"
	\set Score.markFormatter = #format-mark-box-barnumbers
	\override MultiMeasureRest #'expand-limit = 1

	\clef treble
	\key g \major
	\time 4/4

	\relative g'' {
		\repeat volta 2 {

		%% primary theme

		<g b, d,>4\f r8 d g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		<g b, d,>8 r g4. b8( a) g-. %% "rocket theme"
		\ifemidi { g\trill( } { a32( g a g } fis8) fis4. a8( c) fis,-.
		a( g) g4. b8( a) g-.
		\ifemidi { g\trill( } { a32( g a g } fis8) fis4. a8( c) fis,-.
		g-. g-. \appoggiatura g16 fis8( e16 fis) g8-. g-. \appoggiatura b16 a8( g16 a)
		b8-. b-. \appoggiatura d16 c8( b16 c) d4 r
		d,2\p( e) %% piano
		\acciaccatura d8 c4 c \acciaccatura c8 b4 b
		\acciaccatura b8 a4 a g8( fis) e-. fis-.
		g8 r a r b r r4
		d2( e)
		d8( c) c-. c-. c( b) b-. b-.
		b( a) a-. a-. g( fis e fis)
		<g g,>2~\sf <g g,>8 \ifemidi { g16\p\trill( } { a32\p( g } fis32 g a8 fis) %% sforzando
		b2~\sf b8 \ifemidi { b16\p\trill( } { c32\p( b } a32 b c8 a)
		\repeat tremolo 8 d16 \cresc \repeat tremolo 4 e \repeat tremolo 4 fis
		\repeat tremolo 4 g \repeat tremolo 4 a \repeat tremolo 4 b \repeat tremolo 4 cis
		\endcresc d4.\f a8 cis8.( a16) cis8.( a16) %% \forte
		d4.( a8) cis8.( a16) cis8.( a16)
		d8 <d fis,>4 <d fis,> <d fis,> << { d8~ d }
		{ fis,_( e_) } >> <d' e,>4 <d e,> <d e,> <d e,>8
		<cis e,>8 a d a cis a d a
		cis a, a a a4 r

		%% secondary theme
		
		\break \mark \default
		a'4.\p( \times 2/3 { g16 fis e } d8) r b' r
		g r e r a r r4
		fis4.( \times 2/3 { e16 d cis } b8)  r g' r
		fis2( e4) r
		r8 a-. a-. a-. a-. a-. a-. a-.
		a-. a-. a-. a-. a-. a-. b-. cis-.
		cis( d) r b b( a) r cis,
		d4 r8 a'-. d( cis b a)
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r a-. a-. a-. a-. a-.
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r a d( cis b a)
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r a-. a-. a-. a-. a-.
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r4 <b b,>4.\f \times 2/3 { a16( g fis }
		g4) r <a a,>4. \times 2/3 { g16( fis e }
		fis4) r b8( cis16 d cis8) b-.
		b( a) fis-. a-. a( g) fis-. e-.
		d4 r8 a'\p d( cis b a)
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r a-. a-. a-. a-. a-.
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r a d( cis b a)
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r a-. a-. a-. a-. a-.
		\ifemidi { \pitchedTrill b\trill( cis } \times 2/3 { b16 cis b } a8) r4 <b b,>4.\f \times 2/3 { a16( g fis }
		g4) r <a a,>4. \times 2/3 { g16( fis e }
		fis4) r b8( cis16 d cis8) b-.
		b( a) fis-. a-. a( g) fis-. e-.
		d a b cis d-. d-. \ifemidi { e\trill( } \times 2/3 { e16 fis e } d16 e %% tutti
		fis8) cis d e fis fis \ifemidi { g\trill( } \times 2/3 { g16 a g } fis16 g
		a8) a \ifemidi { ais\trill( } \times 2/3 { ais16 b ais } gis16 ais b4) r
		b,4.\p( e8) d( cis b a)
		d r fis r d r r4

		}
		
		%% development
		
		\break \mark \default
		<d d,>4\f r8 a d4 r8 a
		d a d fis a4 r
		a4 r8 fis a4 r8 fis
		a fis dis fis b,4 r
		
		r r8 g'8\p c( b a g)
		\ifemidi { a\trill( } \times 2/3 { a16 b a } g8) r g-. g-. g-. g-. g-.
		\ifemidi { a\trill( } \times 2/3 { a16 b a } g8) r g c( b a g)
		\ifemidi { a\trill( } \times 2/3 { a16 b a } g8) r g g g g g
		\ifemidi { a\trill( } \times 2/3 { a16 b a } g8) r g c( b a g)
		\ifemidi { a\trill( } \times 2/3 { a16 b a } gis8) r gis gis gis gis gis
		\ifemidi { b\trill( } \times 2/3 { b16 c b } a8) r a c( bes a g)
		\ifemidi { g\trill( } \times 2/3 { g16 a g } fis8) r fis fis fis fis fis
		\ifemidi { a\trill( } \times 2/3 { a16 b a } g8) r es g( f es d)
		\ifemidi { d\trill( } \times 2/3 { d16 e d } cis8) r cis cis cis cis cis
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d,\f( e fis g a %% forte
		c bes) r fis( g a bes cis
		e d) r d\p( e fis g a
		bes4 b c cis)
		d1(
		d2) \ifemidi { fis,4.\trill( } \repeat unfold 6 { g32 fis } e16 fis)
		
		%% recapulation
		%% primary theme
		
		\mark \default %% no break (no rest)
		g4\f r8 d g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		<g b, d,>8 r g4. b8( a) g-. %% "rocket theme"
		\ifemidi { g\trill( } { a32( g a g } fis8) fis4. a8( c) fis,-.
		a( g) g4. b8( a) g-.
		\ifemidi { g\trill( } { a32( g a g } fis8) fis4. a8( c) fis,-.
		g-. g-. \appoggiatura g16 fis8( e16 fis) g8-. g-. \appoggiatura b16 a8( g16 a)
		b8-. b-. \appoggiatura d16 c8( b16 c) d4 r
		d,2\p( e) %% piano
		\acciaccatura d8 c4 c \acciaccatura c8 b4 b
		\acciaccatura b8 a4 a g8( fis) e-. fis-.
		g8 r a r b r r4
		d2( e)
		d8( c) c-. c-. c( b) b-. b-.
		b( a) a-. a-. g( fis e fis)
		<g g,>2~\sf <g g,>8 \ifemidi { g16\p\trill( } { a32\p( g } fis32 g a8 fis) %% sforzando
		b2~\sf b8 \ifemidi { b16\p\trill( } { c32\p( b } a32 b c8 a)
		\repeat tremolo 8 d16 \cresc \repeat tremolo 4 e \repeat tremolo 4 fis
		\repeat tremolo 4 g \repeat tremolo 4 a \repeat tremolo 4 b \repeat tremolo 4 cis
		\endcresc d4.\f a8 cis8.( a16) cis8.( a16) %% \forte
		d4.( a8) cis8.( a16) cis8.( a16)
		d8-. a-. cis-. a-. d-. a-. cis-. a-.
		d d,, d d d4 r
		
		%% secondary theme
		
		\break \mark \default
		d'4.\p( \times 2/3 { c16 b a } g8) r e' r
		c r a r d r r4
		b'4.( \times 2/3 { a16 g fis } e8)  r c' r
		b2( a4) r
		r8 d-. d-. d-. d-. d-. d-. d-.
		d-. d-. d-. d-. d( c a fis)
		fis( g) r e e( d) r fis,
		g4 r8 d'-. g( fis e d)
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d-. d-. d-. d-. d-.
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d g( fis e d)
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d-. d-. d-. d-. d-.
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r4 <e e,>4.\f \times 2/3 { d16( c b }
		c4) r <d d,>4. \times 2/3 { c16( b a }
		b4) r e8( fis16 g fis8) e-.
		e( d) b-. d-. d( c) b-. a-.
		g4 r8 d'-. g( fis e d)
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d-. d-. d-. d-. d-.
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d g( fis e d)
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r d-. d-. d-. d-. d-.
		\ifemidi { e\trill( } \times 2/3 { e16 fis e } d8) r4 e'4.\f \times 2/3 { d16( c b }
		c4) r <d d,>4. \times 2/3 { c16( b a }
		b4) r e,8( fis16 g fis8) e-.
		d-. g-. b-. d-. d( c) b-. a-.
		g d, e fis g g \ifemidi { a\trill( } \times 2/3 { a16 b a } g16 a %% tutti
		b8) fis g a b b \ifemidi { c\trill( } \times 2/3 { c16 d c } b16 c
		d8) d \ifemidi { dis\trill( } \times 2/3 { dis16 e dis } cis16 dis e4) r
		e,4.\p( a8) g( fis e d)
		d'( cis c b d cis c b)
		e,4.( a8) g( fis e d)
		d'( e fis g d e fis g)
		a4 r <d d,>\f r %% forte
		\break \mark \default
		<g, b, d,> r8 d b g b d %% coda theme
		g d g b d4 <fis, a, d,>
		<g b, d,> r8 d b g b d
		g d g b d4 <fis, a, d,>
		<g b, d,> r <g b, d,> r
		<g b, d,> <g, g,>8. <g g,>16 <g g,>4 r
		
		\bar "|."
	}
}

\book {
	\header {
		\include "headers.ly"
		instrument = "Violin 1"
	}
	\score {
		\iftop {
			\set Score.skipBars = ##t
			\new Staff \nomidi \violinOne
		}
		\layout {}
	}
	\paper {
		#(layout-set-staff-size (* 6 mm))
		ragged-bottom = ##f
		ragged-last-bottom = ##f
	}
}
