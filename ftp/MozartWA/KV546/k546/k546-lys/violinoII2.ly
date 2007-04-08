\version "2.10.14"

\include "defs.ly"

violinoIISndo = \context Voice = vlII {
	\relative c'' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\key c \minor
		\time 4/4
		R1*6
		g4-.\f g-. c,-. d16( es f g
		as4-.) as-. b,-. r8 as'(
		fis g) r f( d es cis d
		b c!) r c16-.^\stacc d-. es4-. c-.%		10
		r8 c-. c-. c-. c4.(\trill b16 c)
		bes!4 a g8 g'4 f8 ~
		f es4 d8 g4. fis8
		g2 ~ g8 g16 f! es8 d
		c4 r8 as'4 g16 fis g8 b
		c8.( bes!16) as4 g f!
		es r8 c c'16 bes as g f es d c
		f' es d c bes as g f g f es d c bes as g
		c8 as16 c f8 c bes as'( g f)
		es( bes' as g f es d es)%		20
		as( f) r es( cis d) r c'!(
		a bes g as g e f g)
		as!( a bes es,! des) bes'-. bes-. bes-.
		bes4.(\trill a16 bes) g8( as) es'( d!
		des c) r4 d-. d-.
		g,-. a16( bes c d es4-.) es-.
		fis,-. r8 es'8( cis d b c
		a bes!) r des( b c a! bes
		g as!) r ces( a bes g as
		fis g) r4 r2%		30
		r8 des-. des-. des-. des4.(\trill c16 des
		c8) es-. es-. es-. es4.(\trill des16 es
		des8) des4( c bes es8 ~
		es) des4( c b f'8 ~
		f) es4( d!8) g( as g f)
		es-. d-. c( b16 c) d4-. r
		d-. d4. d8( g f
		b c) r4 r2
		r g4-. g-.
		d'-. c16( bes! a g fis4-.) fis-.%		40
		es'-. r8 fis,( a g) r a(
		c b d c es d f e
		g f) ges4 ~ ges16( f es! des c bes! as ges)
		f4.( ges8) es2 ~
		es8 as,( des4.) as'8( ges f
		es f) ges4.( bes8 as ges)
		f( es d! bes) bes'4-. bes-.
		es,-. f16( ges as bes ces4-.) ces-.
		des,-. es16( f ges as bes4-.) bes-.
		c,!-. des16( es f ges as4-.) as-.%		50
		b,-. c16( d! es f g!2)
		es4 r8 c-. c'4.(\trill b16 c)
		d( c b a g4) r2
		R1*3
		c4-. c-. f,-. g16( as! bes! c
		des4-.) des-. e,-. r8 des'(
		b c) r bes( g as fis g
		e f!) r4 c'-. c-.%		60
		fis,8.( g16 a bes c d es4-.) es-.
		fis,-. r r2
		r d16( es f! g a b c d
		es8) g-. g-. g-. g4.(\trill fis16 g)
		g,4-. e( f! bes)
		as! r8 es'!( cis d b c
		a bes!) d,4( es as)
		g-. es4. es8-. es( e)
		f4.(\trill e16 f) f8-. f-. f( fis)
		g4.(\trill fis16 g) g8-. g-. g-. g-.%		70
		g4.(\trill fis16 g) c,8 es'( d c
		b4) r r2
		c,4-. c-. g'-. f!16( es d c
		b4-.) b-. as'-. r8 b,(
		d c) r d( f es g f
		as g bes as) g4( e)
		f-. as4.( bes16 c des c bes as
		g8) g-. g-. g-. g4.(\trill f16 g
		f4-.) f-. c'-. bes16( as g f
		es!4-.) es-. des'-. r8 es,(%		80
		ges f) r f( as! g) r g(
		bes a) r g'( g, fis) r4
		d'-. d-. g,-. a16( bes c d
		es4-.) es-. fis,-. r8 es'(
		cis d) r c( a bes c cis
		d4-.) es16( d c! bes a4-.) a ~
		a8 a!( es' d) r g,( b c
		es d) r as!( es d) as'4-.
		g-. r8 f( as g) r as(
		c b4 f'8 es) g,-. as4-.%		90
		d,-. r g-. g-.
		c,-. d16( es f g as4-.) as-.
		b,-. r8 as'( fis g e f)
		a,4 r r2
		r8 g'-. g-. g-. g4.(\trill fis16 g)
		c,4-. c-. g'-. f!16( es! d c
		b4-.) b-. as'-. r8 b,!(
		des c) c'4. bes!16-. c-. des-. c-. bes-. as-.
		g8-. g16-. as-. bes-. as-. g-. f-. e4-. e-.
		des'-. r r8 g,( bes g)%		100
		r a16-. bes-. c-. bes-. a-. g-. fis8-. fis'(-. fis-. fis-.)
		r f,!16-. g-. as!-. g-. f-. es-. d8-. f( as f)
		g4-. g-. c,-. d16( es f g
		as8) f-. f-. f-. f4.(\trill g16 f)
		e4-. es4. es'4( d16 c)
		f8-. d-. c-. e-. c16 es es es b d d d
		es c' c c es, c' c c es, fis fis fis es fis fis fis
		d f! f f d b' b b d, es c es c d b d
		g, g' g g as, c c c es, c' c c b, b' b b
		c4 r c,-. c-.%		110
		g'-. f16( es d c b4-.) b-.
		d8( c) r d( f es f e)
		g( f g fis as! g) r b,(
		d c) r d( f! es! f e)
		g( f g fis as! g) r b,(
		d c) r4 c-. c-.
		g'-. f16( es d c b4-.) b-.
		<as f' d'> r8. d'16-. c4-. <g, d' b'>-.
		<g es' c'> r r2
		\bar "|."
	}
}
