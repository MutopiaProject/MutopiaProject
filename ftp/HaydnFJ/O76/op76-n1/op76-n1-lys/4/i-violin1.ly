\version "2.6.0"
violinIFirstMov =  \relative e' {
  \key bes \major
  \clef violin

  \repeat volta 2 {
    r2 r4 e\(\p
    | f4. a8 \acciaccatura c bes a bes d\)
    | f4.(  a,8 bes d f a)
    | bes4.( a8 g f es d)
    | c4-| r d-| r
    | es-| r r2
    | r r4 b,(
    | c4. d8 es f a c)
    | es4.( b8 c d es fis)

    % 10
    | \acciaccatura a g4.( f!8 es d es c)
    | bes4-| r c-| r
    | d-| r r2
    | f2.(\p e4)
    | f2.( e4)
    | f2.( fis4)
    | \acciaccatura a8 g4.( fis8) \acciaccatura a g( fis g bes)
    | f!4.( d8) \acciaccatura f es( d es a,)
    | bes4.( a8) \acciaccatura c bes( a bes d)
    | bes4.( a8) \acciaccatura c bes( a bes d)

    % 20
    | bes4.( a8) \acciaccatura c bes( a bes g')
    | f4.( d8) es( d es a,)
    | bes16\f a bes d f, g es f d bes' a bes f g es f
    | d bes' a bes f d' cis d bes f' g f es d c bes
    | a es' d es c d bes c a es d es c es bes es
    | a, g' f g es c' bes c a es' d es a, g' f es
    | d8-. r d-| es-| f-| r d-| es-|
    | f2( fis)\fz
    | g4 g8. g16 a4 a8. a16
    | <d, bes'>8 r <d d'> r <d bes'> r <d d'> r

    % 30
    | \repeat unfold 2 { <d bes'> <d bes'> <d d'> <d d'> }
    | bes'16 d c bes a c bes a g bes a g f! a g f
    | e4( c' b f')
    | e( c b f')
    | e( c as b,)
    | c8-. c16( b c b c )b c8-. c,16( b c b c b)
    | c4 r8 c''\p b( c bes g)
    | a1 ~
    | a ~
    | a

    % 40
    | bes ~
    | bes ~
    | bes ~
    | bes
    | \repeat unfold 2 { as4.\fz g8\p f( e f g) }
    | as8\fz as4 ges8\p f( es! des es)
    | f8\fz f4 es8\p des( c bes c)
    | des\fz des4 c8\p bes( a! bes a)
    | bes2(\< b)

    % 50
    | c8-.\!\f r e-| f-| g-| r e-| f-|
    | g-| r g-| a-| bes16 a g f e d c bes
    | a8-. r a'-| bes-| 
    \repeat unfold 2 { c-| r a[-. \grace { c32[( bes a)] } bes8]-. }
    c f-| f-| f-|
    | e16( f e f) d( e d e) c( d c d) bes( c bes c)
    | a( bes a bes) g( a g a) f4 es'
    | d2( e4 f)
    | \repeat unfold 4 { f16( c) e( c) }
    | f8-. r c-. r a-. r f-. r
    | g1\trill

    % 60
    | f8 c'-.\p c-. c-. c-. r a-. r
    | d-. r bes-. r g-. r c-. r
    | a4 r r8 f'-. r e-.
    | r d-. r des-. r c-. r bes-.
    | a( c) c-. c-. c( e,) e-. e-.
    | f( c') c-. c-. c( e,) e-. e-.
    | f16\ff e f a c, a' g f e fis g fis g bes a g
    | f! e f a c, a' g f e fis g fis g bes a g
    | f!4 <c a'> <a f'> r\fermata
  }

  | r2 r4 cis,\(\p

  % 70
  | d4. e8 \acciaccatura g8 f8 e f gis\)
  | a4.\( cis8 \acciaccatura e d cis d f\)
  | gis4.( a8 g f e d)
  | cis4-. r d-| r
  | e-| r r2
  | r r4 b,(
  | c4. b8 c es! fis a)
  | c4.( b8 c es! fis a)
  | c4.( bes!8 a g fis a)
  | c,4.( b8 c es a, c)

  % 80
  | bes!4-.\f g'8-| a-| bes-| r g-| a-| % There is an additional r8 in the Kalmus edition
  | bes16 c d c bes a g fis g f es d c bes a g
  | fis8 r a'-| bes-| c-| r a-| bes-| 
  | c16 d es d c bes a g fis a a, bes c es d c
  | bes8 r bes'16( a bes c) d8 r bes16( a bes c)
  | d8-| d16( es) f8-| f16 g as4 <as,,, d>
  | <g es'>16-| es'( d es) bes-. es-. as,-. es'-. 
  g,-| es'( d es) bes-. es-. as,-. es'-.
  | g,-| des'( c des c des c des) g,( c b c g bes a! bes)
  | a-| f'( e f) c-. f-. bes,-. f'-. a,-| f'( e f) c-. f-. bes,-. f'-.
  | a,!-| es'!( d es d es d es) a,( d cis d a c b c)

  % 90
  | bes!-| g'( fis g) d-| bes'( a bes) g-| d'( cis d) bes-| g'( fis g)
  | fis8-. r a-. r c-. r fis,-. r
  | g-. r bes-. r d-. r d-. r
  | d4.(\fz es16 d) c4-. c-.
  | c4.(\fz d16 c) bes4-. bes-.
  | a r <a, fis'> r
  | g'8 d'-. d-. d-. d-. r bes-. r
  | es-. r c-. r a-. r d-. r
  | bes4-. r-\markup { \italic "(poco a poco decresc.)" } 
    r8 g-. r f!-.
  | r es-. es-. es-. r es-. r d-.

  % 100
  | r c-. c-. c-. r c-. r b-.
  | r c r b r c r b
  | r c r b r c r bes
  | a4 r c( des)
  | c r c,( des)
  | c r a(\pp b)
  | c r c( d)
  | es r r2
  | r r4 e\(\p
  | f4. a8 \acciaccatura c bes a bes d\)

  % 110
  | f4.(-\markup { \italic cresc. } a,8 bes d f a)
  | bes4.( a8 g f es d)
  | c4-.\f r <f, d'>-| r
  | <g, es' es'>-| r r2
  | r r4 b(\p
  | c4. d8 es f a c)
  | es4.(-\markup { \italic cresc. } b8 c d es fis)
  | \acciaccatura a g4.( f!8 es d es c)
  | <d, bes'>4\f r <a f' c'>-| r
  | <bes f' d'>-| r r2

  % 120
  | f''2.(\p e4)
  | f2.( e4)
  | f2.( fis4)
  | g4.( fis8) g( as d, f)
  | es1 ~
  | es2.( d4)
  | es2.( d4)
  | es1
  | es4.( d8) es( ges d f)
  | es4.( d8) es( ges d f)

  % 130
  | es4.( d8) es( ges c, es)
  | des4.\fz c8\p bes( a! bes c)
  | des4.\fz c8 bes( a bes as)
  | ges4.\fz f8 es( d es f)
  | ges4.\fz f8\p es( d es e)
  | f16\f c' bes c a! bes g! a f es'! c bes a g' f es
  | d f e f d f c f bes, f' g f bes a g f
  | e bes' a bes g bes f bes e, d' c bes a bes a bes
  | a4( c des e,)
  | f( c' des e,)

  % 140
  | f8-| f16( e f e f e) f8-| f,16( e f e f e)
  | f4 r8 f'-.\p g-. a-. bes-. c-.
  | d1 ~
  | d ~
  | d
  | es ~
  | es ~
  | es
  | d ~
  | d ~

  % 150
  | d
  | es2(-\< e)
  | f8-\!\f r c-| d-| es!-| r c-| d-| 
  | es-| r c-| d-| es16 d es c bes a c es,
  | d8-. r d-| es-| f-| r d[-. \grace { f32[( es d)] } es8]-.
  | f-. r d[-. \grace { f32[( es d)] } es8]-. f8 bes-| bes-| bes-|
  | a16( bes a bes) g( a g a) f( g f g) es( f es f)
  | d( es d es) c( d c d) bes4 as'
  | g2( a!4 bes)
  | \repeat unfold 4 { bes16( f) a( f) }

  % 160
  | bes8-. r f-. r d-. r bes-. r
  | c1\trill
  | bes8 f'-.\p f-. f-. f-. r d-. r
  | g-. r es-. r c-. r f-. r
  | d4 r r8 bes'-. r a-.
  | r g-. r ges-. r f-. r es-.
  | d4 r r8 <bes bes'>\f <bes bes'> <bes bes'>
  | <bes bes'>4 r r8 bes' bes bes
  | a f\p-. f-. f-. g-. r f-. r
  | r es-. es( e) f-. r es-. r

  % 170
  | d-. r c-. r bes-. r a-. r
  | bes'-. r a-. r bes-. r a-. r
  | bes\ff-| bes-| a-| a-| bes-| bes-| a-| a-| 
  | bes,16 bes' bes, bes' c, c' c, c' d, d' d, d' es, es' es, es'
  | \grace { \graceStroke f,8 } f'1\fermata
  | g,,1\p ~
  | g ~
  | g4.( fis8 g fis g bes)
  | f!1
  | c4.( b8 c b c es)

  % 180
  | c4.( d8 es fis g fis)
  | g4( es c a)
  | bes8( f') f-. f-. f( a) a-. a-.
  | bes( f') f-. f-. f( a,) a-. a-.
  | bes16\ff a bes d f, d' c bes a b c b c es d c
  | bes! a bes d f, d' c bes a b c b c es d c
  | bes!8 r bes' r d r bes r
  | <d, f>4 r <f, d'> r
  | <bes, d bes'> r r2

  \bar "|."
}
