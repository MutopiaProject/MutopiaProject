\version "2.18.0"
violaFirstMov =  \relative f {
  \key d \minor
  \clef alto

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    f8-.\f f-. f-. f-. r f-. f-. f-.
    | r g-. g-. g-. r g-. g-. g-.
    | a2 ~ a4. cis,8
    | d( e f d) e4-. r
    | r8 f'-.\p f-. f-. r f-. f-. f-.
    | r g-. g-. g-. r g-. g-. g-.
    | a2 ~ a4 r
    | r2 r4 r8 f'-.
    | e4-. r8 d-. cis4-. r8 d,-.

    % 10
    | cis4-. r8 f,-. e4-. r8 a-.\f
    | g-. c-. bes-. c-. bes4 r
    | d8-. r g,-. r f4-. r
    | f'2( bes,)
    | c2( f,)
    | bes8-. bes-. bes-. bes-. bes'-. bes-. bes-. bes-.
    | bes-. bes-. bes-. bes-. a4 f
    | f2 r8 f-. f-. f-.
    | g( f) f-. f-. <g, d'>2\fz
    | c2( c,4) r

    % 20
    | e8\fz e' e e e e e e
    | f,\fz \repeat unfold 7 { <a f'> }
    | d-. d-. r d'-. r g,-. r a-.
    | bes( e,) f-. a-. bes( e,) f-. a-.
    | bes( e,) f-. a-. bes( e, f)-. r
    | f2( e
    | d e4) r8 f-\< ~
    | f-\!-. d'-\<[ ~ d-\!]-. c-\<[ ~ c-\!]-. bes-\<[ ~ bes-\!]-. r
    | f2( e
    | d e4) r8 a-\< ~ 

    % 30
    | a-\!-. bes-\<[ ~ bes-\!]-. g-\<[ ~ g-\!]-. a-\< ~ a-\!-. g8-\< ~
    | g4-.-\! r8 g8-\< ~ g4-.-\! r8 bes,
    | as4 as'8-. bes-. as-. r r4
    | c,8 r e!-. f-. e-. r r4
    | f4 as,2 as'8.( f16)
    | es4 es2 es4
    | <as, es'>2 f'
    | g <es bes'>
    | c'4 r des,2(
    | c) e,!

    % 40
    | f4 f'2 f,4
    | e! r r8 c( c') c-.
    | c,4 r r8 c( c') c-.
    | c,4 r r8 c( c') c-.
    | c,4 r r2
    | fis2( g4) bes'
    | bes8 bes bes bes a4 f
    | f2 r8 g-. g-. g-.
    | g( f) f-. f-. <g, d'>2\fz
    | c2. c4 ~

    % 50
    | c c2 c4 ~
    | c c2 c4 ~
    | c8 c-. c-. c-. c4 r
    | g'8-.\p g-. g-. g-. g4 r
    | a,8-.\f bes-. a-. bes-. a4 r
    | g'8-. g-. g-. g-. g4 r
    | R1
  }

  \repeat volta 2 {
    | r8 fis,-.\f fis-. fis-. r fis-. fis-. fis-.
    | r g-. g-. g-. r fis-. fis-. fis-.
    | r g-. g-. g-. r g-. g-. g-.

    % 60
    | r fis-. fis-. fis-. r fis-. fis-. fis-.
    | r g-. g-. g-. r es'-. es-. es-.
    | r f-. f-. f-. r a,-. a-. a-.
    | bes4 r r2
    | R1*2
    | g'2( c,)
    | R1
    | r4 c( f,) bes(
    | e,) a( d,) r

    % 70
    | R1
    | r2 gis(
    | a4) r f'2(
    | bes,) c(
    | f,) d'(
    | g,) a(
    | d,4) d' r es
    | as8\fz as as as as as as as
    | g\fz c, c c c c c c
    | g'\fz c c c c\p c c c

    % 80
    | f, f f f f f f f
    | f f f f f f f f
    | e e e e e e e e
    | d'2( e,)
    | dis( a')
    | gis8-. gis,-. gis-. gis-. r gis-. gis-. gis-.
    | r a a a r a a a
    | r gis gis gis r gis gis gis
    | r a a a r a a a
    | r gis gis gis r gis gis gis

    % 90
    | r gis gis gis r gis gis gis
    | r gis\pp r gis r gis r gis
    | r4 gis-.( gis-. gis-.)
    | e2( g!4 c)
    | b2\<( <b d>)
    | <g e'>1\!\f
    | <g d'>
    | <g d'>
    | cis8-.\ff r e r <a, g'>4 r\fermata
    | r8 f-.\p f-. f-. r f-. f-. f-.

    % 100
    | r g-. g-. g-. r g-. g-. g-.
    | a2 ~ a4. cis,8
    | d( e f d) e4-. r
    | r8 f'\f f f r f f f
    | r g g g r g g g
    | a2 ~ a4 r
    | r2 r4 r8 f'-.
    | e4-. r8 d-. cis4-. r8 d,-.
    | cis4-. r f,2(\p
    | e) r4 r8 d'-.\f

    % 110
    | d4. c8-. bes-. a-. bes-. g-.
    | f4 r8 g-. c,4 r
    | r r8 a'-. d,4 r8 d'-.
    | e4 g2 g4
    | f( a f d)
    | bes'( a g) r8 d'-\< ~
    | d4-.-\! r8 bes-\< ~ bes4-\!-. r8 a-\< ~ 
    | a4-\!-. r8 g-\< ~ g4-\!-. r
    | f4.( g16 f) g4 cis,
    | d8-. f4( g16 f) g8-. g-. cis,-. cis-.

    % 120
    | d4 r8 g-. f-. d-. r e-.
    | f4 c'( bes c)
    | bes2( c)
    | d2 a4\fermata r8\fermata a8-\< ~
    | a4-.-\! r8 g-\< ~ g4-\!-. r8 f-\< ~ 
    | f4-\!-. r8 e-\< ~ e4-\!-. r8 e
    | d2\f d16( f) bes( c) d8-. d-.
    | es4 r es,16( f) a( c) es8-. c-.
    | d4 r d,16( f) bes( c) d8-. d-.
    | es4 r <c, es> r

    % 130
    | r8 a'-.(\p a-. a-.) r bes(-. bes-. bes-.)
    | r8 g-.( g-. g-.) r8 f-.( f-. f-.)
    | r8 a-.( a-. a-.) r8 a-.( a-. a-.)
    | r8 d-.( d-. d-.) r8 e-.( e-. e-.)
    | r8 d-.( d-. d-.) r8 d-.( d-. d-.)
    | r8 g,-.( g-. g-.) f4 r
    | r8 a-.( a-. a-.) a4 r
    | r g,(-.\pp g-. g)-.
  }

  \alternative {
    {
      | f1
    }

    {
      | d2.\fermata r8\fermata r
    }
  }

  % 140
  | r8 a'-\< ~ a4-\!-. r8 bes-\< ~ bes4-\!-.
  | r8 g-\< ~ g4-\!-. r8 a-\< ~ a4-\!-.
  | d,8\f r e r cis r d r
  | gis2 d'8 e4 f16 d
  | e8 cis a16( b a cis) b( cis b d) cis( d cis e)
  | d8-. d-. r d e16( f e d) e( f e d)
  | cis8-. cis-. r cis d16( e d cis) d( e d c)
  | b2 cis4.(\trill b16 cis)
  | d1 ~
  | d2 e ~

  % 150
  | e8-. r f-. r bes-. r g-. r
  | f4 a, c!2
  | bes( g)
  | f8-.\ff r a-. r a-. r <a g'>-. r
  | <a a'>-. r <a g'>-. r <a f'>-. r <a e'>-. r
  | <a f'>4 r r2

  \bar "|."
}
