\version "2.6.0"
violinIFirstMov =  \relative bes' {
  \key es \major
  \clef violin

  \repeat volta 2 {
    bes16\f
    | g4( as)
    | bes8 r r8. c16\p
    | f,4( g)
    | as8 r r8. bes16\f
    | es,4( f)
    | g8 r r8. es16\p
    | as4( a)
    | bes8 r r8.
  }

  \repeat volta 2 {
    bes16\f
    | es4( des)

    % 10
    | c8 r8 r8. bes'16\p
    | as4( e)
    | f8 r r8. bes16\f
    | as8. e16 f8. as16
    | g8. d16 es!8. d16
    | c8. bes16 as8. g16
    | g4( f8)-.[ r16 bes]\p
    | g4( as!)
    | bes8 r r8. c16
    | f,4( \grace as8 g4)

    % 20
    | f8 r r8. bes16
    | g4 as8.(\trill g32 as)
    | bes8 r r8. es16-.\p
    | as,8-. r r8. c16-.
    | f,8-. r r8. ces'16-.
    | d,8-. r r8. ces'16(
    | es,8)-.[ r16 bes'(] c,!8)-.[ r16 as'](
    | bes,8)[ r16 g']( as,8)[ r16 f']
    | g,8.( bes16) es8. es16
    | f8.( g16) as8.( c16)

    % 30
    | bes8.( d16) es8.( es,16)
    | f8.( g16) as8.( c16)
    | bes8.( g16) es8. es16
    | g16( f as g) bes( as c bes)
    | bes8.( es16) g8[ r16 es,16]
    | f8.[( g16) as8.( d,16])
    | es8 r r8.
  }

  \repeat volta 2 {
    r16
    | r8 bes''4\p c8 ~
    | c[ es, d] r
    | r as'4 e8 ~

    % 40
    | e[ g f fis]
    | g g4 d8 ~
    | d f es! bes'
    | c, f4 es8 ~
    | es d bes r16
  }

  \repeat volta 2 {
    r16
    | g bes as g f as g f
    | e g bes c des bes g e
    | f as g f g bes as g
    | as bes c bes as g f e
    | f e f g as g as d,!

    % 50
    | es! d es f g fis g g,
    | as c es e f! d es a,
    | bes es g es bes8 r
    | es'2-\< ~
    | es ~
    | es8-\!\f d4 c8 ~
    | c ces bes as
    | g4 as8.[(\trill g32 as)]
    | bes8 r r4
    | r8. es16[\mf c'!8-.] r

    % 60
    | r8. c,16[ as'8-.] r
    | r8. ces,16[ as'8-.] r
    | bes,4(\p as
    | g f
    | es) r8. es'16
    | d8.( es16) f8.( as16)
    | g8.( f16) es8 r
    | d,2(
    | es)(
    | <as, d>)

    % 70
    | <g es'>(
    | <as d>)
    | <g es'>4 r8.
  }

  \repeat volta 2 {
    bes'16\f
    | es8. g16 f8.\trill\fz es16
    | d8.\trill\fz c16 bes8. es16
    | as8. g16 f8.\trill\fz e16
    | f8.( c32 as) f8[ r16 bes16]
    | g'8. f16 es!8.\trill\fz d16
    | es8.( bes32 g) es8. bes''16
    | as8.\trill\fz g16 f8.\trill\fz es16

    % 80
    | d8.\trill\fz c16 bes8 r16
  }

  \repeat volta 2 {
    bes16
    | g8. bes16 es8. g,16
    | as8. c16 es8. e16
    | f8. as16 g8. bes16
    | as8.\trill\fz g16 f8[ r16 e]
    | f8. g16 as8. d,16
    | es!8. f16 g8. es16
    | c8.\trill\fz bes16 as8.\trill\fz g16
    | g4( f8)-.[ r16 bes]
    | es8. g16 f8.\trill\fz es16

    % 90
    | d8.\trill\fz c16 bes8. bes16
    | as'8. f16 g8. es16
    | d8.\trill\fz c16 bes8[ r16 es]
    | g,8. es'16 as,8. es'16
    | bes8. c16 des8[ r16 bes]\p
    | c8.( des16) es8[-. r16 g,]
    | as8.( bes16) c8-.[ r16 f,]
    | as8.( bes16) ces8[ r16 ces](
    | bes8)[-. r16 bes]( as8)[-. r16 as](
    | g8)[-. r16 g]( f8)[-. r16 f](

    % 100
    | es4) r8. es'16
    | d!4( c)
    | bes8.( as16) g8[ r16 es]
    | f8.( g16) as8.( c16)
    | bes8.( g16) es8[( r16 es')]
    | d4( c)
    | bes8.( as16) g8[( r16 bes)]
    | bes4 as8.( f16)
    | es4 r8.
  }

  \repeat volta 2 {
    bes'16\p
    | g4( as)

    % 110
    | bes8 r r8. c16
    | f,4( g)
    | as8 r r8. bes16
    | es,4( f)
    | g8 r r8. es16
    | as4( a)
    | bes8 r r8.
  }

  bes16\f
  | es g! bes g des c! des c
  | des( c) f( e) as( g) des'( bes)
  | as c as f e bes' g e

  % 120
  | f f, as c f as c bes
  | as c as e f c f as
  | g bes g d es! bes g' es
  | d( c) c( bes) bes( as) as( g)
  | g4( f8)-. r
  | r16 es'(\p d es) r es( d es)
  | r es( c' bes as! g f es)
  | es(\( d) c'( bes)\) f(\( es) c'( bes)\)
  | es,( d) g( f es d c bes)
  | r es( f es) r es( f es)

  % 130
  | r es( f es) \grace g f(\( es) \grace g f( es)\)
  | r es-. as-. c-. es8 r
  | r16 c,-. f-. as-. c8 r
  | r16 d,-. f-. as-. ces8 r
  | r16 bes[( bes,8)] r16 as'[( as,8)]
  | r16 g'[( g,8)] r16 f'[( f,8)]
  | r16 es'[( es,8)] r8. es16
  | f8.( g16) as8.( c16)
  | bes8.( es16) g8[ r16 es,]
  | << { f8.( g16) as8.( c16) } { s8 s8_\turn s8 s8\turn } >>

  % 140
  | bes8.( g16) es8[ r16 es]
  | g16(-\< f as g) bes( as c bes)-\!
  | bes(-\> es) g-. f-. es-. d-. c-. bes-.-\!
  | as\pp g f es d c bes as
  | g8 r r4

  \bar "||"

  R2*7
  | r4 r8 es''\mf
  | d4( es)
  | f r8. g16
  | c,4( d)
  | es r8 g
  | a,4 bes8 c16 d
  | es d es d es g f es
  | d bes d es f d f g

  % 160
  | as! g f es d c bes f'
  | g8[ es-. es-. es-.]
  | es( d16 c) d8 r
  | r des[-. des-. des-.]
  | des( c16 bes) c8 r
  | r bes[-. bes-. bes-.]
  | bes[( es,) as-. as-.]
  | as4( g8) bes
  | c,4 r
  | g'8.(\trill fis32 g) c8 c,16( d!)

  % 170
  | es8[ c'-. c-. c-.]
  | f,8.(\trill e32 f) bes8 bes,16( c)
  | des8[ bes'-. bes-. bes-.]
  | bes( as16 g) as8 r
  | R2*4
  | r4 r8 g'\mf
  | es4( f)

  % 180
  | g r8 g
  | d4( e)
  | f r8 f
  | c4( d)
  | es r8 g ~
  | g( f16 e) f8 es
  | d f c' bes
  | g4 as8.(\trill g32 as)
  | bes4 r8 c
  | f,4 g8.(\trill f32 g)

  % 190
  | as4 r8 bes
  | es,4( f)
  | ges4. f16 es
  | d-\< es f ges f bes, c d-\!
  | es\f g! bes g des c des c
  | des( c) f( e) as!( g) des'( bes)
  | as c as f e bes' g e
  | f f, as c f as c bes
  | as c as e f c f as
  | g bes g d es! bes g' es

  % 200
  | d( c) c( bes) bes( as) as( g)
  | g4( f8)-. r
  | r16 es'(\p d es) r es( d es)
  | r es( c' bes as g f es)
  | es(\( d) c'( bes)\) f(\( es) c'( bes)\)
  | es,( d) g( f es d c bes)
  | r es( f es) r es( f es)
  | r es( f es) \grace g f(\( es) \grace g f( es)\)
  | r16 es-. as-. c-. es8 r
  | r16 c,-. f-. as-. c8 r

  % 210
  | r16 d,-. f-. as-. ces8 r
  | r16 bes[( bes,8)] r16 as'[( as,8)]
  | r16 g'[( g,8)] r16 f'[( f,8)]
  | r16 es'[( es,8)] r8. es'16
  | << { f8.( g16) } { s8 s8\turn } >> as8.( c!16)
  | bes8.( es16) g8[ r16 es,]
  | << { f8.( g16) } { s8 s8\turn } >> as8.( c16)
  | bes8.( g16) es8[ r16 es]
  | g16(-\< f as g) bes( as c bes)
  | bes( es g) f-. es-. d-. c-. bes-.

  % 220
  | as g f es d c' bes as-\!
  | g8^\markup { \italic "sempre più " \dynamic "f" } g16 f es d c bes
  | as g f es d c bes as
  | g bes es g bes,\ff d f as
  | g bes d es bes d f as
  | g8-. r <d bes'>-. r
  | <es g>-. r <d, bes' f'>-. r
  | <es bes' g'>4 r

  \bar "|."
}
