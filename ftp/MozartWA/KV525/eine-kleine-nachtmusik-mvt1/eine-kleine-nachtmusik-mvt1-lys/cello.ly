\version "2.10.0"

\include "functions.ly"

cello = \new Voice {
	\set Staff.midiInstrument = "cello"
	\set Score.markFormatter = #format-mark-box-barnumbers
	\override MultiMeasureRest #'expand-limit = 1

	\clef bass
	\key g \major
	\time 4/4

	\relative g {
		\repeat volta 2 {

		%% primary theme

		g4\f r8 d g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		g8 g g g g g g g %% "rocket theme"
		g g g g g g g g
		g g g g g g g g
		g g g g g g g g
		g g a a b b fis fis
		g g a a b4 r
		R1 %% piano
		d,2\p( e)
		c4 c d d
		b8 r d r g4 r
		R1
		d2( e)
		c4 c d d
		g8\sf g g g g\p g g g %% sforzando
		g\sf g g g g\p g g g
		g g g g \cresc g g g g
		g g fis fis g g e e
		\endcresc d1\f
		d
		d8 e fis e d e fis d
		g a b a g a b gis
		a a a a a a a a
		a a, a a a4 r

		%% secondary theme
		
		\break \mark \default
		r2 r4 dis8\p r
		e r d r cis r a r
		r4 ais( b8)  r g r
		a4 a'4.( gis8 g e) 
		d r e r fis r dis r
		e r d r cis r a r
		b r g' r a r a, r
		d4 r r2
		a4 r r2
		d4 r r2
		a4 r r2
		r8 d\f fis e dis b cis dis
		e g e d cis a b cis
		d d e fis g g g g
		a a a a a, a a a
		d4 r r2
		a4\p r r2
		d4 r r2
		a4 r r2
		r8 d\f fis e dis b cis dis
		e g e d cis a b cis
		d d e fis g g g g
		a a a a a, a a a
		d a b cis d d e e %% tutti
		fis8 cis d e fis fis g g
		a a ais ais b4 r
		g2\p( a)
		d,8 r d r d r r4

		}
		
		%% development
		
		\break \mark \default
		d4\f r8 a d4 r8 a
		d a d fis a4 r
		a4 r8 fis a4 r8 fis
		a fis dis fis b,4 r
		
		c4\p r r2
		g4 r r2
		c4 r r2
		g4 r r2
		c4 r r2
		e4 r r2
		a,4 r r2
		d4 r r2
		es1~
		es
		d4 r8 d\f( e fis g a %% forte
		c bes) r fis( g a bes cis
		e d) r4 r2
		R1*2
		d,1\p
		
		%% recapulation
		%% primary theme

		\mark \default
		g4\f r8 d g4 r8 d
		g d g b d4 r
		c4 r8 a c4 r8 a
		c a fis a d,4 r
		g8 g g g g g g g %% "rocket theme"
		g g g g g g g g
		g g g g g g g g
		g g g g g g g g
		g g a a b b fis fis
		g g a a b4 r
		R1 %% piano
		d,2\p( e)
		c4 c d d
		b8 r d r g4 r
		R1
		d2( e)
		c4 c d d
		g8\sf g g g g\p g g g %% sforzando
		g\sf g g g g\p g g g
		g g g g \cresc g g g g
		g g fis fis g g e e
		\endcresc d1\f
		d
		d8 d d d d d d d
		d d d d d4 r
		
		%% secondary theme
		
		\break \mark \default
		r2 r4 gis8\p r
		a r g r fis r d r
		r4 dis( e8)  r c r
		d4 d'4.( cis8 c a) 
		g r a r b r gis r
		a r g r fis r d r
		e r c r d r d r
		g,4 r r2
		d'4 r r2
		g,4 r r2
		d'4 r r2
		r8 g\f b a gis e fis gis
		a c a g fis d e fis
		g-. g-. a-. b-. c c c c
		d d d d d, d d d
		g4 r r2
		d4\p r r2
		g4 r r2
		d4 r r2
		r8 g\f b a gis e fis gis
		a c a g fis d e fis
		g-. g-. a-. b-. c c c c
		d d d d d, d d d
		g d e fis g g a a %% tutti
		b fis g a b b c c
		d d dis dis e4 r
		c,2(\p d)
		g,4 r r2
		c( d)
		g,4 r r2
		c4 r d\f r %% forte
		\break \mark \default
		g,8 g g g g g g g %% coda theme
		g g g g g g g g
		g g g g g g g g
		g g g g g g g g
		g b d g b g d' b
		g4 g,8. g16 g4 r
		
		\bar "|."
	}
}

\book {
	\header {
		\include "headers.ly"
		instrument = "Cello & Double Bass"
	}
	\score {
		\iftop {
			\set Score.skipBars = ##t
			\new Staff \nomidi \cello
		}
		\layout {}
	}
	\paper {
		#(layout-set-staff-size (* 6 mm))
		ragged-bottom = ##f
		ragged-last-bottom = ##f
	}
}
