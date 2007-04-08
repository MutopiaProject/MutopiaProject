\version "2.6.0"
violaFirstMov =  \relative f {
  \key bes \major
  \clef alto

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2 {
    f1\p ~
    | f ~
    | f ~
    | f
    | c'4-| r <g f'>-| r
    | <g es'>-| r r2
    | a1
    | a ~
    | a ~

    % 10
    | a
    | bes4-| r es-| r
    | d-| r r2
    | r4 r8 e(\p f bes g bes)
    | f4.( e8) f8( bes g bes)
    | f4.( e8) f8( bes as bes)
    | g2 bes, ~
    | bes( a4. c8)
    | bes1(
    | << { as } { s2 s2 } >>

    % 20
    | g1)
    | bes2( a!4. c8)
    | bes8-|\f r bes-| c-| d-| r bes-| c-|
    | d-| r d-. r d-. r d-. r
    | c-. r a8-| bes-| c-| r a-| bes-|
    | c-| r c-. r c-. r c-. r
    | bes-. r bes-| c-| d-| r bes-| c-|
    | d1
    | d2 fis4 ~ fis16 g fis a
    | bes d c bes a c bes a bes d c bes a c bes a

    % 30
    | bes\ff d c bes a c bes a bes d c bes a c bes a
    | g4( c d g,)
    | \repeat unfold 3 { g8 e16 f g e f g as2 }
    | g4 r r8 c,16( b c b c b)
    | c4 r8 c'\p b( c bes g)
    | f1 ~
    | f ~
    | f

    % 40
    | e ~
    | e ~
    | e ~
    | e
    | f8\fz as,4 bes8\p c( des c bes)
    | as4.\fz bes8\p c( des c bes)
    | as8\fz as4 es8\p f( ges as ges)
    | f8\fz f4 c8\p des( es f es)
    | des8\fz des4 es8\p f( es f es)
    | f1\<

    % 50
    | g4\!\f r <c, c'> r
    | <c c'> r e'2
    | f16-| f( e f) c-. f-. bes,-. f'-. a,-| f'( e f) c-. f-. bes,-. f'-.
    | a,-| f'( e f) c-. f-. bes,-. f'-. a,8 a'-| a-| a-|
    | g16( a g a) f( g f g) e( f e f) d( e d e)
    | c( d c d) bes( c bes c) a8 c-| c-| c-|
    | d4 bes2( b4)
    | c1 ~
    | c ~
    | c2 bes\trill

    % 60
    | a4 r r8 c'-.\p r a-.
    | r d-. r bes-. r g-. r e-.
    | f-. a-. a-. a-. a-. r f-. r
    | bes-. r g-. r e-. r c-. r
    | f4 r r8 g-. g-. g-.
    | a4 r r8 g-. g-. g-.
    | f16\ff \repeat unfold 15 { c }
    | \repeat unfold 16 { c }
    | c4 c c r\fermata
  }

  | f,1\p ~

  % 70
  | f ~
  | f ~
  | f
  | e4-| r f-| r
  | g-| r r2
  | es!1 ~
  | es ~
  | es ~
  | es
  | d

  % 80
  | d4\f r g d'8-| c-|
  | bes1
  | \repeat unfold 2 { d16-. d'( cis d) fis,-. d'-. e,-. d'-. }
  | d,1 ~
  | d8 r d16( es! d c) bes8 r d16( es d c)
  | bes4 <as f'>2 f'4
  | g8-. r es-| f-| g-| r es-| f-|
  | g1(
  | as8) r f-| g-| as-| r f-| g-|
  | a!1(

  % 90
  | bes4) bes2 bes4
  | a16 c bes c a8 fis d4 d
  | d( g2 d'4)
  | es r a,,16-. a'( gis a gis a gis a)
  | d,4 r g,16-. g'( fis g fis g fis g)
  | es4 r d r
  | d r r8 d'-. r bes-.
  | r es-. r c-. r  a-. r a-.
  | bes-| bes-. 
  bes-.-\markup { \italic "(poco a poco decresc.)" } bes-.
  bes-. r a-. r
  | g,-. g'-. g-. g-. g-. r f-. r

  % 100
  | es,-. es'-. es-. es-. es-. r d-. r
  | es r d r es r d r
  | es r f r es r e r
  | f-. a,-. a-. a-. a-. r bes-. r
  | r a-. a-. a-. a-. r bes-. r
  | r c-. c-. c-. c-.\pp r b r
  | r c-. c-. bes!-. a r b r
  | r c r c r c r c
  | f,1\p ~
  | f-\markup { \italic "cresc" } ~

  % 110
  | f ~
  | f
  | c'4-|\f r <g f'>-| r
  | <g es'>-| r r2
  | a1\p ~
  | a-\markup { \italic "cresc" } ~
  | a ~
  | a
  | bes4-|\f r <c es>-| r
  | <bes d>-| r r2

  % 120
  | r4 r8 e(\p f bes g bes)
  | f4.( e8) f8( bes g bes)
  | f4.( e8) f( bes as bes)
  | g1 ~
  | g
  | es!4.( d8) es( as f as)
  | es4.( d8) es( as f as)
  | es2( des)
  | c2.( b4
  | c2. b4)

  % 130
  | c1
  | bes!4 r des4.\fz c8\p
  | bes( a! bes c) des4.\fz c8\p
  | bes( a bes as) ges\fz bes4 as8\p
  | ges( f ges as) bes2
  | a!8-|\f r a-| bes-| c-| r c-| r
  | bes-| r bes-| c-| d-| r bes'-| r
  | g-| r e-| f-| g-| r g-| r
  | f4( a,) bes8( c) des-. des-.
  | c4( a) bes8( c) des-. des-.

  % 140
  | c4 r r8 f,16( e f e f e)
  | f4 r r2
  | bes'1\p ~
  | bes ~
  | bes
  | c4 r r b(
  | c4. es8 b c gis a)
  | e( f b, c) bes( a g f)
  | f'1 ~
  | f ~

  % 150
  | f
  | es2 bes8(\< a bes des)
  | f16-|\!\f f( e f) c-. f-. bes,-. f'-. 
  a,-. f'( e f) c-. f-. bes,-. f'-.
  | a,-. f'( e f) c-. f-. bes,-. f'-. a,2
  | bes8-. r d,-| es-| f-| r d[-. \grace { f16[( es d] } es8)]
  | f-. r d[-. \grace { f16[( es d] } es8)] f8 d''-| d-| d-|
  | c16( d c d) bes( c bes c) a( bes a bes) g( a g a)
  | f( g f g) es( f es f) d8 f-. f-. f-.
  | g4( es2 e4)
  | f1

  % 160
  | f,16-| bes( a bes) f-. d'( cis d) bes-| f'( e f) d-| bes'( a bes)
  | f2 es!\trill
  | d4 r r8 f-.\p r d-.
  | r g-. r es-. r c-. r a-.
  | bes-. d'-. d-. d-. d-. r bes-. r
  | es-. r c-. r a-. r f-. r
  | bes4 r r8 d\f d d
  | es4 r r8 des des bes
  | c4 r r8 b,-.\p b-. b-.
  | c-. r bes!-. r r a-. a-. a-.

  % 170
  | bes-. r es-. r d-. r c-. r
  | r f-. r ges-. r f-. r ges-.
  | f-|\ff d-| ges-| ges-| f-| d-| ges-| ges-|
  | f2 bes4 bes
  | bes1\fermata
  | r2 r4 c,,4\p
  | des4.( c8 des c des f)
  | des1
  | d!4.( cis8 d cis d f)
  | es1 ~

  % 180
  | es1 ~
  | es
  | d4 r r8 c'-. c-. c-.
  | d4 r r8 c-.c-. c-.
  | d16\ff \repeat unfold 15 { f, }
  | \repeat unfold 16 { f }
  | f8 r f r d r f r
  | bes4 r <d, bes'> r
  | <d bes'> r r2

  \bar "|."
}
