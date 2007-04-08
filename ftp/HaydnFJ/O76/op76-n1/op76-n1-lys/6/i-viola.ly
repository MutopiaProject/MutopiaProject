\version "2.6.0"
violaFirstMov =  \relative bes {
  \key es \major
  \clef alto

  r16

  \repeat volta 2 {
    | bes4(\f c)
    | bes8 r r4
    | bes2(\p
    | c8) r r4
    | bes4(\f as)
    | g8 r r4
    | es4(\p ges)
    | bes8 r r8.
  }

  \repeat volta 2 {
    r16
    | bes4(\f as!)

    % 10
    | g!8 r r8. e'16\p
    | f4( g)
    | as8 r r8. c,16\f
    | as'8. g16 f8. bes,16
    | g'8. f16 es8. es16
    | es8. e16 f8. c16
    | bes4. r8
    | bes4(\p c)
    | bes8 r r4
    | bes2 ~

    % 20
    | bes8 r r4
    | bes4(\f as)
    | es8 r r4
    | es4-.\p r
    | f-. r
    | as-. r8. as'16
    | g4( f)
    | es( d)
    | es( g,)
    | as2(

    % 30
    | g
    | as)
    | g(
    | as
    | g
    | as)
    | g8 r r8.
  }

  \repeat volta 2 {
    r16
    | R2*7
    | r4 r8.
  }

  \repeat volta 2 {
    r16
    | R2*8
    | bes4(\p-\< es)
    | es,8-\! r r4
    | R2*2
    | bes'4(\f as)
    | es8 r r8. des'16-.\mf
    | c8-. r r8. bes16-.

    % 60
    | as8-. r r8. f16-.-\markup { \italic "dim." }
    | as8-. r r8. d16\p
    | es4( f
    | es d)
    | es( g
    | as d,)
    | es( g,)
    | as2(
    | g
    | f)

    % 70
    | g(
    | f)
    | g4 r8.
  }

  \repeat volta 2 {
    r16
    | bes4(\f c)
    | d8 r r4
    | as4( bes)
    | c8 r r4
    | g4( as)
    | bes8 r es8. es16
    | es4( f)
    | f r8.
  }

  \repeat volta 2 {
    r16
    | es4 g,8.( bes16)
    | as4 r8. g'16
    | as4 bes8.( g16)
    | as4 r8. des,16
    | c8. bes16 as8. ces16
    | bes8. as16 g8. g16
    | as4 ~ as8. a16
    | bes4 r
    | bes( c!)

    % 90
    | d8 r r4
    | d8. as'16 es8. g16
    | f8.\trill\fz es16 d8 r
    | bes4( as)
    | des r
    | R2*5

    % 100
    | es,2\p ~
    | es ~
    | es ~
    | es ~
    | es ~
    | es ~
    | es ~
    | es ~
    | es4 r8.
  }

  \repeat volta 2 {
    r16
    | r4 r8. as16\p

    % 110
    | f4( g)
    | as r8. g16
    | es4( f)
    | g r8. c16
    | bes8.( as16) g8.( f16)
    | es8.( ges16) f8.( es16)
    | d8 r r8.
  }

  \repeat volta 2 {
    r16
    | bes'4(\f as)
    | g!8 r r8. e'16
    | f4( g)

    % 120
    | as8 r r8. c,16
    | as'8. g16 f8. bes,16
    | g'8. f16 es8. es16
    | es8. e16 f8. a,16
    | bes4 r
    | << { es2 | es4 } \\ { bes(\p c) | bes } >> r
    | as'!4 g8.( es16)
    | bes4 r
    | des( c)

    % 130
    | g r
    | es-. r
    | c'-. r
    | as'-. r
    | g( f)
    | es( d)
    | es( g,)
    | as2( 
    | g
    | as)

    % 140
    | g(
    | as-\<
    | g-\>
    | f)\pp
    | g8 r r4
  }

  \bar "||"

  | r8 es'[-. es-. es-.]
  | es( d16 c) d8 r
  | r des[-. des-. des]-.
  | des( c16 bes) c8 r
  | r as[ g es']

  % 150
  | c[ f c d!]
  | es[ es, d d']
  | c,[ es f a]
  | bes4 r
  | R2*13
  | r4 r8 c'\mf
  | as4( bes)
  | c r8 c

  % 170
  | g4( a!)
  | bes r8 bes
  | f4( g)
  | as8 es4 c'8
  | bes4. es,8
  | f4. des'8
  | c4. f,8
  | g4. es'8
  | d!4. b,8
  | c[ c'-. c-. c-.]

  % 180
  | c( b16 a) b8 r
  | r8 bes![-. bes-. bes]-.
  | bes( a16 g) a8 r
  | r as![-. as-. as]-.
  | as( g16 f) g8 bes
  | c4 f,
  | bes r8 d,
  | es4 f8 as
  | f4 g8.(\trill f32 g)
  | as4 r8 g

  % 190
  | es4 f8.(\trill es32 f)
  | g4 r8 as
  | ges2
  | f4 r
  | bes,4(\f as)
  | g!8 r r8. e'16
  | f4 g8.(\trill f32 g)
  | as8 r r8. c,16
  | as'8. g16 f8. bes,16
  | g'8.[ f16 es8. es16]

  % 200
  | es8.[ e16 f8. a,16]
  | bes4 r8. bes'16\p
  | g4( as!)
  | bes r8. c16
  | f,4( \grace as8 g4)
  | f r8. bes16
  | g4 as8.(\trill g32 as)
  | bes8 r r8. es16-.
  | as,8-. r r8. c16-.
  | f,8-. r r8. ces'16-.

  % 210
  | d,8-. r r8. ces'16(
  | es,8)[-. r16 bes'(] c,!8)[-. r16 as'(]
  | bes,8)[-. r16 g'(] as,8)[-. r16 f'(]
  | g,8.) bes16( es8) es
  | as2(
  | g
  | as
  | g)
  | <bes, f'>(-\<
  | <bes es>

  % 220
  | <bes f'>
  | <bes es>4)-\! r
  | f2(\fz
  | es8)-. r d'-.\ff r
  | es-. r as-. r
  | bes-. r as-. r
  | g-. r <bes, as'>-. r
  | <bes g'>4 r

  \bar "|."
}
