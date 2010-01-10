\version "2.13.9"

\include "defs.ily"

violinIAllegro = \relative c'
{
  \key ees \major
  bes4\p |
  g'4.( ees8) aes( f ees d) |
  ees4( bes) r8 bes( ees g) |
  bes2.~ bes16( aes g aes) |
  fis4( g) r8 ees'16\f f g aes bes g |
  c4. ees,,8 d4 bes'' |
  aes4. c,,8 b4 g'' |
  f4. aes,,8 g4 ees'' |
  d8 r <bes aes'>4. <bes aes'>8 <bes g'> <bes g'> |
  <bes f'>4 <d, bes' bes'> r bes'8(\p g) |
  f( ees) bes'( g) f( ees) c'( aes) |
  g( f) f4 r f8 f |
  f( g aes a) bes4( aes) |
  fis8( g) r g-. g( aes) r aes-. |
  a( bes) r ees16( d c8) f16( ees d8) bes'16( aes |
  g8) g-. r g,-. g( aes) r aes-. |
  a( bes) r ees16( d c8) f16( ees d8) bes'16( aes |
  \crescTextCresc
  g8)\< ees16( d c8) f16( ees d8) bes'16( aes g8) ees16( d |
  c8) f16( ees d8) bes'16( aes g) ees-. g-. bes-. aes-. f-. aes-. c-. |
  bes4~\f bes16 aes g f ees d c bes aes g f ees |
  c'4 aes, r8 ees''16 aes c8 c |
  bes bes4 g16 ees bes8 r <d f, bes,> r |
  bes'4~ bes16 aes g f ees d c bes aes g f ees |
  c'4 aes, r8 ees''16 aes c8 c |
  bes bes4 g16 ees bes8 bes <d f,> <d f,> |
  <ees ees, g,>4 r bes8.(\p g16) bes8.( g16) |
  c4. bes8-. aes-. g-. f-. ees-. |
  bes2.( c16 bes c d) |
  ees8 r g r ees r r4 |

  %A
  r8 ees\p ees ees r d( ees f) |
  r ees ees ees r g g g |
  f bes, d bes ees bes f' bes, |
  d4( ees) r2 |
  ees1 |
  e8( g c, aes' d, f bes, g') |
  r ees ees ees r d d d |
  ees4 r r8 ees' ees ees |
  ees4.( f16 g aes4 g) |
  c,( f bes, ees) |
  f f \appoggiatura g16 f8. ees16 f8. g16 |
  \repeat unfold 2
  {
    ees8 \repeat unfold 7 bes, |
    r bes'( d f aes f ees d) |
  }
  ees ees, ees ees r g g g |
  r bes bes bes bes( d) d( f) |
  r f, f f f( c') c( ees) |
  r d d d d( bes ees a,) |
  bes \repeat unfold 7 d, |
  r \repeat unfold 7 c |
  r \repeat unfold 7 c |
  c( f) f f f4 f'8( d) |

  %B
  c( bes) f'( d) c( bes) g'( ees) |
  d( c) c4 r c8 c |
  c( d ees e f4 ees) |
  cis( d) r2 |
  f,4 r f r |
  r g( c bes) |
  a r r2 |
  bes1~ |
  bes4 r8 bes16( a g8) c16( bes a8) f'16( ees) |
  cis8( d) r d-. d( ees) r ees-. |
  e( f) r f-. fis( g) r g-. |
  aes1 |
  aes,4-.\f f-. d-. bes-. |
  << {s8\p} {\repeat unfold 14 g'} >> ees ees |
  \crescTextCresc
  \repeat tremolo 8 d16\< \repeat tremolo 8 d |
  \repeat tremolo 8 ees \repeat tremolo 8 a |

  %C
  bes4.\f des'8 c4 a,, |
  g4. bes''8 a4 f, |
  ees4. ges'8 f4 des, |
  c e' a,, ees'' |
  d16 c d ees f ees d c bes a g f ees d c bes |
  g'4 g, r8 bes'16 ees g8 g |
  f f4 d16 bes f8 r <a f c> r |
  bes16 c d ees f ees d c bes a g f ees d c bes |
  g'4 g, r8 bes'16 ees g8 g |
  f f4 d16 bes f8 f a a |
  <bes d,>4 r f'8.(\p d16) f8.( d16) |
  g4. f8-. ees-. d-. c-. bes-. |
  f2.( g16 f g a) |
  bes4 r f'8.( des16) f8.( des16) |
  ges4. f8-. ees-. des-. c-. bes-. |
  aes2.( bes16 aes bes c) |

  %D
  des8 \repeat unfold 7 des, |
  r \repeat unfold 7 des |
  r ges-. ges-. ges-. ges-. ges( f ees) |
  r e( f) f-. f4 r |
  r2 r8 aes'( f des) |
  r2 r8 f( des bes) |
  r ees,( ges bes f aes ges ees) |
  c2( des8) des'[( ees f]) |
  ges2( f4) r |
  ges2( f4) r |
  R1*2 |
  r4 r8 e16( d cis8) g'16( fis e8) cis'-. |
  d4 r8 f,16( e d8) a'16( g f8) d'-. |
  ees4 r8 ees,16( d c8) ges'16( f ees8) c'-. |
  ees4 r8 bes,16( aes ges8) ges'16( f ees8) bes'-. |
  d4 r8 d,16( c b8) b'16( a g8) d'-. |
  ees4 r8 ees,16( d c8) g'16( f ees8) c'-. |
  ees4 r8 aes,,16( g fis8) ees'16( d c8) fis-. |
  g4 r r8 g, g g |
  fis4 r r8 fis fis fis |
  g4 r r8 g g g |
  fis4 r r8 fis fis fis |
  g4 r r8 g g g |
  a4 r r8 a a a |
  aes4 r r8 aes aes aes |
  aes4 r r8 bes, bes bes |
  g'4.( ees8) aes( f ees d) |
  ees4( bes) r8 bes ees g |
  bes2.~ bes16( aes g aes) |
  fis4( g) r8 ees'16\f f g aes bes g |
  c4. ees,,8 d4 bes'' |
  aes4. c,,8 b4 g'' |
  f4. aes,,8 g4 ees'' |
  d8 r <bes aes'>4. <bes aes'>8 <bes g'> <bes g'> |
  <bes f'>4 <d, bes' bes'> r2 |
  r8 ees\p ees ees r d( ees f) |
  r ees ees ees r g g g |
  f bes, d bes ees bes f' bes, |
  d4( ees) r2 |
  ees1 |
  e8( g c, aes' d, f bes, g') |
  r ees ees ees r d d d |
  ees4 r r8 ees' ees ees |
  ees4.( f16 g aes4 g) |
  c,4( f bes, ees) |
  f4 f \appoggiatura g16 f8. ees16 f8. g16 |
  \repeat unfold 2
  {
    ees8 \repeat unfold 7 bes, |
    r8 bes'( d f aes f ees d) |
  }
  ees ees, ees ees r des des des |
  r c c c c4 r |
  r8 f f f f f ees ees |
  d( bes') bes, bes bes4 bes''8( g) |
  f( ees) bes'( g) f( ees) c'( aes) |
  g( f) f4 r f8 f |
  f( g aes a bes4 aes) |
  fis( g) r2 |
  bes,4 r bes r |
  r f2 f4 |
  f4~( f16 g f g bes8 aes g f) |
  fis( g) r g-. g( aes) r aes-. |
  a( bes) r ees16( d c8) f16( ees d8) bes'16( aes |
  g8) g-. r g-. g( aes) r aes-. |
  a( bes) r ees,16( d c8) f16( ees d8) bes'16( aes |
  g4) ees,8 ees r4 f8 f |
  r4 g8 g r4 aes8 aes |
  bes1 |
  des4-.\f bes-. g-. ees-. |
  << {s8\p} {\repeat unfold 16 c'} >> |
  r g g g r g g g |
  r f f f r f f f |
  \repeat unfold 2
  {
    \times 2/3 {ees'8 d c} \times 2/3 {bes c d} \times 2/3 {ees f g} \times 2/3 {aes g f} |
  }
  ees4 r r \times 2/3 {f,8 ees d} |
  ees4 r r \times 2/3 {f8 ees d} |
  \times 2/3 {ees8 ees ees} ees4 \times 2/3 {r8 g g} g4 |
  \times 2/3 {r8 bes bes} bes4 \times 2/3 {r8 ees ees} ees4 |
  \crescTextCresc
  g8 g, g g g\< g g g |
  \repeat tremolo 8 aes16 \repeat tremolo 8 d,16 |
  ees4.\f c''8 bes4 d,, |
  c4. aes''8 g4 bes,, |
  aes4. f''8 \repeat tremolo 8 ees16 |
  ees16 g g g \repeat tremolo 4 g g ees' ees ees \repeat tremolo 4 ees |
  ees2 r2\fermata |
  ees,16 f g aes bes aes g f ees d c bes aes g f ees |
  c'4 aes, r8 ees''16 aes c8 c |
  bes bes4 g16 ees bes8 r <d f, bes,> r |
  ees16 f g aes bes aes g f ees d c bes aes g f ees |
  c'4 aes, r8 ees''16 aes c8 c |
  bes bes4 g16 ees bes8 bes <d f,> <d f,> |
  <ees ees, g,>4 r bes8.(\p g16) bes8.( g16) |
  c4. bes8-. aes-. g-. f-. ees-. |
  bes2.( c16 bes c d) |
  ees4\f r <ees ees'> <ees bes' g'> |
  <ees g,> r <ees ees'> <ees bes' g'> |
  <ees g,>2 r |
}

violinIRomanze = \relative c'
{
  \key aes \major
  r8 c\p c c r c c c |
  r des des des r des des des |
  r c r des r ees r des |
  r c( ees c) bes4 r |
  r8 c c c r c c c |
  r des des des r des des des |
  des2( c8) r f r |
  ees( c) des( bes) c4 r |
  ees'4.(\f aes8) c, r c r |
  des( ees f des) bes4 r8 bes\p |
  c r des r ees r f8.( des16) |
  \crescTextCresc
  c2 bes8( c\< des d) |
  ees4.(\f aes8) c, r c r |
  des( ees f des) bes4 r8 ees,\p |
  ees( g bes des c ees aes f) |
  ees r g r aes4 r |
  r8 bes,, bes bes r bes bes bes |
  r c c c r c c c |
  aes''4..\f f32( g aes8.) f32( g aes8.) d,16 |
  ees8 \appoggiatura f16 ees16(\p d ees8) f-. g-. aes-. a( bes) |
  r bes,, bes bes r bes bes bes |
  r c c c r c c c |
  d'8[\f r16 d32( ees] f8[) r16 f32( g] aes8[) r16 aes32( bes] c8[) r16 d,] |
  ees4 r r d(\p |
  ees) r r d( |
  ees) r r2 |
  <ees ees,>1\f |
  ees4.( aes8) c, r c r |
  des( ees f des) bes4 r8 bes\p |
  c r des r ees r f8.( des16) |
  \crescTextCresc
  c2 bes8( c\< des d) |
  ees4.(\f aes8) c, r c r |
  des( ees f des) bes4 r8 ees,\p |
  ees( g bes des c ees aes f) |
  ees r g r aes4 r |
  c,8 r e r f4 r |
  r8 f,( aes f) aes( f) f( d) |
  r g( bes g) bes( g) g( e) |
  aes4~( aes16 bes aes bes) c8( aes) c( aes) |
  g2 f8( g aes a) |
  bes4.( ees8) g, r g r |
  aes( bes c aes) f4 r8 f |
  g r aes r bes r c8.( aes16) |
  g2 f8( g aes a) |
  bes4.( ees8) g, r g r |
  aes( bes c aes) f4 r8 d |
  ees2 e8( f g aes) |
  g g d d ees4 r |
  r8 fes\sfp fes fes fes fes fes fes |
  r8 g\sfp g g g g g g |
  r8 aes\sfp aes aes aes aes aes aes |
  r8 des\sfp des des des des des des |
  ces'2\f d,, |
  ees4 r8. ees'32( f g8[) r16 g32( aes] bes8[) r16 d,] |
  ees4 r8. ees32( f g8[) r16 g32( aes] bes8[) r16 d,] |
  ees4 r8. ees,32(\p f g8[) r16 g32( aes] bes8[) r16 bes32( c] |
  des4) r8. f32( ees des8[) r16 des32( c] bes8[) r16 bes32( aes] |
  g4) ees'-.( ees-. ees-.) |
  ees4.( aes8) c, r c r |
  des( ees f des) bes4 r8 bes |
  c r des r ees r f8.( des16) |
  c2 bes8( c des d) |
  ees8 c, c c r c c c |
  r des des des r des des des |
  des2( c8) r f r |
  ees( c) des( bes) aes ees'( aes bes) |
  c4.( des16 c) bes8-. g( bes c) |
  des4.( ees16 des) c8( ees) des( f) |
  \appoggiatura f16 ees8 des16 c \appoggiatura ees16 des8 c16 bes aes8 ees( aes bes) |
  c4.( des16 c) bes8-. g( bes c) |
  des4.( ees16 des) c8( ees) des( f) |
  \appoggiatura f16 ees8 des16 c \appoggiatura ees16 des8 c16 bes aes8 aes'( f ees) |
  d8-. aes'( f ees d c bes aes) |
  g-. des''( bes aes g f ees d) |
  des4.( ees16 des) c8( ees) des( f) |
  \appoggiatura f16 ees8 des16 c \appoggiatura ees16 des8 c16 bes aes4 r |
  ees'8 r g r aes r r4 |
  ees8 r des r c r r4 |
  ees8 r g, r aes r r4 |
}

violinIRondo = \relative c'
{
  \key ees \major
  r8 |
  bes\p bes bes bes bes bes |
  bes4.( d8) r r |
  d d d d d d |
  d4.( ees8) r r |
  bes4.( c) |
  bes4.~ bes4 d8 |
  ees4( d8) ees4( f8) |
  ees4.( d8) r bes'\f |
  ees ees ees ees ees ees |
  ees4( e8) f8 r bes, |
  f' f f f f f |
  f4( fis8) g8 r ees-.\p |
  ees-. f-. g-. aes-. bes-. c-. |
  bes,-. c-. d-. ees-. f-. g-. |
  f-. g-. aes-. bes,-. c-. d-. |
  ees4 g8-.\f f4( g8) |
  f4( g8) f4( g8) |
  aes4 f8-.\p f-. g-. aes-. |
  bes-. g-. ees-. f-. g-. f-. |
  ees8 r g-.\f f4( g8) |
  f4( g8) f4( g8) |
  aes4\fermata r8 d,,4.(\p |
  ees) d8-. ees-. d-. |
  ees4. d4.( |
  ees) d8-. ees-. d-. |
  ees4\f bes''16 bes bes4 g16 g |
  g8 ees ees ees bes bes |
  bes4 ees16 ees ees4 bes16 bes |
  bes8 g g g ees ees |
  \repeat unfold 4 {ees8 bes g'} |
  ees4 r8 <ees bes' g'>4 r8 |
  <ees g,>4 r8 r4 r8 |
  bes4.(\p d) |
  ees8-. bes( c d ees f) |
  g4.( f) |
  g8-. d( ees f g aes) |
  bes4.~( bes4 g'8) |
  bes4( aes8 f4 d8) |
  ees4 r8 r4 bes8 |
  g4.( f8) r r |
  ees'4.\( \appoggiatura g16 f8 ees f\) |
  ees4 r8 r4 r8 |
  g4.\( \appoggiatura bes16 aes8 g aes\) |
  g4 r8 r4 r8 |
  r8 g( bes,) r g( f') |
  ees4 r8 r4 r8 |
  r8 f( bes,) r f( ees') |
  d4 r8 r4 r8 |
  d4.~( d4 e8) |
  f r d16( ees f8) r8 d16( ees |
  f8) r d16( ees f8) d-. g-. |
  ees-. r c16( d ees8) r c16( d |
  ees8) r c16( d ees8) c-. f-. |
  d-. r a'16( c bes8) r a16( c |
  bes8) r a16( c bes8) bes-. a16( c |
  bes8) r fis16( a g8) r fis16( a |
  g8) r fis16( a g8) g-. fis16( a |
  g8) r d16( f ees8) r d16( f |
  ees8) r d16( f ees8) ees-. d16( f |
  ees8) r c'16( bes a8) r c16( bes |
  a8) r c16( bes a8) a-. c16( bes |
  a8) r r c,, d ees |
  d4. c8 d ees |
  d bes'-. a-. g-. f-. ees-. |
  d-. g-. f-. ees-. d-. c-. |
  bes4 r8 c8 d ees |
  d4. c8 d ees |
  d4 r8 ees4 r8 |
  d4 r8 c4 r8 |

  %C
  bes8\f bes' bes bes d d |
  d f f f bes bes |
  bes 4 r8 r4 r8 |
  R2. |
  f,4.(\p g |
  aes d,) |
  ees8 bes bes bes bes bes |
  bes4.( d8) r r |
  d d d d d d |
  d4.( ees8) r r |
  bes4.( c) |
  bes4.~ bes4 d8 |
  ees4( d8) ees4( f8) |
  ees4.( d8) r bes'\f |
  ees8 ees ees ees ees ees |
  ees4( e8) f r bes, |
  f' f f f f f |
  f4( fis8) g8 r ees\p |
  ees-. f-. g-. aes-. bes-. c-. |
  bes,-. c-. d-. ees-. f-. g-. |
  f-. g-. aes-. bes,-. c-. d-. |
  ees-. f-. g-. aes-. bes-. c-. |
  bes-. aes-. g-. f-. ees-. d-. |
  ees-. d-. ees-. f-. g-. aes-. |
  g-. f-. ees-. d-. c-. b-. |
  c-.\f b-. c-. des-. ees-. f-. |
  ees-. des-. c-. bes-. aes-. g-. |
  aes ees\p ees ees ees ees |
  r ees ees ees ees ees |
  r ees ees ees ees ees |
  r ees ees ees( g bes) |
  c( ees des) des( f ees) |
  ees4( f16 g aes8) c,-. c-. |
  c4( d16 e f8) f,( des') |
  c4.( bes8) r r |
  \repeat unfold 3 {r ees, ees ees ees ees |}
  r ees ees ees( bes' des) |
  c( aes ees') des( bes f') |
  ees4( f16 g aes8) ees( c) |
  bes4( des16 ees f8) f,( g) |
  bes4.( aes8) r r |
  r bes,-. bes-. r bes-. bes-. |
  des'8( bes g ees des) r |
  r c c r d d |
  d4.( ees8) ees'-. ees-. |
  ees4( f16 g aes8) c,-. c-. |
  c4( d16 e f8) aes,-. aes-. |
  aes( des) c-. \appoggiatura c16 bes8 aes-. g-. |
  bes4.( aes8) r r |
  r ces,( bes) r ces( bes) |
  des'( bes g ees des) r |
  r c c r d d |
  d4.( ees8) ees'-. ees-. |
  ees4( f16 g aes8) c,-. c-. |
  c4 d16( e f8) aes,-. aes-. |
  aes( des) c-. \appoggiatura c16 bes8-. aes-. g-. |
  aes r c16( des ees8) r c16( des |
  ees8) r c16( des ees8) c-. f-. |
  des8-. r bes16( c des8) r bes16( c |
  des8) r bes16( c des8) bes-. ees-. |
  c-. r e16( g f8) r e16( g |
  f8) r e16( g f8) f-. e16( g |
  f8) r d16( f ees8) r d16( f |
  ees8) r d16( f ees8) ees-. d16( f |
  ees8) r c'16( bes a8) r c16( bes |
  a8) r c16( bes a8) a-. c16( bes |
  a8) ees ees ees c c |
  c4. ees, |
  d4 r8 r4 r8 |
  ces''2.(\f |
  bes4) r8 r4 r8 |
  a,8\p a a a a a |
  bes4 r8 r4 r8 |
  ces'2.(\f |
  bes4) r8 r4 r8 |
  a,8\p a a a a a |
  bes8 d, d r ees ees |
  r f f r g g |
  aes aes\f aes aes d d |
  d f f f aes aes |
  aes4 r8 r4 r8 |
  R2. |
  bes,,8\p bes bes bes bes bes |
  bes4.( d8) r r |
  d d d d d d |
  d4.( ees8) r r |
  bes4.( c) |
  bes4.~ bes4 d8 |
  ees4( d8) ees4( f8) |
  ees4.( d8) r bes'\f |
  ees8 ees ees ees ees ees |
  ees4( e8) f r bes, |
  f' f f f f f |
  f4( fis8) g8 r ees-.\p |
  ees-. f-. g-. aes-. bes-. c-. |
  bes,-. c-. d-. ees-. f-. g-. |
  f-. g-. aes-. bes,-. c-. d-. |
  ees r g16( aes bes8) r g16( aes |
  bes8) r g16( aes bes8) g-. c-. |
  aes8-. r f16( g aes8) r f16( g |
  aes8) r f16( g aes8) f-. bes-. |
  g r g,16( aes bes8) r g16( aes |
  bes8) r g16( aes bes8) g-. c-. |
  aes-. r f16( g aes8) r f16( g |
  aes8) r f16( g aes8) f-. bes-. |
  g r f'16( d ees8) r f16( d |
  ees8) r f16( d ees8) ees-. f-. |
  g-. r aes16( f g8) r aes16( f |
  g8) r aes16( f g8) g-. aes-. |
  bes-. ees, ees ees ees ees |
  r ees, ees ees ees ees |
  r ees ees ees ees ees |
  r c'-. c-. c-. c( aes) |
  g g' g g g g |
  g g g g g g |
  g ees bes g ees bes |
  d d d d d d |
  ees4 g'8-.\f f4( g8) |
  f4( g8) f-. f( g) |
  aes4 f8-.\p f-. g-. aes-. |
  bes-. g-. ees-. f-. g-. f-. |
  ees r g-.\f f4( g8) |
  f4( g8) f-. f( g) |
  aes4\fermata r8 d,,4.(\p |
  ees) d8-. ees-. d-. |
  ees4. d( |
  ees) d8-. ees-. d-. |
  ees4\f bes''16 bes bes4 g16 g |
  g8 ees ees ees bes bes |
  bes4 ees16 ees ees4 bes16 bes |
  bes8 g g g ees ees |
  \repeat unfold 4 {ees bes g'} |
  ees4 r8 r4 r8 |
  <ees bes' g'>4 r8 <ees bes' bes'>4 r8 |
  <ees g,>4 r8 r4 r8 |
}
