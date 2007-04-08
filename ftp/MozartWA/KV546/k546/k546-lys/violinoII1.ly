\version "2.10.14"

\include "defs.ly"

violinoIIPmo = \context Voice = vlII {
	\relative c' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\key c \minor
		\time 3/4
		r8. es16-._\fStacc c'4..-. b16-.
		c8.-. c,16-. es'4..-. d16-.
		c8.-. g16-. es'4..-. g16-.
		f4-. es-. r
		R2.
		as,,8\p as as as as as
		g2 ~ g8( b)
		d( c) b4 r
		<es c' g'>\f r8. g,16-. g8.-. g16-.
		g4-. r8. d'16-. es8.-. d16-.%		10
		c4-. r8. e16-. f8.-. des16-.
		c4-. e'-. r
		R2.
		des8\p des des des des des
		des2.(
		c4) c,2
		es ~ es8.( c16)
		a2( bes8.)( f'16)
		f2 ~ f8.( d!16)
		b2( c8.)( g'16)%		20
		g2 ~ g8.( e16)
		d8( a') a4 ~ a16( g fis g)
		bes8.( g16) fis4 r
		r8. bes,16-._\fStacc g'4..-. fis16-.
		g8.-. g,16-. bes'4..-. a16-.
		g8.-. d16-. bes'4..-. d16-.
		c4-. bes-. r
		R2.
		ges8.(\p f16 ges8. f16 ges8. f16)
		ges2.(%		30
		fis) ~
		fis
		f!8.( b16 d4 c)
		es8.( c16) b8. b,16-.\f c8.-. d16-.
		c4-. r8. g16-. g8.-. g16-.
		g4-. r8. d'16-. es8.-. d16-.
		c4-. r8. e16-. f8.-. des16-.
		c4-. e'-. r
		R2.
		as,8.(\p g16 as8. g16 as8. g16)%		40
		as2.
		gis4 ~ gis8. e16( f8. d16)
		e8.( dis16 e8. dis16 e8. c16)
		des8.( c16 des8. c16 des8. bes!16)
		e4( f g)
		as!( a2)
		g8 d d d d d
		d d d d a' a
		g d d d d d
		c c c c es es%		50
		es4( d c)
		d2._\attacca\fermata
		\bar "||"
		\time 4/4
	}
}
