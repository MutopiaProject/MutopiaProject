\version "2.10.14"

\include "defs.ly"

violaPmo = \context Voice = vla {
	\relative c' {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\clef alto
		\key c \minor
		\time 3/4
		r8. c16-._\fStacc g'2 ~
		g8. es16-. c4..-. g16-.
		g'8.-. es16-. g4..-. c,16-.
		c'4-. c-. r
		R2.
		f,,8\p f f f f f
		d4( es) g ~
		g8( a) d,4 r
		<c c'>\f r8. c16-. g'8.-. f16-.
		es4-. r8. b'16-. c8.-. g'16-.%		10
		g4-. r8. g16-. as8.-. g16-.
		f4-. c'-. r
		R2.
		f,8\p f f f f f
		bes2.
		as4( es) es,
		c8.( des16 c8. des16 c8. es16)
		es2( d!4)
		d8.( es16 d8. es16 d8. f16)
		f2( e4)%		20
		e8.( f16 e8. f16 e8. g16)
		fis2( g4) ~
		g8( bes) d4 r
		r8. g,16_\fStacc d'2 ~
		d8. bes16-. g4..-. d16-.
		d'8.-. bes16-. d4..-. g,16-.
		g'4-. g-. r
		as,8.(\p g16 as8. g16 as8. g16)
		as2.(
		a)(%		30
		a)(
		a2)( d4) ~
		d( b) c8( a)
		g4 r8. d'16-.\f es8.-. f16-.
		es4-. r8. c,16-. g'8.-. f16-.
		es4-. r8. b'16-. c8.-. g'16-.
		g4-. r8. g16-. as8.-. g16-.
		f4-. c'-. r
		R2.*3%		39
		d,8.(\p cis16 d8. cis16 d8. b16)%		42
		c!8.( b16 c8. b16 c8. a16)
		bes!8.( a16 bes8. a16 bes8. g16)
		c8.( b16 c8. b16 c8. b16)
		c8.( b16 c8. d16) d8.( es16)
		d8 b b b b b
		c c c c c c
		b b b b b b
		fis fis fis fis c' c
		c4( b a)
		b2._\attacca\fermata
		\bar "||"
		\time 4/4
	}
}
