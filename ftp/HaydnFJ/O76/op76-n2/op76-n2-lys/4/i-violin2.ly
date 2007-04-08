\version "2.6.0"
violinIIFirstMov =  \relative d' {
  \key bes \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2 {
    d1\p ~
    | d ~
    | d ~
    | d
    | g4-| r b-| r
    | c-| r r2
    | es,1 ~
    | es ~
    | es ~

    % 10
    | es
    | d4-| r a'-| r
    | bes-| r r2
    | bes1\p ~
    | bes ~
    | bes ~
    | bes2 des,(
    | d) c8( b c es)
    | d1 ~
    | d

    % 20
    | des1
    | d!2 c8( b c es)
    | d-|\f r d-| es-| f-| r d-| es-| % The last D has not a staccato stroke
    | f-| r f-. r f-. r f-. r
    | <es a>-. r c-| d-| es-| r c-| d-|
    | es-| r <es a>-. r <es a>-. r <es a>-. r
    | bes'16 a bes d f, g es f d bes' a bes f g es f
    | d d' c d es d c d d, c' b c d c b c
    | bes! a bes d bes a bes g' fis g a fis d es d c
    | bes bes' a g fis a g fis g bes a g fis a g fis

    % 30
    | g\ff bes a g fis a g fis g bes a g fis a g fis
    | g bes a g fis a g fis g8 d4 d8
    | c16 e g f! e g f e d e f d b c d b
    | c e g f e g f e d e f d b c d b
    | c e g f e g f e f( e f e) f8 f,
    | e-| c16( b c b c b) c8-. c16( b c b c b)
    | c4 r r2
    | c'1\p ~
    | c ~
    | c ~

    % 40
    | c ~
    | c ~
    | c ~
    | c
    | c4.\fz bes!8\p as( g as bes)
    | c4.\fz bes8\p as( g as bes)
    | c8\fz c4 as,8\p as'( ges f ges)
    | as8\fz as4 c8\p f,( es des es)
    | f2\fz ~ f8(\p ges f ges)
    | f4.(\< g!8) as( g as f)

    % 50
    | e-|\!\f r c'-| d-| e-| r c-| d-|
    | e-| r e-| f-| g16 f e d c bes a g
    | f8-. r f'-| g-| a-| r f[-. \grace { a32[( g f)] } g8]-.
    | a-. r f[-. \grace { a32[( g f)] } g8]-. a c,-| c-| c-|
    | bes16( c bes c) a( bes a bes) g( a g a) f( g f g)
    | e( f e f) d( e d e) c8 f-| f-| f-|
    | f2( g4 gis)
    | a8( gis a gis) a( gis a gis)
    | a4 <f a>2 f'4
    | e1\trill

    % 60
    | f8 a-.\p a-. a-. a-. r f r
    | bes r g r e r g r
    | f-. c-. c-. c-. c-. r a-. r
    | d-. r bes-. r g-. r e-. r
    | f4 r r8 bes-. bes-. bes-.
    | a4 r r8 bes-. bes-. bes-.
    | <f a>16\ff \repeat unfold 7 { <f a> } 
    \repeat unfold 8 { <e bes'> }
    | \repeat unfold 8 { <f a> } 
    \repeat unfold 8 { <e bes'> }
    | <f a>4 <f a> <f a> r\fermata
  }

  | a,1\p ~

  % 70
  | a ~
  | a ~
  | a
  | g'4-| r f-| r
  | e-| r r2
  | a,1 ~
  | a ~
  | a ~
  | a ~
  | a

  % 80
  | bes8\f r bes'-| c-| % The first bes is a quarter note
  d-| r bes-| c-|
  | d1
  | <d, a'>8-. r fis'-| g-| a-| r fis,-| g-|
  | a1
  | bes16 g fis g bes,( c bes a) g g' fis g bes,( c bes a)
  | g4 <as d>2\fz <as f'>4
  | <g es'>8-. r g'-| as-| bes-| r g-| as-|
  | bes2.( c8 des)
  | c r as-| bes-| c-| r as-| bes-|
  | c2.( d8 es)

  % 90
  | d4 d2 d4
  | c16 es d es c bes a g fis g a bes c es d c
  | bes8-| d16( cis d cis d cis) d8-| g16( fis g fis g fis)
  | g4-. g-. g4.(\fz a16 g
  | fis4) fis-. g-. d
  | es r c r
  | bes8 bes'-. bes-. bes-. bes-. r g-. r
  | c-. r a-. r fis-. r fis-. r
  | g-| d-.-\markup { \italic "(poco a poco decresc.)" } d-. d-.  d-. r c-. r
  | bes,-. bes'-. bes-. bes-. bes-. r a-. r

  % 100
  | g,-. g'-. g-. g-. g-. r f-. r
  | g r f r g r f r
  | g r as r g r g r
  | f-. f-. f-. f-. f-. r e-. r
  | r f-. f-. f-. f-. r e-. r
  | r es!-. es-. es-. es-.\pp r d-. r
  | r es-. es-. es-. es r f r
  | r es r es r es r es
  | d1\p ~
  | d-\markup { \italic "cresc." } ~

  % 110
  | d ~
  | d
  | g4-|\f r <d b'>-| r
  | <g, es' c'>-| r r2
  | es'1\p ~
  | es-\markup { \italic "cresc." } ~
  | es ~
  | es
  | d4-|\f r <es a>-| r
  | <d bes'>-| r r2

  % 120
  | bes'1\p ~
  | bes ~
  | bes(
  | d)
  | c4.( b8) c( es g, bes)
  | as1 ~
  | as ~
  | as4. es16( f) ges8( f ges bes)
  | f1 ~
  | f ~

  % 130
  | f ~
  | f4 r f4.\fz es8\p
  | des( c des es) f4.\fz es8\p
  | des( c des c) bes4 bes
  | bes r r2
  | <a f'>8-.\f r c-| d-| es-| r <es a>-| r
  | <d bes'>-| r d-| es-| f-| r d'-| r
  | <bes e>-| r g-| a-| bes-| r <bes e>-| r
  | <a f'>16 f' e f es f es f des f c f bes, des c bes
  | a f' e f es f es f des f c f bes, des c bes

  % 140
  | a8-| f16( e f e f e) f8-| f16( e f e f e)
  | f4 r r2
  | f'1\p ~
  | f ~
  | f ~
  | f ~
  | f ~
  | f ~
  | f4 r r a(
  | bes4. f8 es d c bes)

  % 150
  | a( bes ces bes ces bes ces bes)
  | bes(-\< a bes c! des c des bes)-\!
  | a-|\f r a-| bes-| c-| r a-| bes-|
  | c-| r a-| bes-| c2
  | d16-| bes( a bes) f-. g-. es-. f-.
  d-| bes'( a bes) f-. g-. es-. f-. 
  | d-| bes'( a bes) f-. g-. es-. f-. d8 f'-| f-| f-|
  | es16( f es f) d( es d es) c( d c d) bes( c bes c)
  | a( bes a bes) g( a g a) f8 bes-. bes-. bes-.
  | bes2( c4 cis)
  | d8( cis d cis) d( cis d c)

  % 160
  | <d, bes'>1
  | a'\trill
  | bes8 d-.\p d-. d-. d-. r bes-. r
  | es-. r c-. r a-. r c-. r
  | bes-. f'-. f-. f-. f-. r d-. r-.
  | g-. r es-. r c-. r a-. r
  | bes4 r r8 f'\f f f
  | g4 r r8 e, e e
  | f4 r r8 d-.\p d-. d-.
  | es-. r d-. r c-. es-. c-. c'-.

  % 170
  | bes-. r g-. r f-. r es-. r
  | bes'-. r a-. r bes-. r a-. r
  | bes\ff-| bes-| c-| c-| bes-| bes-| c-| c-|
  | d d, es' es, f' f, g' g,
  | as'1\fermata
  | bes,,1\p ~
  | bes ~
  | bes ~
  | bes4. a8( bes a bes d)
  | a1 ~

  % 180
  | a ~
  | a2. c4
  | bes r r8 es-. es-. es-.
  | d4 r r8 es-. es-. es-.
  | <bes d>16\ff \repeat unfold 7 { <bes d> }
  \repeat unfold 8 { <a es'> }
  | \repeat unfold 8 { <bes d> }
  \repeat unfold 8 { <a es'> }
  | <bes d>8 r d' r f r d r
  | <d, bes'>4 r <d bes'> r
  | <d bes'> r r2

  \bar "|."
}
