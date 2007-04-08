\version "2.10.0"

\include "functions.ly"

viola = \new Voice {
	\set Staff.midiInstrument = "viola"
	\set Score.markFormatter = #format-mark-box-barnumbers
	\override MultiMeasureRest #'expand-limit = 1

	\clef alto
	\key g \major
	\time 4/4

	\relative g' {
		\repeat volta 2 {

		%% primary theme

		g4\f r8 d g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		g8 g g g g g g g %% "rocket theme"
		a a a a a( c) fis,( a)
		g g g g g g g g
		a a a a a( c) fis,( a)
		\repeat tremolo 8 d,16 \repeat tremolo 8 d
		\repeat tremolo 8 d d4 r
		R1 %% piano
		fis,2\p( g)
		c4 c a d,
		d8 r d' r d4 r
		R1
		fis2( g)
		c,4 c8 c a4 a8 a
		g\sf g g g g\p g g g %% sforzando
		g\sf g g g g\p g g g
		g g' g g \cresc g g a a
		g g fis fis g g e e
		\endcresc \repeat tremolo 8 <a d,>16\f \repeat tremolo 8 <a e> %% forte
		\repeat tremolo 8 <a d,> \repeat tremolo 8 <a e>
		fis8 g a g fis g a fis
		b a g a b a gis b
		a a a a a a a a
		a a, a a a4 r

		%% secondary theme
		
		\break \mark \default
		r2 r4 fis'8\p r
		b, r g' r e r cis r
		r4 e( d8)  r e r
		d2( cis4) r
		r cis( d8) r fis r
		b, r g r e r e' r
		e( d) r4 r2
		d8 d e e fis fis d d
		cis cis d d e e cis cis
		d d e e fis fis d d
		cis cis d d e e cis cis
		d d\f fis e dis b cis dis
		e g e d cis a b cis
		d d' d d d d d d
		d( a) a-. a-. a a a g
		fis d\p e e fis fis d d
		cis cis d d e e cis cis
		d d e e fis fis d d
		cis cis d d e e cis cis
		d d\f fis e dis b cis dis
		e g e d cis a b cis
		d d' d d d d d d
		d( a) a-. a-. a a a g
		fis a, b cis d d e e %% tutti
		fis cis d e fis fis g g
		a a ais ais b4 r
		e,2.\p( d8 cis)
		d r d r d r r4

		}
		
		%% development
		
		\break \mark \default
		d4\f r8 a d4 r8 a
		d a d fis a4 r
		a4 r8 fis a4 r8 fis
		a fis dis fis b,4 r
		
		c8\p c d d e e c c
		b b c c d d b b
		c c d d e e c c
		b b c c d d b b
		c c d d e e c c
		b b c c d d b b
		a a b b c c a a
		a a bes bes c c a a
		g g fis fis g g fis' fis
		g g fis fis g g, fis g
		a4 r8 d,\f( e fis g a %% forte
		c bes) r fis( g a bes cis
		e d) r4 r2
		R1
		b'8\p-. b-. b( c) a-. a-. a( b)
		g-. g-. g( b) b( a) g-. d-.
		
		%% recapulation
		%% primary theme
		
		\mark \default
		b4\f r8 d g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		g8 g g g g g g g %% "rocket theme"
		a a a a a( c) fis,( a)
		g g g g g g g g
		a a a a a( c) fis,( a)
		\repeat tremolo 8 d,16 \repeat tremolo 8 d
		\repeat tremolo 8 d d4 r
		R1 %% piano
		fis,2\p( g)
		c4 c a d,
		d8 r d' r d4 r
		R1
		fis2( g)
		c,4 c8 c a4 a8 a
		g\sf g g g g\p g g g %% sforzando
		g\sf g g g g\p g g g
		g g' g g \cresc g g a a
		g g fis fis g g e e
		\endcresc \repeat tremolo 8 <a d,>16\f \repeat tremolo 8 <a e> %% forte
		\repeat tremolo 8 <a d,> \repeat tremolo 8 <a e>
		\repeat tremolo 4 <a d,> \repeat tremolo 4 <a e> \repeat tremolo 4 <a d,> \repeat tremolo 4 <a e>
		<a d,>8 d,, d d d4 r
		
		%% secondary theme
		
		\break \mark \default
		r2 r4 b'8\p r
		e, r c' r a r fis r
		r4 a'( g8)  r a r
		g2( fis4) r
		r fis( g8) r b r
		e, r c r a r a' r
		a( g) r4 r2
		g,8 g a a b b g g
		fis fis g g a a fis fis
		g g a a b b g g
		fis fis g g a a fis fis
		g g'\f b a gis e fis gis
		a c a g fis d e fis
		g g g g g g g g
		g( d) d-. d-. d d d c
		b g\p a a b b g g
		fis fis g g a a fis fis
		g g' a a b b g g
		fis fis g g a a fis fis
		g g\f b a gis e fis gis
		a c a g fis d e fis
		g g g g g g g g
		g b d d d d d c
		b d, e fis g g a a %% tutti
		b fis, g a b b c c
		d d dis dis e4 r
		a,2.\p( g8 fis)
		g4 r r2
		a2.( g8 fis)
		g4 r g' r
		e r <d a'>\f r %% forte
		\break \mark \default
		\repeat tremolo 8 g,16 \repeat tremolo 8 g %% coda theme
		\repeat tremolo 8 g \repeat tremolo 4 g \repeat tremolo 4 a
		\repeat tremolo 8 g \repeat tremolo 8 g
		\repeat tremolo 8 g \repeat tremolo 4 g \repeat tremolo 4 a
		g8 b d g b g d' b
		g4 g,8. g16 g4 r
		
		\bar "|."
	}
}

\book {
	\header {
		\include "headers.ly"
		instrument = "Viola"
	}
	\score {
		\iftop {
			\set Score.skipBars = ##t
			\new Staff \nomidi \viola
		}
		\layout {}
	}
	\paper {
		#(layout-set-staff-size (* 6 mm))
		ragged-bottom = ##f
		ragged-last-bottom = ##f
	}
}
