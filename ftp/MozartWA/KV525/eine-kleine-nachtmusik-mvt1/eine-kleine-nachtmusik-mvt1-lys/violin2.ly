\version "2.10.0"

\include "functions.ly"

violinTwo = \new Voice {
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
		\repeat tremolo 8 <d, b>16 \repeat tremolo 8 <d b>16 %% "rocket theme"
		\repeat tremolo 8 <d c>16 \repeat tremolo 8 <d c>16
		\repeat tremolo 8 <d b>16 \repeat tremolo 8 <d b>16
		\repeat tremolo 8 <d c>16 \repeat tremolo 8 <d c>16
		<d b>4 c'8 c d d c( b16 a)
		g8 g fis fis g4 r
		b2\p( c) %% piano
		\acciaccatura b8 a4 a \acciaccatura a8 g4 g
		e4 e c a
		d8 r fis r g r r4
		b2( c)
		b8( a) a-. a-. a( g) g-. g-.
		e4 e8 e c4 c8 c
		b2~\sf b8 \ifemidi { b16\p\trill( } { c32\p b } a32 b c8 a) %% sforzando
		g'2~\sf g8 \ifemidi { g16\p\trill( } { a32\p g } fis32 g a8 fis)
		\repeat tremolo 8 b16 \cresc \repeat tremolo 8 c
		\repeat tremolo 4 b \repeat tremolo 8 d \repeat tremolo 4 g
		\endcresc \repeat tremolo 8 fis\f \repeat tremolo 8 g %% forte
		\repeat tremolo 8 fis \repeat tremolo 8 g
		<fis d>8 <fis d>4 <fis d> <fis d> <fis d>8~(
		<e d>) <e d>4 <e d> <e d> <e d>8
		\repeat tremolo 4 <e cis>16 \repeat tremolo 4 <fis d> \repeat tremolo 4 <e cis> \repeat tremolo 4 <fis d>
		<e cis>8 a, a a a4 r

		%% secondary theme

		\break \mark \default
		a4.\p( \times 2/3 { g16 fis e } d8) r b' r
		g r e r a r r4
		fis4.( \times 2/3 { e16 d cis } b8)  r g' r
		fis2( e4) r
		a4.( \times 2/3 { g16 fis e } d8) r b' r
		g r e r a r g r
		g( fis) r g' g( fis) r g,
		fis fis g g a a fis fis
		e e fis fis g g e e
		fis fis g g a a fis fis
		e e fis fis g g e e
		fis4 r <fis' b,>2\f(
		e4) r <e a,>2(
		d8) fis-. g-. a-. g( a16 b a8) g-.
		g( fis) d-. fis-. fis( e) d-. cis-.
		d fis,\p g g a a fis fis
		e e fis fis g g e e
		fis fis g g a a fis fis
		e e fis fis g g e e
		fis4 r <fis' b,>2\f(
		e4) r <e a,>2(
		d8) fis-. g-. a-. g( a16 b a8) g-.
		g( fis) d-. fis-. fis( e) d-. cis-.
		d a b cis d-. d-. \ifemidi { e\trill( } \times 2/3 { e16 fis e } d16 e %% tutti
		fis8) cis d e fis fis \ifemidi { g\trill( } \times 2/3 { g16 a g } fis16 g
		a8) a \ifemidi { ais\trill( } \times 2/3 { ais16 b ais } gis16 ais b4) r
		g,1\p(
		fis8) r a r fis r r4

		}
		
		%% development
		
		\break \mark \default
		<d' d,>4\f r8 a d4 r8 a
		d a d fis a4 r
		a4 r8 fis a4 r8 fis
		a fis dis fis b,4 r
		
		e,8\p e f f g g e e
		d d e e f f d d
		e e f f g g e e
		d d e e f f d d
		e e f f g g e e
		d d e e f f d d
		c c d d e e c c
		c c d d es es c c
		bes bes a a bes bes a' a
		bes bes a a bes bes a g
		fis4 r8 d\f( e fis g a %% forte
		c bes) r fis( g a bes cis
		e d) r d,\p( e fis g a
		bes4 b c cis)
		d8-. d-. d( e) c-. c-. c( d)
		b-. b-. b( d) d( c) b-. a-.
		
		%% recapulation
		%% primary theme
		
		\mark \default
		g4\f r8 d' g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		\repeat tremolo 8 <d, b>16 \repeat tremolo 8 <d b>16 %% "rocket theme"
		\repeat tremolo 8 <d c>16 \repeat tremolo 8 <d c>16
		\repeat tremolo 8 <d b>16 \repeat tremolo 8 <d b>16
		\repeat tremolo 8 <d c>16 \repeat tremolo 8 <d c>16
		<d b>4 c'8 c d d c( b16 a)
		g8 g fis fis g4 r
		b2\p( c) %% piano
		\acciaccatura b8 a4 a \acciaccatura a8 g4 g
		e4 e c a
		d8 r fis r g r r4
		b2( c)
		b8( a) a-. a-. a( g) g-. g-.
		e4 e8 e c4 c8 c
		b2~\sf b8 \ifemidi { b16\p\trill( } { c32\p b } a32 b c8 a) %% sforzando
		g'2~\sf g8 \ifemidi { g16\p\trill( } { a32\p g } fis32 g a8 fis)
		\repeat tremolo 8 b16 \cresc \repeat tremolo 8 c
		\repeat tremolo 4 b \repeat tremolo 8 d \repeat tremolo 4 g
		\endcresc \repeat tremolo 8 fis\f \repeat tremolo 8 g %% forte
		\repeat tremolo 8 fis \repeat tremolo 8 g
		\repeat tremolo 4 fis \repeat tremolo 4 g \repeat tremolo 4 fis \repeat tremolo 4 g
		fis8 d, d d d4 r
		
		%% secondary theme

		\break \mark \default
		d4.\p( \times 2/3 { c16 b a } g8) r e' r
		c r a r d r r4
		b'4.( \times 2/3 { a16 g fis } e8)  r c' r
		b2( a4) r
		d4.( \times 2/3 { c16 b a } g8) r e' r
		c r a r d r c r
		c( b) r c c( b) r c,
		b b c c d d b b
		a a b b c c a a
		b b c c d d b b
		a a b b c c a a
		b4 r <b' e,>2\f(
		a4) r <a d,>2(
		g8) b-. c-. d-. c( d16 a d8) c-.
		c( b) g-. b-. b( a) g-. fis-.
		g b,\p c c d d b b
		a a b b c c a a
		b b' c c d d b b
		a a b b c c a a
		b4 r b'2\f(
		a4) r  a2(
		g8) b,-. c-. d-. c( d16 e d8) c-.
		b-. d-. g-. b-. b( a) g-. fis-.
		g d, e fis g g \ifemidi { a\trill( } \times 2/3 { a16 b a } g16 a %% tutti
		b8) fis g a b b \ifemidi { c\trill( } \times 2/3 { c16 d c } b16 c
		d8) d \ifemidi { dis\trill( } \times 2/3 { dis16 e dis } cis16 dis e4) r
		c,1\p(
		b4) r r2
		c1(
		b4) r b' r
		e r <fis c>\f r %% forte
		\break \mark \default
		\repeat tremolo 8 <d, b>16 \repeat tremolo 8 <d b> %% coda theme
		\repeat tremolo 8 <d b> \repeat tremolo 4 <d b> \repeat tremolo 4 <d c>
		\repeat tremolo 8 <d b> \repeat tremolo 8 <d b>
		\repeat tremolo 8 <d b> \repeat tremolo 4 <d b> \repeat tremolo 4 <d c>
		<d b>4 r <g' b, d,> r
		<g b, d,> <g, g,>8. <g g,>16 <g g,>4 r
		
		\bar "|."
	}
}

\book {
	\header {
		\include "headers.ly"
		instrument = "Violin 2"
	}
	\score {
		\iftop {
			\set Score.skipBars = ##t
			\new Staff \nomidi \violinTwo
		}
		\layout {}
	}
	\paper {
		#(layout-set-staff-size (* 6 mm))
		ragged-bottom = ##f
		ragged-last-bottom = ##f
	}
}
