\version "2.10.14"

\include "defs.ly"

celloPmo = \context Voice = vlc {
	\relative c, {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\clef bass
		\key c \minor
		\time 3/4
		c4-.\f r8. c'16-.^\stacc g'8.-. f16-.
		es4-. r8. es16-. g,8.-. b16-.
		c4-. r8. g'16-. c,8.-. e16-.
		f4-. c-. r
		R2.
		f,8\p f f f f f
		f f es es b' b
		c( fis,) g4 r
		r8. g16-.\f es'4..-. d16-.
		c8.-. g16-. g'4..-. f16-.%		10
		es8.-. c16-. c'4..-. bes!16-.
		as4-. g-. r
		f,8.(\p e16 f8. e16 f8. e16)
		f4( as des)
		\repeat "tremolo" 6 es,!8
		\repeat "tremolo" 6 as
		\repeat "tremolo" 6 a
		\repeat "tremolo" 6 bes
		\repeat "tremolo" 6 b
		\repeat "tremolo" 6 c%		20
		\repeat "tremolo" 6 cis
		d d es! es cis cis
		d4 ~ d8. c!16-._\fStacc bes!8.-. a16-.
		g4-. r8. g16-. d'8.-. c16-.
		bes4-. r8. bes16-. d,8.-. fis16-.
		g4-. r8. d'16-. g,8.-. b16-.
		c4-. g-. r
		R2.*3%		28
		d8.(\p cis16 d8. cis16 d8. cis16)%		31
		d8 d d d d d
		g g as as fis fis
		g4 r r
		r8. g16-.\f es'4..-. d16-.
		c8.-. g16-. g'4..-. f16-.
		es8.-. c16-. c'4..-. bes!16-.
		as4-. g-. r
		f,8.(\p e16 f8. e16 f8. e16)
		\repeat "tremolo" 6 f8%		40
		\repeat "tremolo" 6 e
		\repeat "tremolo" 6 e
		\repeat "tremolo" 6 e
		e e e e e( bes'!)
		a a as as g g
		f f fis fis fis fis
		g8.( as16 g8. as16 g8.) g16(
		fis8) fis fis fis fis fis
		g8.( fis16 g8. fis16 g8.) g16(
		as8) as as as as as%		50
		g2.
		g_\attacca\fermata
		\bar "||"
		\time 4/4
	}
}
