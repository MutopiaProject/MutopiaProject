\version "2.6.0"
celloFirstMov =  \relative es {
  \key es \major
  \clef bass

  \repeat volta 2 {
    r16
    | es4(\f c)
    | g8 r r4
    | as'4(\p g)
    | f8 r r4
    | g4(\f f)
    | es8 r r4
    | c4(\p ces)
    | bes8 r r8.
  }

  \repeat volta 2 {
    r16
    | g'!4(\f f)

    % 10
    | e8 r r4
    | R2
    | r4 r8. e16\f
    | f8. g16 as8. d,16
    | es8. f16 g8. g,16
    | as4 ~ as8. as16
    | bes4. r8
    | es4(\p c)
    | g8 r r4
    | bes4( es,)

    % 20
    | bes'8 r r4
    | es2\f(
    | des8) r r4
    | c4-.\f r
    | as!-. r
    | f-. r
    | g( as)
    | bes bes
    | es2 ~
    | es ~

    % 30
    | es ~
    | es
    | es, ~
    | es ~
    | es ~
    | es ~
    | es8 r r8.
  }

  \repeat volta 2 {
    r16
    | R2*7
    | r4 r8.
  }

  \repeat volta 2 {
    r16
    | R2*8
    | es'4(\p-\< c)
    | g8-\! r r8. as16
    | bes4(\f es,)
    | d r
    | es'2(
    | des8) r r8. g16\mf
    | as8-. r r8. e16-.

    % 60
    | f8-. r r8. d!16-.-\markup { \italic "dim." }
    | f8-. r r8. f,16\p
    | g4( as)
    | bes bes
    | es2 ~
    | es ~
    | es ~
    | es
    | es, ~
    | es ~

    % 70
    | es ~
    | es ~
    | es4 r8.
  }

  \repeat volta 2 {
    bes'16\f
    | g4( as)
    | bes8 r r8. c16
    | f,4( g)
    | as8 r r8. bes16
    | es,4( f)
    | g r8. es16
    | as4( a)

    % 80
    | bes r8.
  }

  \repeat volta 2 {
    bes16
    | es4( des)
    | c8 r r8. bes'16
    | as!4( e)
    | f r8. bes16
    | as8.[ e16 f8. as16]
    | g8.[ d16 es!8. g,16]
    | as4 ~ as8. a16
    | bes4 r8. bes16
    | g4( as)

    % 90
    | bes r
    | d( es)
    | bes r
    | des( c)
    | g r8. es''16-.\p
    | as,8-. r r8. c16-.
    | f,8-. r r8. ces'16-.
    | d,!8-. r r8. d,16
    | es4( as
    | bes) bes

    % 100
    | es8.[( g16) bes8.( g16)]
    | as8.[( bes16) c8.( d16)]
    | es8.( d16) g8[ r16 g,16]
    | as8.[( bes16) c8.( d16)]
    | es4 r8. g,16
    | as8.[( bes16) c8.( d16)]
    | es8.( d16) g8[ r16 g,16]
    | as8.[( bes16) c8.( d16)]
    | es4 r8.
  }

  \repeat volta 2 {
    r16
    | r4 r8. f,16\p

    % 110
    | d4( es)
    | f r8. es16
    | c4( d)
    | es r8. as16
    | g8.[( f16) es8.( d16)]
    | c4( ces)
    | bes8 r r8.
  }

  r16
  | g'!4(\f f)
  | e r
  | R2

  % 120
  | r4 r8. e16
  | f8.[ g16 as8. d,16]
  | es!8.[ f16 g8. g,16]
  | as4 ~ as8. a16
  | bes4. r8
  | es4(\p c)
  | g r
  | bes( es,)
  | bes' r
  | es2(

  % 130
  | des4) r
  | c-. r
  | as!-. r
  | f-. r
  | g( as)
  | bes bes
  | es2 ~
  | es ~
  | es ~
  | es

  % 140
  | es, ~
  | es-\< ~
  | es-\> ~
  | es\pp ~
  | es8 r r4

  \bar "||"

  | R2*15

  % 160
  | r4 r8 bes'\mf
  | g4( as)
  | bes r8 c
  | f,4( g)
  | as r8 c
  | d,4 es8 f16 g
  | as g as g as bes c d
  | es d es d es8 e
  | f4( des')
  | c r

  % 170
  | r f,
  | bes r
  | r es,,
  | as8[ as'-. as-. as-.]
  | as( g16 f) g8 r
  | r bes,[-. bes'-. bes-.]
  | bes( as16 g) as8 r
  | r c,[-. c'-. c-.]
  | c( b16 a) b8 g,
  | as!2

  % 180
  | g4 r
  | r c,
  | f r
  | r bes!
  | es r8 es
  | as,4( a)
  | bes2 ~
  | bes16 a( bes a) bes8 bes
  | bes2 ~
  | bes16 a( bes a) bes8 bes

  % 190
  | bes2 ~
  | bes16 a( bes a) bes8 bes
  | bes2 ~
  | bes4 r8 bes\f
  | g4 f8.(\trill e32 f)
  | e4 r
  | R2
  | r4 r8. e'16
  | f8. g16 as!8. d,16
  | es8. f16 g8. g,16

  % 200
  | as4 ~ as8. a16
  | bes4 r
  | es4(\p c)
  | g r
  | bes( es,)
  | bes' r
  | es2(
  | des4) r
  | c-. r
  | as-. r

  % 210
  | f-. r
  | g( as)
  | bes bes
  | es2 ~
  | es ~
  | es ~
  | es ~
  | es
  | es,-\< ~
  | es ~

  % 220
  | es ~
  | es4-\! r
  | bes'2(\fz
  | es8) r bes-.\ff r
  | es-. r bes'-. r
  | es,-. r bes-. r
  | es-. r bes-. r
  | es,4 r

  \bar "|."
}
