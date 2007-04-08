\version "2.10.14"

\include "defs.ly"

violaSndo = \context Voice = vla {
	\relative c' {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\set Staff.extraNatural = ##f
		\clef alto
		\key c \minor
		\time 4/4
		R1*3
		c4-.\f c-. g-. a16( b c d
		es4-.) es-. fis,-. r8 es'(
		cis d) r c( a bes! gis a!
		fis g!) r f16-._\stacc g-. as!4-. f-.
		r8 f'-. f-. f-. f4.(\trill e16 f)
		es!4 d ~ d8 c4( b8)
		g'4-. es-. r8 c16-. bes!-. a8-. g-.%		10
		fis4-. a-. d-. r
		r8 d( e fis g es c d)
		es( c a b c) g-. c4 ~
		c b8( a16 b) c4 r8 g' ~
		g f16 es des8 c d4.(\trill c16 d)
		c8-. c-. f-. b,16( d) es8-. a,16( c) f,8-. as16( g)
		g8 es'16 f g8 es f as,16 bes c8 es,
		d f'16 g as8 d, es es,16 f g8 bes
		f4 r bes-. bes-.
		es,-. f16( g as bes c4) c4-.%		20
		d, r8 c'( a bes) r as(
		fis g e f e) c'( d e)
		f( c des a) bes!( f' e f)
		g4 e f r8 g,(
		e' f) r c4( bes!16. a32 bes8 a)
		es'!( d) r c( a bes fis g)
		gis( a) r c( a bes) r es(
		d4) des8( bes g4) r8 g'(
		e f d! es cis d) r4
		R1*2%		30
		r2 f4-. f-.%		32
		bes,-. c16( des es f ges4-.) ges-.
		a,-. r as'!-. as-.
		b,-. r r2
		c4-. c-. g'!-. f16( es d! c
		b4-.) b-. as'-. r8 b,!(
		d c) r d( f es g f
		as g) r as( c, b) r bes( ~
		bes a) r a( d c) r a(%		40
		c bes) r c( es d f es)
		r d,( f es g f as! g)
		bes( as c bes des c) es4 ~
		es8 as,( des4.) bes8( c as)
		f'2 ~ f8 f( es des
		c des) es4.( ges8 f es)
		d!( es) f4 ~ f8 es4( d8)
		es4-. es-. as,-. bes16( ces des es
		f4-.) f-. ges,-. as16( bes ces des
		es4-.) es-. f,-. g!16( as bes c!%		50
		d!4.) c8( b c4 b8)
		c-. g-. g'4.( f16 es) f4(
		f8 d) b4( bes8) g d'4 ~
		d8( c a bes) g( fis) es'4(
		d8) d-. d-. d-. d4.(\trill c16 d)
		g,8( es' c b d c4 des8)
		c4 r r2
		f,4-. f-. c'-. bes!16( as! g f
		e4) e-. des'-. r8 e,(
		g f) r g( bes as c bes%		60
		d! c) r4 r2
		d4-. d-. g,16( a b c d es! f g
		as!4-.) as-. b,-. r8 as'(
		fis g) r f( d es! cis d
		b c!) r4 r2
		r4 a( bes! es
		d8) bes-. bes-. bes-. bes4.(\trill a16 bes)
		es,4 a8( bes g as) r bes(
		b c b c a bes) r c(
		cis d) r f( d es! cis! d)%		70
		b( c!4 bes8) a( c b c)
		d-. g,( a b) c8.(\trill b32 c) d8.(\trill c32 d)
		es4 r g, r
		r8 d'-. d-. d-. d4.(\trill c16 d)
		g,8-. g( a b) d( c es d)
		f( e g f e4) r
		c-. c-. f,-. g16( as bes c
		des4-.) des-. e,-. r
		r as4.( f8) des'16( c bes as
		bes8) bes-. bes-. bes-. bes4.(\trill as16 bes%		80
		c8-.) c-. c8.(\trill b32 c d!8-.) d-. d8.(\trill c32 d)
		es8.(\trill d32 es) e8.(\trill d32 e) d4-. d-.
		g,-. a16( bes c d es!4-.) es-.
		fis,-. r8 es'( cis d) r c(
		a bes) r a( fis g4 a8)
		bes( a) r4 r8 d-. c16( bes a g)
		g8( fis) r a( c bes) r4
		r8 f'!-. f-. f-. f4.(\trill es16 f)
		f8( es c b) r c( es d)
		r d( f b,) c4-. f,-.%		90
		g-. r r2
		R1
		d'4-. d-. g,-. a16( b c d
		es4-.) es-. fis,-. r8 es'(
		cis d b c ais b!) r4
		R1*2
		f4-. f-. c'-. bes!16( as! g f
		e4-.) e-. des'-. r
		r8 bes16-. c-. des-. c-. bes-. as-. g8-. bes( des bes)%		100
		r c16-. d!-. es-. d-. c-. bes-. a8-. c( es c)
		r2 r8 d( f d)
		r2 c4-. c-.
		f,-. g16( as! bes c d4-.) d( ~
		d8 c) c-. c-. c4.(\trill b16 c)
		g2 r
		g'4-. g-. c,-. d16( es! fis g
		as4) as-. fis8( g e f)
		d( es!) f-. d-. g4-. g,-.
		g16 es' es es g, es' es es g, es' es es g, es' es es%		110
		g, f' f f g, f' f f d f f f b, as' as as
		g8-. g,( as4 g bes!)
		c2. g4 ~
		g( as g bes!)
		c2. g4
		es8. c'16 d( es f g as4-.) as-.
		b,-. r8 as'( fis g) r g(
		e f!) r8. as16-. g4-. <g, f'>-.
		<c, g' es'!> r r2
		\bar "|."
	}
}
