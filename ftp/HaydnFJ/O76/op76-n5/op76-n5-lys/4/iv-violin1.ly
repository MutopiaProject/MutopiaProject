\version "2.6.0"
violinIFourthMov =  \relative f'' {
  \key bes \major
  \clef violin

  \repeat volta 2 {
    f8(-\markup { \italic "mezza voce" } es)
    | d4( es) c-. d8( c)
    | bes4( c) \grace { g16[( f e] } f4) g8( a)
    | bes4-| c-| d-| \grace { es16[( f] } g4)-|\fz
    | \acciaccatura d8 c( bes c d) c4-| f8( es)
    | d4( es) c-. d8( c)
    | bes4( c) \grace { g16[( f e] } f4) g8( a)
    | bes4-| \grace { g'16[( a] } bes4)-|\fz c,2\trill
    | bes4-. f-. d-.
  }

  \repeat volta 2 {
    a'8( bes)
    | c4( d es) bes8( c)

    % 10
    | d4( es f) g8( a)
    | bes4-| \grace { bes16[( c] } d4)-|\fz fis,2\trill
    | g2. f!8(\p g)
    | \acciaccatura bes8 as4( g8 f) es4 f
    | \acciaccatura as8 g4( f8 es) d4 es
    | \acciaccatura g8 f4( es8 d c4) d-|\f
    | e8( f g a) bes4-| e,-|
    | f\trill e f\trill e
    | f\trill e f a,8( bes)
    | c( a) c-. d-. es!( c) es-. f-.

    % 20
    | g2.( f8 es)
    | g2.(\p f8 es)
    | g( f) es( g) f( es) g( f)
    | es( g) f( es) g( f) es( g)
    | f( es) g( f) es( g) f(\f es)
    | d4( es) c-. d8( c)
    | bes4( c) \grace { g16[( f e] } f4) g8( a)
    | bes4-| c-| d-| \grace { es16[( f] } g4)-|\fz
    | \acciaccatura d8 c( bes c d) c4-| r
    | g'8( f) es4-| f-| d-|

    % 30
    | es8( d) c4-| d-| bes-|
    | c8( bes) a4 bes-. <f es'>-|
    | <f d'>-| <bes g'>-| <bes f'>-| <bes as'>-|
    | <bes g'>-| \grace { g'16[( a!] } bes4)-|\fz c,2\trill
    | bes4 r r
  }

  % Minore

  \key bes \minor

  \repeat volta 2 {
    f'8(\f bes)
    | des!( bes a c) bes4-| bes,8( ges')
    | f( bes, a es') des4-| d-|
    | es-| f-| ges-| c,-|
    | des!-| es\turn f-| <as,, as'>
    | <as as'> <as as'> <as as'> <as as'>

    % 40
    | <as as'>4.(^\fz ges'8) f4-| bes(
    | as)-| bes( as) ges'8( es)
    | des4-| des'-| r
  }

  ges,4-.\p
  | f-. ges-. f-. as(\f
  | ges)-| as( ges)-| bes-.\p
  | a-. bes-. a-. des(\f
  | c)-| des( c)-| bes8(\p e,)
  | f c bes'( e,) f c bes'( e,)
  | f c f c f4 f8(\f bes)
  | des( bes a c) bes4-| bes,8( ges')

  % 50
  | f( bes, a es') des4( d)
  | es( f ges) ges-|
  | a,,2\fz ~ a8 ges''-. f-. es-.
  | des des' c bes a ges' f es
  | des4( bes') bes bes
  | es,,,\p r f r
  | bes, r r ges''\f-|
  | f-| ges-| f-| as(\p
  | ges)-| as( ges)-| bes\f-|
  | a-| bes-| a-| des(\p

  % 60
  | c)-| des( c)-| bes8(\f e,)
  | f c bes'( e,) f c bes'( e,)
  | f c f c f4 f8( bes)
  | des( bes a c) bes4-| bes,8( ges')
  | f( bes, a es') des4-| d-|
  | es( f ges) ges-| 
  | a,,2.\fz a'8( bes)
  | c4-. c8( des) es4-. es8( f)
  | ges2.\fz es8(\p f)

  % 69
  | \repeat unfold 3 { ges4-. ges8( f) es4-. es8( f) }
  | ges4-. ges8( f) es4-. ges8(\pp f)
  | \repeat unfold 3 { es4-. ges8( f) } es4-. f8(\f es)

  \bar "||"
  \key bes \major

  | d4( es) c-. d8( c)
  | bes4( c) \grace { g16[( f e] } f4) g8( a)
  | bes4-| c-| d-| \grace { es16[( f] } g4)-|\fz
  | \acciaccatura d8 c( bes c d) c-. g'-. f-. es-.
  | d-. f-. es-. d-. c-. es-. d-. c-.

  % 80
  | bes-. d-. c-. bes-. a-. c-. bes-. a-.
  | g4-. \grace { g'16[( a] } bes4)\fz c,2\trill
  | bes4-. f-. d-. a'8( bes)
  | c4( d es) bes8( c)
  | d4( es f) g8( a)
  | bes4-| \grace { bes16[( c] } d4)\fz fis,2\trill
  | g2. f!8(\p g)
  | \acciaccatura bes8 as4( g8 f) es4 f
  | \acciaccatura as!8 g4( f8 es) d4 es
  | \acciaccatura g8 f4( es8 d) c4 d\fz-|

  % 90
  | e8( f g a!) bes4-| e,-|
  | f\trill e f\trill e
  | f\trill e f a,8-. bes-.
  | c( a) c-. d-. es!( c) es-. f-.
  | g2.( f8 es)
  | g2.(\p f8 es)
  | g( f) es( g) f( es) g( f)
  | es( g) f( es) g( f) es( g)
  | f( es) g( f) es( g) f(\f es)
  | d4( es) c-. d8( c)

  % 100
  | bes4( c) \grace { g16[( f e] } f4) g8( a)
  | bes4-| c-| d-| \grace { es16[( f] } g4)-|\fz
  | \acciaccatura d8 c( bes c d) c4 r8 as'
  | g-. f-. es-. g-. f es d f
  | es-. d-. c-. es-. d-. c-. bes-. b-.
  | c-. bes!-. a-. c-. bes4-| <f es'>-|
  | <f d'>-| <bes g'>-| <bes f'>-| <bes as'>-|
  | <bes g'>2 <e, des' bes'>
  | r4 r8 e e4.(\trill d16 e)
  | f1 ~

  % 110
  | f2 ~ f8 g(\p f es!)
  | d( f es d) c( es d c)
  | bes( d c bes) a( g' f es)
  | d4-| r r2
  | r r8 as'( g f)
  | es4-| r r2
  | r r8 g,( a! b)
  | c4-| r r2
  | r r8 g'( a b)
  | c4-| r r8 f,( g a)

  % 120
  | bes!4-| r r8 d( e fis)
  | g( fis g a) bes( c, d e)
  | f!( e f g) as4 d,-|\f
  | es!-| f-| g-| b,-| 
  | c-| d-| es8-| g( f es
  | d)es( d c bes)g'( f es
  | d) es( d c bes) g'( f es
  | d) g( f es d) g( f es
  | d) g( f es d) g( f es
  | d) f-. es-. d-. c-. es-. d-. c-.

  % 130
  | bes-. d-. c-. bes-. a-. f-. g-. a-.
  | c( bes) d( c) es( d) g( es)
  | \acciaccatura d8 c( bes c d) c-. g'-. f-. es-.
  | d f es d c es d c
  | bes d c bes as c bes as
  | g4-| \grace { g'16[( a!] } bes4)-| c,2\trill
  | bes4 r r8 d-. c-. bes-.
  | a-. c-. bes-. d-. c-. f-. e-. g-.
  | f a g e f d c bes
  | a c bes d c f e g

  % 140
  | f a g e f d c bes
  | a c bes d c es! d f
  | es( d es d) es-. g-. f-. es-.
  | d f es d c es d c
  | bes d c bes a f g a
  | c( bes) d( c) es( d) g( es)
  | \acciaccatura d8 c( bes c d) c-. g'-.\p f-. es-.
  | d-. f-. es-. d-. c-. es-. d-. c-.
  | bes d c bes as c bes as
  | g4-. bes'-. c,2\trill

  % 150
  | bes4\f bes'2 bes4 ~
  | bes bes2 bes4 ~
  | bes8 g-. f-. es-. d4-| e-|
  | f-| r r e-|
  | f-| r r a-|
  | bes-| r r d-|
  | es-| r g-| r
  | r2 r8 as,-.\p g-. fis-.
  | g-. as-. g-. fis-. g-. as-. g-. f-.
  | es( d es d) c-. g'-. f-. e-.

  % 160
  | f-. g-. f-. e-. f-. g-. f-. es-.
  | d( es d c) bes-. bes'-.\ff a-. g-.
  | f-. g-. f-. es-. d-. bes'-. a-. g-.
  | f-. g-. f-. es-. d d' c bes
  | a bes a g f g f es 
  | d es d c bes c bes a
  | g as g f es f es d
  | c1
  | des4( d es e)
  | f-| bes8-| d-| f4-| bes-|

  % 170
  | a-| c-| es-| a,-|
  | bes r c r
  | d r a r
  | bes r r2
  | <f, a f'>2 r
  | <bes, f' d'> r

  \bar "|."
}
