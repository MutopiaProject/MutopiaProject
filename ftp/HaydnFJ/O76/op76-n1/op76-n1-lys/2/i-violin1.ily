\version "2.18.0"
violinIFirstMov =  \relative a' {
  \key d \minor
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    a2\f d,
    | e a,
    | d8( cis d e) \acciaccatura g8 f4 e8 a
    | <d, d'>4 c'!16( bes a gis a4) r
    | a'2(\p d,)
    | e( a,)
    | \acciaccatura e'8 d( cis d e) \acciaccatura g f4( e8)-. f-.
    | \acciaccatura a8 g4( f8)-. a-. \acciaccatura c8 bes4( a8)-. d-.
    | cis4-. r8 bes!-. a4-. r8 bes,-.

    % 10
    | a4-. r8 bes,-. a4-. r8 fis'-.\f
    | \acciaccatura a8 g-. fis-. g-. a-. bes4 a16( g f e)
    | a8-. r cis,-. r d4-. r
    | a'16[( c! f a]) c8[-. c]-. c[(\fz d,]) 
    \acciaccatura c'8 bes8[( a16 g)]
    | f( e) a( g) f( e) d( c) bes4( a8) c
    | c16 d, e fis g a bes c d8-. d-. d-. g-.
    | e4.\trill( d16 e) f8( a) c-. c-.
    | c( b) b-. b-. r bes-. bes-. bes-.
    | bes( a) a-. a-. \slashedGrace d,8 d'4 c16( bes a g)
    | f4.( g16 f) e8-. c16 d e f g a

    % 20
    | bes2\fz e,
    | c'\fz f,
    | d'8-. r g,-. r c-. r f,-. c'-.
    | \repeat unfold 2 { <c, g'>( bes') a-. c-. }
    | \repeat unfold 2 { << { g16[( bes) g( bes)] a8[-. c]-. } \\
    { c,8[ c] c[ c] } >> }
    | bes'2( a)
    | d( g,4) r8 c-\< ~
    | c-.-\! bes[-\< ~ bes]-\!-. a[-\< ~ a]-\!-. g[-\< ~ g]-\!-. a-.
    | bes2( a
    | gis a4) r8 fis-\< ~

    % 30
    | fis-.-\! g[-\< ~ g]-.-\! e[-\< ~ e]-.-\! f![-\< ~ f]-.-\! g-\< ~ 
    | g4-.-\! r8 c-\< ~ c4-.-\! r8 e,
    | f16 e f g as f g e f c bes c as( c f) f-.
    | g f g as bes g as f g c, b c e,( c' g') g-.
    | a2 des,4.(\trill c16 des)
    | bes'2 des,,4.(\trill c16 des)
    | c8 es''-. es-. es-. es4( des16 c bes as)
    | g( as g as) bes( c bes c) des( c bes a) g( f es des)
    | c8 c'-. c-. c-. c4( bes16 as g f)
    | e!( f e f) g( as g as) bes( as g f) e( des c bes)

    % 40
    | as8 c-. c-. c-. c4 bes16( as g f)
    | \repeat unfold 2 { c32[( c'16.) c,32( c'16.)] } 
      c,32[( bes'16.) c,32( as'16.)] c,32[( g'16.) c,32( as'16.)]
    | c,32[( g'16.) c,32( g'16.)] c,32[( g'16.) c,32( c'16.)] 
      c,32[( bes'16.) c,32( as'16.)] c,32[( g'16.) c,32( as'16.)]
    | c,32[( g'16.) c,32( g'16.)] c,32[( g'16.) c,32( c'16.)] 
      c,32[( bes'16.) c,32( as'16.)] c,32[( g'16.) c,32( as'16.)]
    | \acciaccatura c,8 g'8 c-. c-. c-. c-. c-. c-. c-.
    | c16 d, e! fis g a! bes c d8-. d-. d-. g-.
    | e4.(\trill d16 e) f8( a) c-. c-.
    | c( b) b-. b-. r bes bes bes
    | bes( a) a-. a-. \acciaccatura d,8 d'4 c16( bes a g)
    | f4.( g16 f) e f g a bes a bes g

    % 50
    | f g a bes c d e f g8( a bes e,)
    | f( g a f) g( a bes e,)
    | f16( e f a) f( e f a) f4-. r
    | c16(\p d c b) c( d c b) c4-. r
    | f,16(\f g f e) f( g f e) f4-. r
    | c'16(\p d c b) c( d c b) c4-. r
    | R1
  }


  \repeat volta 2 {
    | r8 <c,, es>8-.\f <c es> <c es> r d-. d-. d-.
    | r d-. d-. d-. r d-. d-. d-.
    | d'2( g,)

    % 60
    | a( d,)
    | es( bes')
    | a!( es')
    | d16[( f bes d]) f8[-. f]-. f[( g,]) 
    \acciaccatura f'8 es8[ d16 c]
    | bes a d c bes a g f es d g f es d c bes
    | bes a c bes a g f es d f bes d f es d c
    | c b d c b as g f es g c es g f es d
    | d cis e! d cis bes! a g f a d f a f e d
    | bes' f e d e bes' a gis a e d cis d a' g fis
    | g d cis b cis g' f e f d cis e d f e g

    % 70
    | f d cis e d f e g f d cis e d f e g
    | f d cis d cis d cis d f d cis d cis d cis d
    | \acciaccatura cis8 a'2( d,)
    | e( a,)
    | f'( bes,)
    | c( f,)
    | d'4( g,)-. es'( a,)-.
    | f'2\fz b,
    | g'\fz c,
    | c'\fz gis\p

    % 80
    | a1 ~
    | a2 dis,(
    | e1)
    | f2( b,)
    | c( fis,)
    | gis r8 d'-. d-. d-.
    | c16( d c b) a4-. r8 \repeat unfold 3 { gis16( a) }
    | b16( a b c) b4-. r8 d-. d-. d-.
    | c16( d c b) a4-. r8 \repeat unfold 3 { gis16( a) }
    | b2( e,)

    % 90
    | b'( e,)
    | b'4(\pp e,) b'( e,)
    | b'2( e,)
    | g!( c,)
    | d(-\< g,)-\!
    | e'16[(\f g c e]) g8[-. g]-. \grace { a32[( g fis)] } g4 r
    | d,16( g b d) g8[-. g]-. \grace { a32[( g fis)] } g4 r
    | d,16( g bes! d) g8[-. g]-. \grace { a32[( g fis)] } g4 r
    | g8-.\ff r <a, cis'>-. r <a e''>4 r\fermata
    | a2(\p d,)

    % 100
    | e( a,)
    | d8( cis d e) \acciaccatura g8 f4 e8 a
    | d4 c!16( bes a gis) a8[( b16 cis] d[ e f g!)]
    | a2\f d,
    | e a,
    | \acciaccatura e'8 d( cis d e) \acciaccatura g8 f4( e8) f-.
    | \acciaccatura a8 g4( f8) a-. \acciaccatura c bes4( a8) d-.
    | cis4 r8 bes-. a4-. r8 bes,-.
    | a4 r bes,2(\p
    | a2) r4 r8 fis'-.\f

    % 110
    | g fis g a bes4. bes8
    | a-. g-. a-. b-. c4. c8-.
    | bes!-. a-. bes-. cis-. d4. d8
    | cis16 d e f e f g a bes a bes a bes g f e
    | d e f g f g a bes a cis d cis d f e d
    | cis d cis d e f e f g4 r8 f-\< ~
    | f4-.-\! r8 e-\< ~ e4-.-\! r8 d-\< ~
    | d4-.-\! r8 cis-\< ~ cis4-.-\! r8 d
    | d,4.( e16 d) cis( d) e( f) g( e) g( e)
    | d4.( e16 d) cis( d) e( f) g( e) g( e)

    % 120
    | d8-. f-. e-. a-. d,-. f-. e-. a-.
    | f-. a-. <d, a'>16( d') <d, a'>( d') 
      <d, bes'>8-. d'-. <d, a'>16( d') <d, a'>( d')
    | bes2( a)
    | gis g4\fermata r8\fermata f-\< ~
    | f4-\!-. r8 e-\< ~ e4-.-\! r8 d-\< ~
    | d4-.-\! r8 cis-\< ~ cis4-\!-. r8 cis
    | d16(\f f) bes( c) d8-. d-. d4-. r
    | es,16( f) a( c) es8-. es-. es4-. r
    | d,16( f) bes( c) d8-. d-. d4-. r
    | es,16( f) a( c) es8-. es-. es4-. r

    % 130
    | d2(\p g,)
    | a( d,)
    | r8 e!(-. e-. e-.) r f(-. f-. f)
    | r gis(-. gis-. gis-.) r a(-. a-. a)-.
    | r a(-. a-. a)-. r bes(-. bes-. bes)-.
    | r cis(-. cis-. cis-.) d4 r
    | r8 e(-. e-. e-.) f4 r
    | r cis,,4(-.\pp cis-. cis-.)
  }

  \alternative {
    {
      | d1
    }

    {
      | c!2.\fermata r8\fermata r
    }
  }

  % 140
  | d'16\f es d cis d es d cis d g bes a g f e d
  | c! d c b c d c b c f a g f e d c
  | bes! a' g f e d c bes a g' f e d c bes a
  | gis8 d'4 f e d8
  | cis a'4 a a a8
  | bes16( c! bes a) bes( c bes a) bes8-. bes-. r bes
  | a16( bes a gis) a( bes a gis) a8-. a-. r a(
  | gis)-. gis-. r gis( g)-. g-. r g
  | f2 fis4.(\trill e16 fis)
  | g16( fis g a) g( fis g a) g8 g4 g8

  % 150
  | g-. r f!-. r e-. r cis-. r
  | d2( a)
  | bes( cis,)
  | d8-.\ff r <a e'>-. r <a f'>-. r <e' cis'>-. r
  | d'-. r <a e'>-. r <a f'>-. r <e' cis'>-. r
  | <d, d' d'>4 r r2

  \bar "|."
}
