\version "2.18.2"

ViolinI_c = \relative as' {
  \global_c
  \override Beam.auto-knee-gap = #4.5
  \override TupletBracket.bracket-visibility = #'if-no-beam
  r2 as~ \p
  as4 g c2
  b2. as4 \tr
  g2 r \fermata
  \barNumberCheck 5
  b'4 \pocoF \acciaccatura as8 g8 \acciaccatura f es d8.( es32 f) es4
  c'4 b16( as) g( f) b4( es8) g,,
  b4 as \tr g r
  es'4 g8( b) b b32( a b c) d8 r
  es,4  es'16( c a es) es4 \tr d
  \barNumberCheck 10
  f4 b8( as!) g16-. g-. fis( g) r b-. a( b)
  r16 es-. d( es) g4 r16 f,-. e( f) r b-. a( b)
  r16 d-. cis( d) f4 r16 es,-. d( es) r g-. f( es)
  r16 d-. cis( d) r f-. es( d) r16 c-. h( c) g'8.( b,16)
  b4 \prall a es2 \<
  \barNumberCheck 15
  \slurDown d4 \f b''( \tr \grace { a16 b) } c,,4 es'' \slurNeutral
  d8( f32 d c b) c4 \tr b g8.( \p a16)
  b16-. f( es d) g8.( \< a16) b f \acciaccatura es8 d16 \acciaccatura c8 b16 c4 \tr \! \>
  b4 \! r r2
  f'4 \p \acciaccatura es8 d \acciaccatura c8 b a8.( b32 c) b4
  \barNumberCheck 20
  as'!16( \< f d b) as( f d as) as4 \! \>\tr g \!
  des''4 \p \acciaccatura c8 des \acciaccatura c des b'4 es,,
  des''8.( b16) f'8.( des16) des4 \tr c8 r
  c4 as,,8 c'' b4 g,,8 b''
  b,8.( \tuplet 3/2 { d32 c b) } as'8 g \tr f r r4
  \barNumberCheck 25
  es4 \pocoF g8( b) b8.( \tuplet 3/2 { c32 b a) } b4
  es8 as,!-. as-. as-. as4 \trill g
  c4 \acciaccatura b8 as \acciaccatura g f b4 \acciaccatura as8 g \acciaccatura f es
  \tuplet 3/2 { d16( es f) } as,4 g8 \tr f4 r
  b'4 es,8( des') c16-. c-. h( c) r as-. g( as)
  \barNumberCheck 30
  r16 es-. d( es) r c-. b( as) r b'-. a( b) r g-. fis( g)
  r16 es-. d( es) r b-. as( g) r as'-. g( as) r c-. b( as)
  r16 g-. fis( g) r b-. as( g) r f-. e( f) c'8.( es,16)
  es4 \prallprall d as,2 \<
  \slurDown g4 \f es''( \tr \grace { d16 es) } f,4 as' \slurNeutral
  \barNumberCheck 35
  g8( b32 g f es) f4 \tr es c'8.( \p d16)
  es16 b \acciaccatura b8 as16( g) c8.( \< d16) es b \acciaccatura as8 g16( \acciaccatura f8 es16) \! f4 \tr \>
  es4 \! r as,2~ \p
  as4 g c2
  b2. as4 \tr
  \barNumberCheck 40
  g16-. g-. as-. b-. c-. d-. es-. f-. g8 r f32( es16.) d32( c16.)
  b4( as) \tr g8 \pp es( f d)
  es8 r <g, es'> r <g es'>4 r \bar "|."
}