\version "2.6.0"
violinIFourthMov =  \relative cis''' {
  \key d \major
  \clef violin

  cis8-|\f
  | d4-| r
  | r r8 cis-|
  | d4-| r
  | r r8 cis-|
  | d-| cis-| d-| cis-|
  | d4 r
  | R2
  | r4 r8 a16(\p g)
  | fis8-. fis16( e) d8-. e-.

  % 10
  | fis16( g fis e) d8-. a'16( g)
  | fis8-. fis16( e) d8-. e-.
  | fis4( d8)-. r
  | R2*3
  | r4 r8 cis'-|\f
  | d4-| r8 cis-|
  | d4-| r8 cis-|
  | d-| cis-| d-| cis-|

  % 20
  | d4-| r8 ais-|
  | b4-| r8 ais-|
  | b4-| r8 gis-|
  | a!-| gis-| a-| gis-|
  | a4 r
  | R2
  | r4 r8 e16(\p d)
  | cis8-. cis16( b) a8-. b-.
  | cis16( d cis b) a8-. e'16( d)
  | cis8-. cis16( b) a8-. b-.

  % 30
  | cis4( a8)-. r
  | R2*3
  | r4 r8 gis'-|\f
  | a-| gis-| a-| gis-|
  | a4 r8 fis-|
  | g!-| fis-| g-| fis-|
  | g4 r8 dis-|
  | e-| dis-| e-| fis-|

  % 40
  | g-| fis-| g-| cis,-|
  | d-| cis-| d-| e-|
  | fis-| e-| fis-| ais-|
  | b-| ais-| b-| cis-|
  | d-| cis-| d-| ais-|
  | b-| ais-| b-| a-|
  | gis4 r
  | R2*3

  % 50
  | g!8-.\p g-. g-. g-.
  | g g g g
  | fis8-.\f fis16( gis) ais8-. ais16( b)
  | cis8-. cis16( d) e8-. ais,-.
  | b-. b16( cis) d8-. d16( e)
  | fis8-. fis16( e d cis b a!)
  | gis8-. e16( fis) gis8-. gis16( a)
  | b8-. b16( cis) d8-. gis,-.
  | a-. a16( b) cis8-. cis16( d)
  | e8-. e16( d cis b a gis)

  % 60
  | fis8-. a16( gis fis e d cis)
  | b8-. fis'16( e d cis b a)
  | gis8-. fis'16( e d cis b a)
  | gis8-. b16( a gis fis e d)
  | cis8-. a16( b cis8) a16( b
  | cis8) b16( cis d8) cis16( d
  | e8) d16( e fis8) d16( e
  | fis8) e16( fis gis8) fis16( gis
  | a8) fis16( gis a8) fis16( gis
  | a8) gis16( a b8) \slurDown a16( b

  % 70
  | c2)\fz \slurNeutral
  | a
  | f'\fz
  | d4 r8 bes8\p
  | a4 r8 a
  | gis4 r8 gis
  | a\f a,16( b) cis8-. cis16( d)
  | e8-. e-. d-. cis-.
  | b-. b16( cis) d8-. d16( e)
  | fis8-. fis-. e-. d-.

  % 80
  | cis-. a'16( b) cis8-. cis16( d)
  | e8-. e-. d-. cis-.
  | b-. b-.\p b-. b-.
  | \repeat unfold 16 b
  | b\fz b b b
  | a\f r cis r
  | d r b r

  % 90
  | a4 r
  | R2*5
  | r4 r8 e'16(\p fis)
  | gis8-. gis16( a) b8-. b16( cis)
  | d4( b8) gis16( a)
  | b8-. b16(-\markup { \italic "cresc." } cis) d8-. d16( e)

  % 100
  | fis2
  | gis
  | a16\f gis fis e d cis b a
  | b a b cis d e fis gis
  | a gis fis e d cis b a
  | b a b cis d e fis gis
  | a gis fis e d cis b a
  | b a b cis d e fis gis
  | a8-. r #(set-octavation 1) b-. r
  | cis-. r d-. r

  % 110
  | e4-. #(set-octavation 0) r
  | R2
  | fis,,16( gis fis eis) fis( gis fis eis)
  | fis8( gis a fis)
  | e( a) cis,-. e-.
  | e( d) cis-. b-.
  | a( e') e,-. b'-.
  | cis( e) e,-. gis-.
  | a( e') e,-. b'-.
  | cis( e) e,-. gis-.

  % 120
  | a4-. r8 b-.\p
  | cis4-. r8 d-.
  | e4-. r8 fis-.
  | g!4-. r8 a-.
  | b4-. r
  | r r8 cis\f
  | d2 ~
  | d4 bes
  | f d
  | bes bes

  % 130
  | f d
  | bes r
  | R2
  | r4 r8 f''16(\p es)
  | d8-. d16( c) bes8-. c-.
  | d16( es d c) bes8-. f'16( es)
  | d8-. d16( c) bes8-. c-.
  | d4( bes8)-. r
  | R2*3

  % 141
  | r8 b!16(\f c d8)-. d16( es
  | f8)-. f16( g as8)-. b,-.
  | c4 r
  | R2*3
  | r8 cis!16( d e!8)-. e16( f
  | g8)-. g16( a bes8)-. cis,-.
  | d4 r8 a'16( g)

  % 150
  | f8-. f16( e) d8-. e-.
  | f16( g f e) d8-. a'16( g)
  | f8-. f16( e) d8-. e-.
  | f4( d8) bes'-.
  | bes8-. bes8-. bes8-. bes8-.
  | bes16( c bes a) g8-. c-.
  | c-. c-. c-. c-.
  | c16( d c bes) a8-. d-.
  | d-. d-. d-. d-.
  | bes16( c bes a) g8-. r

  % 160
  | R2
  | r4 r8 b,
  | b-. b-. b-. b-.
  | c16( b c d) e8-. a-.
  | a-. a-. a-. a-.
  | gis16( a gis fis) e8-. b-.\p
  | b-. b-. b-. r
  | r4 r8 b-.
  | b-. b-. b-. r
  | r4 r8 g!-.\pp

  % 170
  | g-. g-. g-. r
  | r4 r8 g
  | g g g g
  | g-\< g g g
  | g g g g-\!
  | fis-.\f fis16( gis) ais8-. ais16( b)
  | cis8-. cis16( d) e8-. ais,-.
  | b-. b16( cis) d8-. d16( e)
  | fis8-. gis16( ais) b8-. d,-.
  | cis-. e16( fis) g8-. e-.

  % 180
  | d-. fis-. ais,-. cis-.
  | b-. b,16( cis d8) cis16( d
  | e8) d16( e fis8) e16( fis
  | g8) r g'-. r
  | fis-. r ais,-. r
  | b4 r
  | R2*3
  | d8\p d d d

  % 190
  | d d d d
  | g-\< g g g
  | g g g cis-|-\!
  | d4-|\f r8 cis-|
  | d4-| r8 cis-|
  | d4-| r8 cis-|
  | d-| cis-| d-| cis-|
  | d4-| r8 ais-|
  | b-| ais-| b-| ais-|
  | b4-| r8 fis-|

  % 200
  | g-| fis-| g-| fis-|
  | g4-| r8 dis-|
  | e-| dis-| e-| dis-|
  | e-| e16( fis) g8-. g16( a)
  | b8-. g-. e-. d!-.
  | cis-. a16( b) cis8-. cis16( d)
  | e8-. e16( fis) g8-. cis,-.
  | d-. fis16( g) a8-. b16( cis)
  | d8-. d16( cis) d8-. gis,-.
  | a a16( b) cis8-. cis16( d)

  % 210
  | e8-. e16( fis) g8-. cis,-.
  | d( cis d) cis-|
  | d( cis d) gis,-|
  | a( gis a) fis-|
  | g!( fis g) eis-|
  | fis( eis fis) dis-|
  | e!( dis e) cis-|
  | d!( cis d) e-|
  | fis( e fis) g-|
  | a( gis a) ais-|

  % 220
  | b( g! e) d-.
  | cis4 r
  | R2*3
  | c8\p c c c
  | c c c c
  | b-.\f b16( cis!) dis8-. dis16( e)
  | fis8-. fis16( g) a8-. dis,-.
  | e-. e16( fis) g8-. g16( a)

  % 230
  | b8-. b16( a g fis e d)
  | cis8-. a16( b) cis8-. cis16( d)
  | e8-. e16( fis) g8-. cis,-.
  | d-. d16( e) fis8-. fis16( g)
  | a8-. a16( g fis e d cis)
  | b8-. d'16( cis b a g fis)
  | e8-. b'16( a g fis e d)
  | cis d e fis g a b cis
  | d8( e fis d)
  | b( d b g)

  % 240
  | fis( a cis, e)
  | d8 d,16[( e)] fis8-. fis16( g)
  | a8-. a-. g-. fis-.
  | e-. e16( fis) g8-. g16( a)
  | b8-. b-. a-. g-.
  | fis-. d'16( e) fis8-. fis16( g)
  | a8-. a-. g-. fis-.
  | e e\p e e
  | \repeat unfold 16 e

  % 252
  | e\fz e e e
  | d8-.\f r fis-. r
  | g-. r e-. r
  | d4 r
  | R2*5

  % 261
  | r4 r8 a16(\p b)
  | cis8-. cis16( d) e8-. e16( fis)
  | g4( e8) cis16[( d)]
  | e8-.-\markup { \italic "cresc." } e16( fis) g8-. g16( a)
  | b2
  | cis
  | d16\f cis b a g fis e d
  | e d e fis g a b cis
  | d cis b a g fis e d

  % 270
  | e d e fis g a b cis
  | d cis b a g fis e d
  | e d e fis g a b cis
  | d8-. r e-. r
  | fis-. r g-. r
  | a4-. r
  | R2
  | b,16( cis b ais) b( cis b ais)
  | b8( cis d b)
  | a( d) fis,-. a-.

  % 280
  | a( g) fis-. e-.
  | d( a') a,-. e'-.
  | fis( a) a,-. cis-.
  | d( a') a,-. e'-.
  | fis( a) a,-. cis-.
  | d4-. r8 e-.
  | fis4-. r8 cis'-.
  | d4-. r8 cis-.
  | d-| cis-| d-| cis-|
  | d4 r

  % 290
  | <d,, a' fis'> r
  | d r

  \bar "|."
}
