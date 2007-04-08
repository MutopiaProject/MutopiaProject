\version "2.6.0"
celloFourthMov =  \relative bes, {
  \key bes \major
  \clef bass

  \repeat volta 2 {
    r4
    | r2 r4 bes8(-\markup { \italic "mezza voce" } c)
    | d4( es f es)
    | d-| c-| bes-| es,-| \fz
    | f2 r
    | r r4 bes8( c)
    | d4( es f es)
    | d-. e-.\fz f2
    | bes,4-. bes'-. bes,-.
  }

  \repeat volta 2 {
    r4
    | R1

    % 10
    | r2 r4 bes'8( a)
    | g4 g, d' d'
    | es( d8 c) b4-| r
    | R1*2
    | r2 r4 bes!8(\f a)
    | g( f e d) c4 c'8( bes)
    | a( f) c'( bes) a( f) c( bes)
    | a( f) c'( bes) a( f) r4
    | f r r2

    % 20
    | f4 r r2
    | f4\p r r2
    | f4 r r2
    | R1*2
    | r2 r4 bes8(\f c)
    | d4( es f es)
    | d-| c-| bes-| es,-|\fz
    | f1 ~
    | f ~

    % 30
    | f2. g'8( f)
    | es4-| f8( es) d4-| a-|
    | bes-| r r d-|
    | es-| e-|\fz f2
    | bes4-| f-| bes,-|
  }

  \key bes \minor

  \repeat volta 2 {
    r4
    | bes\f-| c-| des!-| es-|
    | f-| a-| bes-| as-|
    | ges-| f-| es-| ges-|
    | f-| es-| des-| c(
    | des) es-| c-| des-|

    % 40
    | es(\fz c) des-| g(
    | as)-| g( as)-|  as,-|
    | des-| des,-| r
  }

  c''-.\p
  | des-. c-. des-. d(\f
  | es)-| d( es)-| e-.\p
  | f-. e-. f-. f(\f
  | f)-| f2\fz ges!4(\p
  | f)-| ges( f)-| ges(
  | f)-| f-| f-| r
  | bes,,-|\f c-| des-| es-|

  % 50
  | f-| a-| bes-| as-|
  | ges( f es) es-|
  | es2.\fz a,4-|
  | bes-| r c-| r
  | des-| r r2
  | es4\p r f r
  | bes, r r c'-|\f
  | des-| c-| des-| d(\p
  | es)-| d( es)-| e-.\f
  | f-. e-. f-. f(\p

  % 60
  | f)-| f2 ges!4(\f
  | f)-| ges( f)-| ges(
  | f)-| f-| f-| r
  | bes,,-| c-| des-| es-|
  | f-| a-| bes-| as-|
  | ges( f es) es-|
  | es1\fz
  | R1
  | a,\fz

  % 69
  | R1*6

  \bar "||"
  \key bes \major

  | r2 r4 bes8(\f c)
  | d4( es f es)
  | d-| c-| bes-| es,-|\fz
  | f2 r
  | r4 bes r f'

  % 80
  | r g r d
  | es-| e-|\fz f2
  | bes,4-| bes'-| bes,-| r
  | R1
  | r2 r4 bes'8( a)
  | g4-| g,-| d'-| d'-|
  | es4( d8 c) b4-| r
  | R1*2
  | r2 r4 bes!8(\fz a)

  % 90
  | g( f e d) c4-| c'8( bes)
  | a( f) c'( bes) a( f) c( bes)
  | a( f) c'( bes) a( f) r4
  | f r r2
  | r4 f'8( g) a( f) r4
  | r f8(\p g) a( f) r4
  | R1*3
  | r2 r8 a,(\f bes c)

  % 100
  | d4( es f es)
  | d-| c-| bes-| es,-|\fz
  | f1 ~
  | f ~
  | f2 f'8-. fis-. g-. f-.
  | es-. g-. f-. es-. d4-| a-|
  | bes-| r r d-|
  | es2 e\fz
  | r4 r8 e, e4.(\trill d16 e)
  | f1 ~

  % 110
  | f
  | R1*3
  | bes'8(\p d c bes) a r r4
  | R1
  | r8 es'[( d c)] b4-| r
  | R1
  | r8 a[( bes! c)] d4-| r
  | r d( c) r

  % 120
  | r c( bes) r
  | R1
  | r2 r8 c,[(\f bes as)]
  | g( as g f) es( as g f)
  | es( f es d) c4-| f-|
  | bes r r8 f'[( g a]
  | bes4)-| r r8 f([ g a]
  | bes) f( g a bes) f( g a
  | bes) f( g a bes) f( g a
  | bes4) r f r

  % 130
  | g( e f es)
  | d-| c-| bes-| es,-|
  | f2 r
  | bes'4 r f r
  | g r d r
  | es-| e-| f2
  | bes,4-| bes'-| bes,-| r
  | R1*6
  | bes'4 r f r
  | g( e f es)
  | d-| c-| bes-| es,-|
  | f2 r
  | r4 bes\p r f'
  | r g r d
  | es-| e-| f2
  | bes,4\f r r2
  | bes4 r r2
  | bes4 r r8 d'-. c-. bes-.
  | a bes a g f d' c bes
  | a bes a g f g f es
  | d-. es-. d-. c-. bes-. c-. bes-. as-.
  | g as g f es4-| r
  | R1*4
  | r2 r8 bes''-.\ff a-. g-.
  | f-. g-. f-. es-. d-. bes'-. a-. g-.
  | f g f es d d' c bes
  | a bes a g f g f es
  | d es d c bes c bes a
  | g as g f es f es d
  | c1
  | des4( d es e)
  | f1

  % 170
  | f4-| f-| f-| f-|
  | bes r f' r
  | bes r f r
  | bes, r r2
  | f'2 r
  | <bes, d bes'> r

  \bar "|."
}
