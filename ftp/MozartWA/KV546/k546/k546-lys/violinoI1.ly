\version "2.10.14"

\include "defs.ly"

violinoIPmo = \context Voice = vlI {
	\relative c'' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\set Staff.extraNatural = ##f
		\key c \minor
		\time 3/4
		r8. g16-._\fStacc es'4..-. d16-.
		c8.-. g16-. g'4..-. f16-.
		es8.-. c16-. c'4..-. bes16-.
		as4-. g-. r
		des,8.(\p c16 des8. c16 des8. c16)
		des4( f as)
		b,( c d!)
		f8( es\trill) d4 r
		<g es' c'>4\f r8. g16-. a,8.-. b16-.
		c4-. r8. g'16-. a8.-. b16-.%		10
		c4-. r8. c16-. d8.-. e16-.
		f4-. bes!-. r
		R2.
		as8\p as as as as as
		ges8.( f16 ges8. f16 ges8. f16)
		ges4 ~ ges16( f es! des c bes as ges)
		ges2( f4)
		f8.( ges16 f8. ges16 f8. as16)
		as2( g!4)
		g8.( as16 g8. as16 g8. bes16)%		20
		bes2( a4)
		a8( c) c4 ~ c16( bes a bes)
		d8.( bes16) a4 r
		r8. d,16-._\fStacc bes'4..-. a16-.
		g8.-. d16-. d'4..-. c16-.
		bes8.-. g16-. g'4..-. f16-.
		es4-. d-. r
		R2.*2
		c'8.(\p b16 c8. b16 c8. b16)%		30
		c2. ~
		c4 ~ c16( bes! a g fis es! d c)
		b8.( d16 f!4 es)
		g8.( es16) d8. g,16-.\f a8.-. b16-.
		<g, es' c'>4 r8. g'16-. a,8.-. b16-.
		c4-. r8. g'16-. a8.-. b16-.
		c4-. r8. c16-. d8.-. e16-.
		f4-. bes!-. r
		R2.*2%		39
		cis8.(\p bis16 cis8. bis16 cis8. bis16)%		41
		cis4( b2 ~
		b4 a2 ~
		a4 g2 ~
		g4 f e)
		es!( d c)
		b r r
		r a' es8.( d16)
		d4 r r
		r es fis,8.( g16)%		50
		g8.( fis16 g8. fis16 g8. fis16)
		g2._\attacca\fermata
		\bar "||"
		\time 4/4
	}
}
