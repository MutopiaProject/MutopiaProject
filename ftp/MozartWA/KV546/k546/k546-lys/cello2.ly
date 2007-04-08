\version "2.10.14"

\include "defs.ly"

celloSndo = \context Voice = vlc {
	\relative c {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\clef bass
		\key c \minor
		\time 4/4
		<g g'>4-.\f <g g'>-. <c, c'>-. d'16( es f g
		as4-.) as-. b,-. r8 as'(
		fis g) r f( d es! cis d
		b c!) r c,16-.^\stacc d-. es4-. c-.
		r8 c'-. c-. c-. c4.(\trill b16 c)
		bes!4( a g f) ~
		f8^\stacc e16-. d-. e8-. c-. r f'16-. es!-. d8-. c-.
		b4-. d-. g-. r
		r8 g,( a b c as f g)
		es4 c r2%		10
		r8 a'16-. g-. fis8-. e-. d-. d'( e fis)
		g4 r r2
		R1
		<g, g'>4-. <g g'>-. <c, c'>-. d'16( es f g
		as!4-.) as-. b,-. r8 as'(
		fis g) r f( d es! cis d)
		c!4 r r8 f16 g as8 c,
		bes!4.(\trill a16 bes) es,8 c'16 d es8 g,
		as!8.(\trill g32 as) a8.(\trill g32 a) bes2
		bes1%		20
		bes2 bes
		bes4 bes4. bes'8( as! g)
		f( es des c bes as! g bes)
		c,-. des''!( b c) r as!( fis g)
		r f!( d es cis d) r c(
		a bes! gis a fis g) r4
		r8 es'( cis d) r bes'( g as!
		fis g e f dis e!) r4
		R1
		es!4-. es-. as,-. bes16( c des es%		30
		f4-.) f-. g,-. r
		ges'-. ges-. a,-. r
		r2 r8 es'-. es-. es-.
		es4.(\trill d!16 es) d8-. f-. f-. f-.
		f4.(\trill es16 f) es8( f es d)
		c-. bes-. as4-. g-. r
		f f4. f'8( es d
		c4) r r2
		g4-. g-. d'-. c16( bes a g
		fis4-.) fis-. es'-. r8 fis,(%		40
		a g) r a( c bes d c
		es d) r4 r2
		R1
		r2 as'!4-. as-.
		des,-. es16( f ges as bes4-.) bes-.
		c,-. des16( es f ges as4-.) as-.
		bes,-. c16( d! es f ges4-.) f-.
		es-. r r2
		R1*2%		49
		r2 <g,! g'!>4-. <g g'>-.%		51
		<c, c'>-. d'16( es f g as4-.) as-.
		b,-. r8 as'( fis g) r f(
		d es cis d b c) c,-. c'-.
		bes!4-. fis-. g-. f-.
		es8-. g'-. g-. g-. g4.(\trill f16 g)
		as4( e) f ~ f16( es des c)
		bes4 r r2
		r8 bes-. bes-. bes-. bes4.(\trill a16 bes)
		as!4 e( f es%		60
		d!) r c''8.( bes16 a g fis e
		d4) r <g, g'>-. g'-.
		b,8.( c16 d es! f! g as!4 g8 f)
		es4 b( c f,)
		es r8 bes''!8( g as fis g
		e f!-.) f-. f-. f4.(\trill e16 f)
		bes,4 r r2
		r8 g-. g-. g-. as8.(\trill g32 as) ges8.(\trill f32 ges)
		f8-. f-. a-. a-. bes8.(\trill a32 bes) as8.(\trill g32 as)
		g8-. g-. b-. b-. c8.(\trill b32 c) bes8.(\trill a32 bes)%		70
		a2.( as4)
		g8-. g'( f d) es8.(\trill d32 c) b8.(\trill a32 g)
		c4 r es r
		r8 f-. f-. f-. f4.(\trill es16 f)
		es4 r r2
		r8 c-. c-. c-. c4.(\trill b16 c)
		f,4-. f-. c'-. bes!16( as g f
		e4-.) e-. des'4.(\trill c16 bes)
		as2 des
		g,8-. g-. g-. g-. g4.(\trill f16 g%		80
		as8) as-. a8.(\trill g32 a bes8) bes b8.(\trill a32 b)
		c8.(\trill b32 c) cis8.(\trill b32 cis) d4 r
		R1
		r2 d4-. d-.
		g,-. a16( bes c d es4-.) es-.
		fis,-. r8 es'( cis d) r4
		c!-. c-. g'-. f!16( es d c
		b4-.) b-. as'!-. r8 b,(
		d c) r d( f es) r f(
		as g) r4 r2%		90
		<g, g'>4-. <g g'>-. <c, c'>-. d'16( es f g
		as4-.) as-. b,-. r8 as'(
		fis g) r f( d es cis d)
		b( c!) c-. c-. d4.(\trill cis16 d)
		g,4 r r2
		r <c, c'>4-. <c c'>-.
		<g' g'>-. f'16( es d c b4-.) b-.
		as'-. r8 b,( des c) c4
		r8 bes!16-. c-. des-. c-. bes-. as-. g8-. g16-. as-. bes-. as-. g-. f-.
		e4-. e-. des'-. r%		100
		fis,-. fis-. es'!-. r
		b-. b-. as'!-. r
		R1
		r2 <g, g'>4-. <g g'>-.
		<c, c'>-. d'16( es f g a4-.) a-.
		b,-. c-. <g g'>-. <g g'>-.
		<c, c'>-. d'16( es f g as!4-.) as-.
		b,-. r8 as'( fis g e f)
		d( es!) f-. d-. g4-. g,-.
		c,16 c' c c c, c' c c c, c' c c c, c' c c%		110
		d, d' d d d, d' d d d, d' d d d, d' d d
		es, c' c c f, c' c c g c c c g des' des des
		as c c c a d d d g, es' es es g, f' f f
		es, c' c c f, c' c c g c c c g des' des des
		as c c c a d! d d g, es' es es g, d' d d
		<c, c'>4 d'16( es f g as4-.) as-.
		b,-. r8 as'( fis g) r g(
		e f!) r8. f16-. g4-. g,-.
		<c, c'> r r2
		\bar "|."
	}
}
