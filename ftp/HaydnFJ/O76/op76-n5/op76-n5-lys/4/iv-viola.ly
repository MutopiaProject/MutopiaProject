\version "2.6.0"
violaFourthMov =  \relative c' {
  \key bes \major
  \clef alto

  \repeat volta 2 {
    r4
    | r c8(-\markup { \italic "mezza voce" } d es4) d8( es)
    | f4( g c,) d8( es)
    | f4-| es-| d-| c-|\fz
    | c4 r r2
    | r4 c8( d es4) d8( es)
    | f4( g c,) d8( es)
    | f4( g\fz f es)
    | d r r
  }

  \repeat volta 2 {
    r4
    | f4( es8 d) c4-| r

    % 10
    | g'4( f8 es) d4-| d'8( c)
    | bes4-| g-| c4( bes8 a)
    | g4( f8 es) d4-| r
    | r g\p \acciaccatura bes8 as4( g8 f)
    | es4 f \acciaccatura as8 g4( f8 es)
    | d4( es f) f-|\f
    | g8( a! bes c) d4-| bes8( g)
    | f4-| bes-| c-| bes8( g)
    | f4-| c8( bes) a( f) r4
    | f r r2

    % 20
    | <c a'>4 r r2
    | <c a'>4\p r r2
    | <c a'>4 r r2
    | R1*2
    | r4 c'8(\f d) es4 d8( es)
    | f4( g c,) d8( es)
    | f4-| es-| d-| c-|\fz
    | c2 r4 d'8( c)
    | b4-| c-| a-| bes8( a)

    % 30
    | g4-| a-| f-| d-|
    | es8( d) c4-| d-| f-| 
    | bes,-| r r f'-|
    | bes,-| des\fz f f
    | f r r
  }

  \key bes \minor

  \repeat volta 2 {
    r4
    | f,-|\f c'8( a) bes4-| c-|
    | des-| es8( f) bes,4-| f'-|
    | es-| d'-| es-| as,,-|
    | as'-| c-| des!-| c,(
    | des) es-| c-| des-|
    | es(\fz c as) des ~
    | des-| des2 es8( ges)
    | f4-| des,-| r
  }

  as'-.\p
  | as-. as-. as-. ces(\f
  | bes)-| ces( bes)-| des-.\p
  | c!-. des-. c-. bes(\f
  | a)-| bes( a)-| c\p ~
  | c-| c2 c4 ~
  | c-| c-| c-| r
  | f,-|\f c'8( a) bes4-| c-|

  % 50
  | des-| es8( f) bes,4-| f'-|
  | es( as bes) bes,-|
  | c2.\fz f4-|
  | f-| r f-| r
  | bes,-| r r2
  | es,4\p r f r
  | bes r r as'-|\f
  | as-| as-| as-| ces(\p
  | bes)-| ces( bes)-| des-|\f
  | c!-| des-| c-| bes(\p

  % 60
  | a)-| bes( a)-| c\f ~
  | c-| c2 c4 ~
  | c-| c-| c-| r
  | f,,-| c'8( a) bes4-| c-|
  | des-| es8( f) bes,4-| f'-|
  | es( as bes) bes,-|
  | c1\fz
  | R
  | c\fz
  | R1*6

  \bar "||"
  \key bes \major

  | r4 c8(\f d es4) d8( es)
  | f4( g c,) d8( es)
  | f4-| es-| d-| c-|\fz
  | c r r2
  | r4 d r a

  % 80
  | r bes r bes
  | bes-| g'(\fz f es)
  | d r r2
  | f4( es8 d c4) r
  | g'4( f8 es d4) d'8( c)
  | bes4-| g-| c4( bes8 a)
  | g4( f8 es) d4-| r
  | r g\p \acciaccatura bes8 as4( g8 f)
  | es4 f \acciaccatura as8 g4( f8 es)
  | d4( es f) f-|\fz

  % 90
  | g8( a! bes c) d4-| bes8( g)
  | f4-| bes-| c-| bes8( g)
  | f4 c8( bes) a( f) r4
  | f4 r r2
  | r4 a8( bes) c( a) r4
  | r a8(\f bes) c( a) r4
  | R1*3
  | r8 bes(\f c d) es4-. d8( es)

  % 100
  | f4( g c,) d8( es)
  | f4-| es-| d-| c-|\fz
  | c2 r8 es'-. d-. c-.
  | b-. d-. c-. bes-. a-. c-. bes-. a-.
  | g-. bes-. a-. g-. f-. fis-. g-. f-.
  | es-. g-. f-. es-. d4-. f-|
  | bes,-| r r f'-|
  | bes,2 f'\fz
  | r4 r8 e, e4.(\trill d16 e)
  | f1 ~

  % 110
  | f2 r
  | R1*2
  | r2 c'8(\p es d c)
  | bes r r4 r2
  | r2 r8 f'( es d)
  | c4-| r r2
  | r2 r8 f,( g a)
  | bes!4-| r r f'(
  | es) r r es(

  % 120
  | d) r r c'(
  | bes) r r bes(
  | as) r r2
  | bes,8(\f c bes as) g4-| r
  | g8( as g f) es4-| c'-|
  | d r r8 a!( bes c
  | d4)-| r r8 a( bes c
  | d) a( bes c d) a( bes c
  | d) a( bes c d) a( bes c
  | d4) r es r

  % 130
  | d( e f8) c-. d-. es-.
  | f4-| es-| d-| c-|
  | c r r2
  | d4 r a r
  | bes r bes r
  | bes( g' f es)
  | d r r2
  | R1*6

  % 143
  | f4 r es r
  | d( e f8) c-. d-. es-.
  | f4-| es-| d-| c-|
  | c r r2
  | r4 d\p r a
  | r bes r bes
  | bes-. g'( f8 g f es)

  % 150
  | d-.\f es-. d-. c-. bes-. g'-. f-. es-.
  | d-. es-. d-. c-. bes-. g'-. f-. es-.
  | d es d c bes4-| c-|
  | c-| r r bes'-|
  | c8-. d-. c-. bes-. a-. bes-. a-. g-.
  | f-. g-. f-. es-. d-. es-. d-. c-. 
  | bes c bes as g4-| r
  | R1
  | b'4\p r b r
  | c r r2
  | a4 r a r
  | bes4 r r8 bes-.\ff a-. g-.
  | f-. g-. f-. es-. d-. bes'-. a-. g-.
  | f g f es d d' c bes
  | a bes a g f g f es
  | d es d c bes c bes a
  | g as g f es f es d
  | c1
  | des4( d es e)
  | f1
  | \repeat unfold 4 { <c' es>4-| }
  | <bes d> r <c f> r
  | <bes f'> r c r
  | d r r2
  | <c es>2 r
  | <bes d> r

  \bar "|."
}
