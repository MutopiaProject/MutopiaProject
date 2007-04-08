\version "2.6.0"
violinIIFourthMov =  \relative f' {
  \key bes \major
  \clef violin

  \repeat volta 2 {
    f8(-\markup { \italic "mezza voce" } a)
    | bes4 es,8( f) g4-. f8( es)
    | d4 c8( bes) a4 bes8( c)
    | d4-| es-| f-| \grace { g16[( a] } bes4)\fz-|
    | a8( bes a bes) a4-| f8( a)
    | bes4 es,8( f) g4-. f8( es)
    | d4 c8( bes) a4 bes8( c)
    | d-. d'(\fz c bes) bes4( a)
    | bes r r
  }

  \repeat volta 2 {
    f8( g)
    | a4( bes c) g8( a)

    % 10
    | bes4( c d) g8( fis)
    | g4-| bes,-| a8( es' d c)
    | bes4( c d) d8(\p es)
    | \acciaccatura g8 f4( es8 d) c4 d
    | \acciaccatura f8 es4( d8 c) bes4 c
    | \acciaccatura es8 d4( c8 bes a4) d8(\f c)
    | bes( a g f) e4-| g-|
    | f-| g-| f-| g-|
    | a-| g-| f-| f8( g)
    | a( f) a-. bes-. c( a) c-. d-.

    % 20
    | es2.( d8 c)
    | es2.(\p d8 c)
    | es8( d) c( es) d( c) es( d)
    | c( es) d( c) es( d) c( es)
    | d( c)es( d) c( es) f,(\f a)
    | bes4 es,8( f) g4-. f8( es)
    | d4 c8( bes) a4 bes8( c)
    | d4-| es-| f-| \grace { g16[( a] } bes4)\fz-|
    | a8( bes a bes) a4 f'8( es)
    | d4-| es-| c-| d8( c)

    % 30
    | bes4-| c-| a-| bes8( a)
    | g4-| a8( g) f4-| c'-|
    | bes-| es,-| d-| as''-|
    | g-| << { bes,2 a4 } \\ { g4\fz f es } >>
    | <d bes'> r r
  }

  \key bes \minor

  % Minore

  \repeat volta 2 {
    r4
    | f'-|\f es-| des!-| ges!-|
    | f-| c-| des-| bes,-|
    | bes'-| as-| ges-| es-|
    | f-| ges-| as-| es(
    | f) ges-| es-| f-|

    % 40
    | ges(\fz es) f-| e(
    | f)-| e( f) c-|
    | des-| r r
  }

  es'-.\p
  | des-. es-. des-. f(\f
  | es)-| f( es)-| g-.\p
  | f-. g-. f-. e(\f
  | f)-| e(\fz f)-| bes,(\p
  | a)-| bes( a)-| bes(
  | a)-| a-| a-| r
  | f'-|\f es-| des-| ges-|

  % 50
  | f-| c-| des-| bes,-|
  | bes'( as ges) es-|
  | ges2.\fz c4-|
  | des-| r es-| r
  | f-| r r2
  | es,4\p r f r
  | bes, r r es'-|\f
  | des-| es-| des-| f(\p
  | es)-| f( es)-| g-|\f
  | f-| g-| f-| e(\p

  % 60
  | f)-| e( f)-| bes,(\f
  | a)-| bes( a)-| bes(
  | a)-| a-| a-| r
  | f'-| es-| des-| ges-|
  | f-| c-| des-| bes,-|
  | bes'( as ges) es-|
  | ges1\fz
  | R1
  | es\fz

  % 69
  | R1*5
  | r2 r4 f8(\f a)

  \bar "||"
  \key bes \major

  bes4 es,8( f) g4-. f8( es)
  | d4 c8( bes) a4 bes8( c)
  | d4-| es-| f-| \grace { g16[( a] } bes4)-|\fz
  | a8( bes a bes) a4-| r
  | r f r es

  % 80
  | r d r f
  | g8-. d'(\fz c bes) bes4( a)
  | bes4 r r f8( g)
  | a4( bes c) g8( a)
  | bes4( c d) g8( fis)
  | g4-| bes,-| a8( es' d c)
  | bes4( c d) d8(\p es)
  | \acciaccatura g8 f4( es8 d) c4 d
  | \acciaccatura f8 es4( d8 c) bes4 c
  | \acciaccatura es8 d4( c8 bes) a4 d8(\fz c)

  % 90
  | bes( a g f) e4-| g-|
  | a-| g-| f-| g-|
  | a-| g-| f-| f8-. g-.
  | a8( f) a-. bes-. c( a) c-. d-.
  | es2.( d8 c)
  | es2.(\p d8 c)
  | es( d) c( es) d( c) es( d)
  | c( es) d( c) es( d) c( es)
  | d( c) es( d) c f,(\f g a)
  | bes4-| es,8( f) g4-. f8( es)

  % 100
  | d4 c8( bes) a4 bes8( c)
  | d4-| es-| f-| \grace { g16[( a] } bes4)-|\fz
  | a8( bes a bes) a8-| g'-. f-. es-.
  | d-. f-. es-. d-. c-. es-. d-. c-.
  | bes-. d-. c-. bes-. a4 g ~
  | g a-| bes-| c-|
  | bes-| es,-| d-| <bes' as'>-|
  | <bes g'>2 des,^\fz
  | r4 r8 e e4.(\trill d16 e)
  | f1 ~

  % 110
  | f2 r

  % Piu' allegro

  | R1*2
  | d8(\p f es d) c8 r r4
  | R1
  | r8 g'( f es) d4-| r
  | R1
  | r8 b( c d) es4-| r
  | R1
  | r8 b'( c d) es4-| r

  % 120
  | r8 a,( bes! c) d4-| r
  | r a!( g) r
  | r g( f) f-|\f
  | g-| as-| bes-| d,-|
  | es-| f-| g-| a!-|
  | bes r r8 es( d c
  | bes4)-| r r8 es( d c
  | bes) es( d c bes) es( d c
  | bes) es( d c bes) es( d c
  | bes4) r a r

  % 130
  | \stemUp bes( g f8) a,-. bes-. c-. \stemNeutral
  | d4-| es-| f-| bes-|
  | a8( bes a bes) a4-| r
  | f4 r es r
  | d r f r
  | g8( d' c bes) bes4( a)
  | bes-| f-| d-| r
  | f-| g-| a-| bes-|
  | a r r2
  | f4-| g-| a-| bes-|

  % 140
  | a r r2
  | f4-| g-| a-| bes-|
  | c r r2
  | bes4 r a r
  | \stemUp bes( g f8) a,-. bes-. c-. \stemNeutral
  | d4-| es-| f-| bes-|
  | a8( bes a bes) a4 r
  | r f\p r es
  | r d r f
  | g8( d' c bes) bes4( a)

  % 150
  | bes8-.\f g'-. f-. es-. d-. es-. d-. c-.
  | bes-. g'-. f-. es-. d-. es-. d-. c-.
  | bes4-| r r g-|
  | f-| r r g-|
  | f-| r r c'-|
  | bes-| r r f'-|
  | es-| r <es, bes' g'>-| r
  | R1
  | d'4\p r d r
  | es r r2

  % 160
  | c4 r c r
  | d r r8 bes-.\ff a-. g-.
  | f-. g-. f-. es-. d-. bes'-. a-. g-.
  | f g f es d d' c bes
  | a bes a g f g f es
  | d es' d c bes c bes a
  | g as g f es f es d
  | c1
  | des4( d es e)
  | f d'2 d4

  % 170
  | <es, c'>-| <es a>-| <es a>-| <es c'>-|
  | <d bes'> r <f es'> r
  | <f d'> r <f es'> r
  | <f d'> r r2
  | <c es a>2 r
  | <bes d bes'> r

  \bar "|."
}
