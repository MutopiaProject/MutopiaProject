\version "2.18.0"
celloFirstMov =  \relative d, {
  \key d \minor
  \clef bass

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    d8\f d'-. d-. d-. r d-. d-. d-.
    | r d-. d-. d-. r e-. e-. e-.
    | f( e f cis) d4 a
    | bes2( a4)-. r
    | r8 d'-.\p d-. d-. r d-. d-. d-.
    | r d-. d-. d-. r e-. e-. e-.
    | f( e f cis) d4( a8) r
    | R1*2

    % 10
    | r4 r8 d,-. cis4-. r8 c-.\f
    | bes-. a-. bes-. fis-. g4 r
    | a8-. r a-. r d,4-. r
    | R1*4
    | g'2( c,)
    | d2( g,)\fz
    | c8 c' c c c4 r

    % 20
    | \repeat unfold 2 { c,,8\fz c' c c c c c c }
    | c-. r bes-. r bes'-. r a-. r
    | e-. c-. f-. c-. e-. c-. f-. r
    | e,16( c e c) f( c f c) e( c e c) f8-. r
    | d''2( c
    | bes2.) r8 a-\< ~
    | a-.-\! bes-\<[ ~ bes]-\!-. c-\<[ ~ c]-\!-. c,-\<[ ~ c]-\!-. r
    | d'2( c
    | b c4) r8 d-\< ~

    % 30
    | d-.-\! g,-\<[ ~ g]-\!-. c-\<[ ~ c]-\!-. f,-\<[ ~ f]-\!-. bes-\< ~
    | bes4-.-\! r8 c,-\< ~ c4-\!-. r8 c
    | f4 r f r
    | e r e r
    | f,8 f' f f f f f f
    | g, g' g g g g g g
    | as4 r r2
    | R1*3

    % 40
    | f,2( des)
    | \repeat unfold 2 { c8[( c']) c-. r r2 }
    | c,8( c') c-. c-. c-. c-. c-. c-.
    | c,4 r r2
    | R1*2
    | g''2( c,)
    | d( g,)\fz
    | c8 c c c c c c c
    | f f f f f f f f

    % 50
    | f f f f f f f f
    | f f f f f4 r
    | e'8-.\p e-. e-. e-. e4 r
    | f,8-.\f f-. f-. f-. f4 r
    | e'8-.\p e-. e-. e-. e4 r
    | f,,16(\< g f e) f( g f e) f( g f e) f( g f e)
  }

  \repeat volta 2 {
    | d2\!\f( a')
    | g( d')
    | r8 es-. es-. es-. r es-. es-. es-.

    % 60
    | r d-. d-. d-. r d-. d-. d-.
    | r c-. c-. c-. r c'-. c-. c-.
    | r c-. c-. c-. r f,-. f-. f-.
    | bes4 r r2
    | R1
    | f2( bes,)
    | R1
    | a2( d,)
    | R1*3
    | d'2( bes)
    | a4 r d2(
    | g,2) a(
    | d,) bes''(
    | es,) f(
    | bes,) c
    | d8\fz d d d d d d d
    | es\fz es es es es es es es
    | e!\fz e' e e e\p e e e

    % 80
    | f2 r
    | R1*2
    | e,,8\p e' e e e e e e
    | e, e' e e e e e e
    | \repeat unfold 2 { e,2( b') f( c') }
    | e,( b')

    % 90
    | e,( b')
    | e,4( b') e,( b')
    | e,1
    | c8(-. c-. c-. c-.) c(-. c-. c-. c-.)
    | c-\< c c c c c c c-\!
    | c\f c'-. c-. c-. c-. c-. c-. c-.
    | b b b b b b b b
    | bes! bes bes bes bes bes bes bes
    | a-.\ff r a-. r a4 r\fermata
    | r8 d-.\p d-. d-. r d-. d-. d-.

    % 100
    | r d-. d-. d-. r e-. e-. e-.
    | f( e f cis) d4 a
    | bes2( a4-.) r
    | r8 d'\f d d r d d d
    | r d d d r e e e
    | f( e f cis) d4( a8) r
    | R1*2
    | r2 d,2(\p
    | cis) r4 r8 c-.\f

    % 110
    | bes-. a-. bes-. fis-. g4. c8-.
    | f,!4 r r r8 d'-.
    | g,4 r r r8 bes-.
    | \repeat unfold 20 { a } a4 r8 d-\< ~
    | d4-.-\! r8 g-\< ~ g4-\!-. r8 a-\< ~ 
    | a4-\!-. r8 a,-\< ~ a4-\!-. r
    | \repeat unfold 16 { d8 }

    % 120
    | d-. d'-. cis-. a-. r d-. cis-. a-.
    | d4 fis,16( d fis d) g( d g d) fis( d fis d)
    | g2( a)
    | b cis4\fermata r8\fermata d8-\< ~
    | d4-\!-. r8 g,-\< ~ g4-\!-. r8 a-\< ~ 
    | a4-\!-. r8 a,-\< ~ a4-\!-. r8 a
    | bes\f bes bes bes bes bes bes bes
    | a a a a a a a a
    | bes bes bes bes bes bes bes bes
    | a a a a a4 r

    % 130
    | r8 fis''(-.\p fis-. fis-.) r g-.( g-. g-.)
    | r e(-. e-. e-.) r d(-. d-. d-.)
    | a2( d,)
    | e2( a,)
    | d( g,)
    | a( d,)
    | r8 a''(-. a-. a-.) d4 r
    | r a,(-.\pp a-. a)-.
  }

  \alternative {
    { d,1 }
    { fis2.\fermata r8\fermata r }
  }

  | r8 fis'-\< ~ fis4-\!-. r8 g-\< ~ g4-\!-.
  | r8 e-\< ~ e4-\!-. r8 f!-\< ~ f4-\!-.
  | r8 d\f r e r cis r d16( c)
  | \repeat unfold 3 { bes( c bes a) } bes8-. bes-.
  | a4 a a a
  | a1 ~
  | a ~
  | a
  | bes16( c bes a) bes( d c bes) a( bes a g) a( c bes a)
  | g( a bes c bes a g f!) e( f g a g f e d)
  | cis8-. r d-. r g-. r a-. r
  | \repeat unfold 8 { d,16( e d cis) }
  | d8-.\ff r a'-. r d-. r a'-. r
  | d,-. r a'-. r d,-. r a-. r
  | d,4 r r2

  \bar "|."
}
