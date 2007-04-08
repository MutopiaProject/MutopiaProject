\version "2.6.0"
violinIFirstMov =  \relative a' {
  \key d \major
  \clef violin

  a8\p
  | d8.( cis16 d8) e(-\> cis a)-\!
  | d( e fis) g4(\fz fis8)
  | e8.( fis16 e8) b'( g e)
  | d16( cis) e( cis) d( b) a8( b cis)
  | d8.(\p cis16 d8) e(-\> cis a)-\!
  | d( e fis) g4(\fz fis8)
  | e8.( fis16 e8) b'-. cis-. d-.
  | d,8.( e16 cis8) d-. r a\p
  | d8.( cis16 d8) \acciaccatura fis8 e-\> d16( cis-\! b a)

  % 10
  | d8( e fis) g4(\fz fis8)
  | e8.( g32 fis) e16( ais) cis( b a g fis e)
  | d( cis e cis d b) a8( b cis)
  | d8.(\p cis16 d8) \grace { cis16[( d] } e8)-\> d16( cis-\! b a)
  | d8( e fis) g4(\fz fis8)
  | e8.( g32 fis) e8 b'( g) eis(\fz
  | fis) d16( b) cis( ais) b4 d8
  | d,8.( e16) d8-. d( g) b-.
  | b,8.( c16) b8 b[( e)] g'
  | a,8.( g'16) fis8-. fis( e d)

  % 20
  | e16( cis e cis b gis) a8( b cis)
  | d8.( cis16 d8) \grace { cis16[( d] } e8)-\> d16( cis-\! b a)
  | d16( cis d e f fis) g4(\fz fis8)
  | e8.( g32 fis) e16( b') b,( b' a g fis e)
  | d( cis) e( cis) d( b) a( a') b,( a') cis,( a')
  | d,( a') cis,( a') d,( a') fis(-\> e d cis b a)-\!
  | d8( e fis) g4(\fz gis8)
  | a16( fis) d'( a fis d) a8( b cis)
  | d8.( a16) fis'8-. d-. r r

  \bar "||"
  \key d \minor

  | r8 r d, ~ d16( cis) e4 ~

  % 30
  | e16 a,( b cis d f) f( e) g4 ~
  | g16 c,( d e f a) a[( d,)] bes'8.[( g16)]
  | f16[( e)] c'8.[( a16)] g[( f)] d'8.[( bes16)]
  | a( g) g'( e c bes) a( bes c d e f)
  | g8( bes) e,-. f-. r r
  | g16-. a-. bes-. c-. d-. e-. f8 r r
  | #(set-octavation 1) g16-. a-. bes-. c-. d-. e-. f8 
  #(set-octavation 0) r r
  | R2.*2
  | r8 r d,, g8.( fis16 g8)

  % 40
  | a(-\> fis-\! d) bes'8.( a16 bes8)
  | c(-\> a-\! f!) d'\f ~ d16 c32-. bes-. a-. g-. f-. es-.
  | d8[ r16 \lbcOne f-| bes-| d]-| es8 ~ 
  es16 d32-. c-. bes-. a-. g-. f-.
  | es8[ r16 \lbcOne f-| a-| c]-| d8 ~ 
  d16 c32-. bes-. a-. g-. f-. es-.
  | d8[ r16 \lbcOne f-| bes-| d]-| es8 ~ 
  es16 d32-. c-. bes-. a-. g-. f-.
  | es8[ r16 \lbcOne f-| a-| c]-| f8 ~ 
  f32 es-. d-. c-. bes-. as-. g-. f-.
  | es8-| g'-| r r4 r8
  | c,8.(\p b16 c8) es( d c)
  | bes! r r a r r
  | R2.

  % 50
  | r4 r8 r r a,\f
  | f'8.( e16 f8) g8(\(-\> e16)-\! c( e g)\)
  | a16-| a32( bes) c-. bes-. a-. g-. f-. e-. d-. c-. bes8 r r
  | r16 f'32( g) a-. g-. f-. e-. d-. c-. bes-. a-. g8 r r
  | r16 f32( g) a-. g-. f-. e-. d-. c-. bes-. a-. gis8 f' f
  | e16-| cis32( d e d cis b) a16-. g'-.
  f16-| f32( g a g f e) d16-. d'-.
  | cis16-| cis32( d e d cis b) a( cis e g)
  f16-| f32( g a g f e) d( f a d)
  | cis8 a,-. a-. a-. r a\p

  \bar "||"
  \key d \major

  | d8.( cis16 d8) e(-\> cis a)-\!
  | d( e fis) g4(\fz fis8)

  % 60
  | e8.( g32 fis) e16( ais) cis( b a g fis e)
  | d( cis e cis d b) a8( b cis)
  | d32 d, cis d e fis g a b cis d dis e8\fz-| cis16( e cis a)
  | d!16 d( e) e( fis) fis( g4)\fz fis8
  | e32( fis g fis) e( fis g fis) e( fis g a) b8( g) eis(\fz
  | fis) d16( b) cis( ais) b4 d8
  | d, ~ d32( e d e d e d e) d8( g) b-.
  | b, ~ b32( c b c b c b c) b8[( e)] g'
  | a,32( b cis d e fis g a g16 fis) fis(\trill e b' g) e(\trill d)
  | d( cis e cis b gis) a8( b cis)

  % 70
  | d8.( cis16 d8) \grace { cis16[( d] } e8)-\> d16( cis-\! b a)
  | r16 d-. r e-. r fis-. g4(\fz gis8)
  | a16( fis) d'( a fis d) a8( b cis)
  | d16( b) fis'( d b fis) d( b gis d' b gis)
  | a( cis e g! cis e) g[( fis a g)] \times 2/3 { b[( g e)] }
  | d4.\fermata cis4\fermata r8

  \bar "||"

  | r4 r8 r r a'
  | d8.( cis16 d8) e( cis a)
  | fis'4 r8 r r a,
  | d8.( cis16 d8) e( cis a)

  % 80
  | fis'4 r8 r r a,16( g)
  | fis g fis e d8 ~ d16 cis e4 ~
  | e16 a, b cis d fis ~ fis( e) g4 ~
  | g16 cis, d e fis a ~ a( g) b4 ~
  | b16 e, a b a g fis e d fis e d
  | cis4 r8 r4 r8
  | R2.
  | r4 r8 r r a
  | d8.( cis16 d8) e( cis a)
  | fis'8.( e16 fis8) g( e cis)

  % 90
  | a'( fis d) dis( b' a)
  | g16 a g fis g b a g fis e dis fis
  | b c b a b e, c' b a g fis c'
  | b4 r8 r r d,
  | g8.( fis16 g8) a( fis d)
  | b'8.( ais16 b8) cis( a fis)
  | d'8.( cis16 d8) e( cis a)
  | fis'4 r8 r r a,
  | d8.( cis16 d8) e( cis a)
  | fis'4 r8 r r a,

  % 100
  | d8.( cis16 d8) fis( d gis,)
  | a4.( ~ a8 g! e)-.
  | d4  r8 r r a
  | fis'8.( e16 fis8) g( e cis)
  | a'( fis dis) b'-. g16( e) a8-.
  | fis16( d) g8-. e16( cis) d8-. d16 b e8-.
  | cis16( a) cis( a) d( a) e'( a,) fis'( a,) g'( a,)
  | fis'8. e16-. d-. cis-. b-. a-. g-. fis-. e-. d-.
  | cis8-| e'-| r r4 r8
  | fis8. e16-. d-. cis-. b-. a-. g-. fis-. e-. d-.

  % 110
  | cis8-| e'-| r r4 r8
  | a8. g16-. fis-. e-. d-. c-. b-. a-. g-. fis-.
  | g8-| b'-| r e,,-| g'-| r
  | fis,-| a'-| r a,-| cis'-| r
  | fis8. e16-. d-. cis-. b-. a-. g-. fis-. e-. d-.
  | cis8-| g''-| r r4 r8
  | fis8. e16-. d-. cis-. b-. a-. g-. fis-. e-. d-.
  | cis8-| g''-| r r4 r8
  | a8. g16-. fis-. e-. d-. c-. b-. a-. g-. fis-.
  | g8-| b'-| r e,,,-| g'-| r

  % 120
  | fis,-| a'-| r e,-| cis''-| r
  | d,,-| d''-| r r4 r8
  | g,8. fis16-. e-. d-. cis-. b-. a-. g-. fis-. e-.
  | d8-| fis'-| r r4 r8
  | g8. fis16-. e-. d-. cis-. b-. a-. g-. fis-. e-.
  | d8-| fis-| a-| d-| fis-| a-|
  | d4 r8 <d,, a' fis'>4 r8
  | <d a' fis'>4 r8 r4 r8

  \bar "|."
}
