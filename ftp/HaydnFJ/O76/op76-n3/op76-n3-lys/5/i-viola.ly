\version "2.6.0"
violaFirstMov =  \relative d' {
  \key d \major
  \clef alto

  r8
  | d-.\p r d-. cis4(-\> e8)-\!
  | a,4( d8) d4.\fz ~
  | d b4( d16 b)
  | a8 r b16( d) cis8( d e)
  | fis-.\p r d-. cis4(-\> e8)-\!
  | a,4( d8) d4.\fz ~
  | d2. ~
  | d8 a( g) fis-. r r
  | d'-.\p r d-. cis4(-\> e8)-\!

  % 10
  | a,4( d8) d4.\fz ~
  | d b(
  | a8) r b16( d) cis8( d e)
  | d-.\p r a-. cis4(-\> e8)-\!
  | a,4( d8) d4.\fz ~
  | d2. ~
  | d8[ b] ais16[( cis)] b4 r8
  | a!4 a8 g r r
  | fis4 fis8 g g' g
  | g( e d) d( e) e

  % 20
  | e r b16( d) cis8( d e)
  | d-. r a-. cis4(-\> e8)-\! a,4( d8) d4.\fz ~
  | d b(
  | a8) r b16( d) cis8( d e)
  | d-. r a-. cis4(-\> e8)-\!
  | a,4( d8) d4.\fz ~
  | d cis8( d e)
  | d r a[-. fis]-. r r

  \bar "||"
  \key d \minor

  | R2.

  % 30
  | r8 r a bes8.( a32 bes) c16( bes)
  | a4-. r8 r4 r8
  | R2.
  | r8 c g' c,4( d8)
  | g,[( d')] c16[( bes)] a[( g' a bes g a)]
  | bes8 r g f16( g a bes g a)
  | bes8 r g[-. a]-. r r
  | r r f, ~ f16( e) g4 ~
  | g16 c,( d e f a) a( g) bes4 ~
  | bes16( a) c4 bes8 r r

  % 40
  | r c'( fis,) g4 r8
  | r es'( a,) bes16\f f!-. f-. f-. f-. f-.
  | f f f f f f f <c es> <c es> <c es> <c es> <c es>
  | \repeat unfold 6 <c es> \repeat unfold 6 <bes d>
  | \repeat unfold 6 <bes d> <es, c'> \repeat unfold 5 <c' es>
  | \repeat unfold 6 <c es> \repeat unfold 6 <bes d>
  | <bes es>8-| <bes es>-| r r4 r8
  | g'8.(\p as16 g8) es( f g)
  | f r r es' r f,\f
  | bes8.( a16 bes8) c(\(-\> a16)-\! f( a c)\)

  % 50
  | d8( f,) f g4.
  | a8 r f ~ f16 e32( f) g-. f-. e-. d-. c-. bes-. a-. g-.
  | f8 r a' g4.
  | f e
  | d16-| f32( g) a-. g-. f-. e-. d-. c-. bes-. a-. gis4.
  | a8 r cis[( d)] r f[(
  | e)] r e[( f)] r d(
  | a') a,-. a-. a-. r r

  \bar "||"
  \key d \major

  | d8-.\p r d-. cis4(-\> e8)-\!
  | a,4( d8) d4.\fz ~

  % 60
  | d b(
  | a8) r b16( d) cis8( d e)
  | d8-. r r cis4(\fz e8)
  | a,16-. a a a( d) d d4.\fz ~
  | d2. ~
  | d8[ b] ais16[( cis)] b4 r8
  | a!4 a8 g r r
  | fis4 fis8 g( g') g
  | g( e d) d( e) e
  | e r b16( d) cis8( d e)

  % 70
  | d-. r a-. cis4(-\> e8)-\!
  | a,4( d8) d4.\fz ~
  | d cis8( d e)
  | d2.
  | cis
  | d4.\fermata ~ d4\fermata r8

  \bar "||"

  | fis16\mf-. a-. fis-. a-. fis-. a-. 
  \repeat unfold 3 { g-. a-. }
  | \repeat unfold 4 { fis-. a-. fis-. a-. fis-. a-.
  g-. a-. g-. a-. g-. a-. }

  % 81
  | d,8.( e16 fis8) g( e cis)
  | a'8.( g16 fis8) b( g e)
  | cis'8.( b16 cis8) d4 g,16( fis)
  | e4.( fis4 gis8)
  | a r a, ~ a16( fis) b4 ~
  | b16 e, fis gis a cis ~ cis( b) d4 ~
  | d16 cis e d cis b a b cis d e g!
  | fis4 r8 a,4.
  | d,4 b'8 e,4.

  % 90
  | fis4 a8 b4 b8
  | e8.( dis16 e8) fis( dis b)
  | g'8.( fis16 g8) a( fis d!)
  | b'16 c b a b d c b a g fis a
  | d e d c b a g fis a g fis e
  | d g b cis! d b b ais cis b ais gis
  | fis b d e fis d d cis e d cis b
  | a!4 r8 e8.( fis16 e8)
  | fis16-. a-. fis-. a-. fis-. a-. 
  g-. a-. g-. a-. g-. a-.
  | fis4 r8 e8.( fis16 e8)

  % 100
  | d8. e16 d cis b4.
  | a16 b cis d e dis e8[( cis)] a'16[( g)]
  | fis g fis e fis d ~ d( cis) e4 ~
  | e16( d) fis4 ~ fis16( e) g4 ~
  | g16 fis a g fis e dis8( e cis)
  | d!( b' cis) a( b gis)
  | g!4( fis8) e( d cis)
  | d16-. a-. \repeat unfold 5 { d-. a-. }
  | \repeat unfold 6 { cis a }
  | \repeat unfold 6 { d a }

  % 110
  | \repeat unfold 6 { cis a }
  | \repeat unfold 6 { c a }
  | b4 r8 r4 r8
  | a4 r8 g'4 r8
  | \repeat unfold 6 { fis16-. a,-. }
  | e' a, e' a, e' a, g' a, g' a, g' a,
  | \repeat unfold 6 { fis' a, }
  | e' a, e' a, e' a, g' a, g' a, g' a,
  | \repeat unfold 6 { fis' d }
  | b4 r8 r4 r8

  % 120
  | a4 r8 g'4 r8
  | d,8. e16-. fis-. g-. a-. b-. cis-. d-. e-. fis-.
  | g8-| cis,,-| r r4 r8
  | d8. e16-. fis-. g-. a-. b-. cis-. d-. e-. fis-.
  | g8-| cis,,-| r r4 r8
  | fis'-| d-| a'-| fis-| d-| a-|
  | fis4 r8 <d a' d>4 r8
  | <d a' d>4 r8 r4 r8

  \bar "|."
}
