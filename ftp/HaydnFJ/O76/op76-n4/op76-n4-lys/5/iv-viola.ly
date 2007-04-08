\version "2.6.0"
violaFourthMov =  \relative g' {
  \key d \major
  \clef alto

  g8-|\f
  | fis4-| r
  | r r8 g-|
  | fis4-| r
  | r r8 g-|
  | fis-| g-| fis-| g-|
  | fis4 r8 d-.\p
  | d-. d-. d-. d-.
  | \repeat unfold 32 d
  | d[ d d] g-|\f
  | fis4-| r8 g-|
  | fis4-| r8 g-|
  | fis-| g-| fis-| g-|

  % 20
  | fis4-| r8 e-|
  | d4-| r8 e-|
  | d4-| r8 d-|
  | cis-| d-| cis-| d-|
  | cis4 r8 a-.\p
  | a-. a-. a-. a-.
  | \repeat unfold 32 a
  | a[ a a] b-|\f
  | cis-| b-| cis-| b-|
  | cis4 r8 c-|
  | b-| c-| b-| c-|
  | b4 r8 fis'-|
  | g-| a-| g-| dis-|
  | e-| dis-| e-| g-|
  | fis-| g-| fis-| cis-|
  | d-| cis-| d-| g-|
  | fis-| g-| fis-| e'-|
  | d-| e-| d-| cis-|
  | b-| e-| d-| b-|
  | b-| b-.\p b-. b-.
  | b-. b-. b-. b-.
  | \repeat unfold 16 b
  | ais\f ais ais ais
  | ais ais ais cis
  | fis, fis fis fis
  | b, b b b
  | e gis gis gis
  | gis gis gis b
  | e, e e e
  | a, a a a

  % 60
  | d4 r
  | d r
  | b r
  | e r8 e,
  | e-. a16( b cis8) a16( b
  | cis8) b16( cis d8) cis16( d
  | e8) d16( e fis8) d16( e
  | fis8) e16( fis gis8) fis16( gis
  | a8) fis16( gis a8) fis16( gis
  | a8) gis16( a b8) a16( b
  | c2)\fz
  | a
  | <bes, f'>2\fz ~
  | <bes f'>4 r8 f'\p
  | e4 r8 e
  | d4 r8 d
  | cis!4 r
  | R2*10
  | e8\fz e e e
  | e\f r a r
  | fis r d r

  % 90
  | cis4 r8 a16( b)
  | cis8-. cis-. b-. a-.
  | gis4-. r8 b16( cis)
  | d8-. d-. cis-. b-.
  | a4-. r8 a'16( b)
  | cis8-. cis-. b-. a-.
  | gis4-. r
  | R2*4

  % 101
  | e8-.\p e-.-\markup { \italic "cresc." } e-. e-.
  | e\f e e e
  | \repeat unfold 20 e
  | e-. r e-. r
  | a-. r fis-. r

  % 110
  | e4-. r
  | R2
  | a,2 ~
  | a ~
  | a
  | e'
  | e4 r8 d-.
  | cis4 r8 b-.
  | cis4 r8 d-.
  | cis4 r8 b-.

  % 120
  | cis4-. r
  | R2*4
  | r4 r8 e\f
  | d2 ~
  | d ~
  | d ~
  | d4 bes'

  % 130
  | f d
  | bes r8 bes-.\p
  | \repeat unfold 2 { bes-. bes-. bes-. bes-. }
  | \repeat unfold 24 bes
  | bes-\markup { \italic "cresc." } bes bes bes
  | b!\f b b b
  | b b b d
  | c c\p-. c-. c-.
  | \repeat unfold 12 c
  | cis!\f cis cis cis
  | cis cis cis e

  % 149
  | \repeat unfold 16 d
  | d d d f
  | f f f f
  | e4. g8-.
  | g-. g-. g-. g-.
  | f4. a8-.
  | a-. a-. a-. a-.
  | bes4 r8 fis!-.
  | fis-. fis-. fis-. fis-.
  | g16( fis g a) bes8-. e,-.
  | e-. e-. e-. e-.
  | c16( d c b) a8-. c-.
  | c-. c-. c-. a-.
  | b4 r
  | r r8 b-.\p
  | b[-. b-. b]-. r
  | r4 r8 b-.
  | b[-. b-. b]-. r
  | r4 r8 b-.\pp
  | b[-. b-. b]-. r
  | r4 r8 b
  | b-\< b b b
  | b b b b-\!
  | ais\f ais ais ais
  | ais ais ais fis'
  | fis fis fis fis
  | b, b b b
  | b b b b
  | b-. d-. fis-. e-.
  | d-. b16( cis d8) cis16( d
  | e8) d16( e fis8) e16( fis
  | g8) r e-. r
  | fis-. r fis-. r
  | fis-. fis-.\p fis-. fis-.
  | \repeat unfold 20 fis
  | e'-\< e e e
  | e cis a e-\!
  | fis4-|\f r8 <e a>8-|
  | \repeat unfold 2 { <fis a>4-| r8 <e a>-| }
  | \repeat unfold 2 { <fis a>-| <e a>-| }
  | <fis a>4-| r8 <fis cis'>-|
  | \repeat unfold 2 { <fis d'>-| <fis cis'>-| }
  | a4-| r8 a-|

  % 200
  | \repeat unfold 2 { <d, b'>-| <d a'>-| }
  | <d b'>4 r8 fis-|
  | \repeat unfold 2 { <b, g'>-| <b fis'>-| }
  | <b g'>4-| r8 e16( fis)
  | g4. gis8-.
  | a8-. cis,16( d) e8-. r
  | g!4. e8-.
  | fis4 r
  | b2
  | a8-. cis,16[( b]) a8-. e'16( d)

  % 210
  | cis8-. g'16( fis) e8-. a,-.
  | a4 r8 e''-|
  | fis4 r8 b,-|
  | cis4 r8 ais-|
  | b4 r8 b-|
  | ais( b ais) a-|
  | gis( a gis) g-|
  | fis( g fis) cis-|
  | d( cis d) d-|
  | d2

  % 220
  | b4. e8-|
  | e-. e-.\p e-. e-.
  | \repeat unfold 20 e
  | dis\f dis dis dis
  | dis dis dis fis
  | b, b' b b

  % 230
  | e, e e e
  | a cis, cis cis
  | cis cis cis e
  | a, a' a a
  | d, d d d
  | d4 r
  | g r
  | cis4. e8
  | d( cis d) d-.
  | d4 r

  % 240
  | r g,(
  | fis) r
  | R2*10

  % 252
  | a8\fz a a a
  | a\f-. r d-. r
  | b-. r g-. r
  | fis-. d,16[( e)] fis8-. fis16( g)
  | a8-. a-. g-. fis-.
  | e-. e16( fis) g8-. g16( a)
  | b8-. b-. a-. g-.
  | fis4 r8 d'16( e)

  % 260
  | fis8-. fis-. e-. d-.
  | a a\p a a
  | \repeat unfold 8 a
  | a-\markup { \italic "cresc." } a a a
  | gis gis gis gis
  | g![ g g] a'
  | a\f a a a
  | \repeat unfold 20 a
  | a-. r a-. r
  | d-. r b-. r
  | a4-. r
  | R2
  | d,2 ~
  | d ~
  | d

  % 280
  | a'
  | a4 r8 g-.
  | fis4 r8 e-.
  | fis4 r8 g-.
  | fis4 r8 e-.
  | fis4-. r8 g-.
  | fis4-. r8 e-.
  | fis4-. r8 e-.
  | fis-| e-| fis-| e-|
  | fis4 r

  % 290
  | <d, a' d> r
  | <d a' d> r

  \bar "|."
}
