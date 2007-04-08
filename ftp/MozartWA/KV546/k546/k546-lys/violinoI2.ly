\version "2.10.14"

\include "defs.ly"

violinoISndo = \context Voice = vlI {
	\relative c'' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\set Staff.extraNatural = ##f
		\key c \minor
		\time 4/4
		R1*9
		c4-.\f c-. g-. a16( b c d%		10
		es4-.) es-. fis,-. r8 es'(
		cis d) r c( a bes! gis a)
		fis( g! f) f' ~ f( e) es4
		d4.(\trill c16 d) es4-. c-.
		r8 f-. f-. f-. f4.(\trill e16 f)
		es!4 ~ es8 d4( c b8)
		c c16 d es8 g, as!4.(\trill g16 as)
		bes,!8 d'16 es f8 as, g4.(\trill f16 g)
		c,8 f16 as c8 es, d c'( bes as)
		g( g' f es d c bes a)%		20
		f'( d16 bes) as!4. g8( g' f ~
		f es4 des8) <c c'>4-. c'-.
		f,-. g16( a bes! c des4-.) des-.
		e,-. r8 des'( b c) r bes(
		g as! fis g eis fis) r fis,(
		c' bes) r4 r8 g( a bes)
		b( c) r fis( g4) r8 fis,(
		c' bes!) g'( bes) bes4( c,8) r
		r c( f! as!) as4( bes,8) f' ~
		f es4( des c bes8 ~%		30
		bes) as4( des c bes8 ~
		bes) a4( es' des c8 ~
		c) f,( bes4) r2
		R1
		r2 c4-. c-.
		g'!-. f16( es d! c b4-.) b-.
		as'-. r8 b,( d c) r d(
		f es g f as g) r as(
		c, b) r4 r8 g( cis d)
		r a( d es) r a,( d c!)%		40
		r es,( g fis) r g( bes a)
		g( f! as! g bes as c bes)
		des( c es des) g,( as) r4
		R1
		as'4-. as-. des,-. es16( f ges as
		bes4-.) bes-. c,-. des16( es f ges
		as4-.) as-. bes,-. c16( d! es f
		ges8-.) bes,-. bes'4.( ces16 bes as4 ~
		as8) as,-. as'4.( bes16 as ges4 ~
		ges8) ges,-. ges'4.( as16 ges f4 ~%		50
		f8) f,-. f'4.( es8) d!8.(\trill c32 d)
		c4 r r2
		g4-. g-. d'-. c16( bes! a g
		fis4-.) fis-. es'-. r8 fis,(
		a g) r a( c bes c b
		d c) r d( f! es f e)
		g( f as! g bes as) r4
		r8 bes-. bes-. bes-. bes4.(\trill as16 bes)
		g4 r r2
		c4-. c-. f,8.( g16 a bes c d%		60
		es4-.) es-. fis,-. r
		a8.( g16 fis es d c b4) r
		r2 b16( c d es f! g a b
		c4) r r2
		r8 c-. c-. c-. c4.(\trill b16 c)
		c,4 r r2
		r4 r8 as'!( fis g e f
		d es!) r des( b c a bes
		gis a) r es'!( cis d! b c
		ais b) r4 r2%		70
		r8 c( d e) f8.(\trill e32 f) fis8.(\trill e32 fis)
		g4 r r2
		g4-. g-. c,-. d16( es! f! g
		as4-.) as-. b,-. r8 as'(
		fis g) r f( d es cis d)
		b( c!) c4.( des8 c bes)
		as4-. as'4.( g16 f e f g as
		bes8) bes-. bes-. bes-. bes4.(\trill as16 bes
		c4-.) c-. f,-. g16( as bes c
		des4-.) des-. es,!-. r8 des'(%		80
		b c) r es( cis d!) r f(
		d es) r bes!( bes, a) r4
		R1*2
		r2 g'4-. g-.
		d'-. c16( bes a g fis4-.) fis-.
		es'-. r8 fis,( a g) r g( ~
		g as!) r f!( c b) r d(
		b c es d) r es( g f)
		r f( as g4) f16-. es-. d8-. c-.%		90
		b4 r r2
		r d4-. d-.
		g,-. a16( b c d es4-.) es-.
		fis,-. r8 es'( cis d b c
		ais b) r as'!( fis g e f
		d es!) r4 r2
		r f,4-. f-.
		c'-. bes!16( as! g f e4-.) e-.
		des'-. r r8 bes16-. c-. des-. c-. bes-. as-.
		g8-. g16-. as-. bes-. as-. g-. f-. e8-. e'(-. e-. e-.)%		100
		r2 r8 a,( c a)
		r d16-. es!-. f!-. es-. d-. c-. b8-. b'( d b)
		R1
		f4-. f-. b,-. c16( d es f
		g8) g,-. g'4.( fis4 f8)
		d'-. f,-. e-. c'-. es,16 c' c c d, b' b b
		g es' es es g, es' es es fis, es' es es fis, es' es es
		f,! d' d d f, d' d d es, d' es, c' d, c' d, b'
		c, c' c c c, as' as as g, es' es es g, d' d d
		c4-. c-. g'-. f16( es d c%		110
		b4-.) b-. as'-. r8 b,(
		d c) r d( f es f e)
		g( f g fis as! g) r b,(
		d c) r d( f! es f e)
		g( f g fis as! g) r b,(
		d c) r4 c-. c-.
		g'-. f16( es d c b4-.) b-.
		<d, b' as'> r8. f'16-. es4-. d-.
		<g,, es' c'> r r2
		\bar "|."
	}
}
