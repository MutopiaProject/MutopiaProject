\version "2.6.0"
celloFourthMov =  \relative a {
  \key d \major
  \clef bass

  a8-|\f
  | d,4-| r
  | r r8 a'-|
  | d,4-| r
  | r r8 a'-|
  | d,-| a'-| d,-| a'-|
  | d,4 r
  | R2*5
  | r4 r8 a'16(\p g)
  | fis8-. fis16( e) d8-. e-.
  | fis16( g fis e) d8-. a'16( g)
  | fis8-. fis16( e) d8-. e-.
  | fis4( d8)-. a'-|\f
  | d,4-| r8 a'-|
  | d,4-| r8 a'-|
  | d,-| a'-| d,-| a'-|

  % 20
  | d,4-| r8 fis-|
  | b,4-| r8 fis'-|
  | b,4-| r8 e-|
  | a,-| e'-| a,-| e'-|
  | a,4 r
  | R2*5
  | r4 r8 e'16(\p d)
  | cis8-. cis16( b) a8-. b-.
  | cis16( d cis b) a8-. e'16( d)
  | cis8-. cis16( b) a8-. b-.
  | cis4( a8)-.\noBeam e'-|\f
  | a,-| e'-| a,-| e'-|
  | a,4 r8 d-|
  | g,!-| d'-| g,-| d'-|
  | g,4 r
  | R2*3
  | r4 r8 e''-|
  | d-| e-| d-| ais-|
  | b-| ais-| b-| cis-|
  | d-| cis-| d-| dis-|
  | e-| e-.\p e-. e-.
  | e-. e-. e-. e-.
  | \repeat unfold 16 e
  | e\f e e e
  | e e e e
  | \repeat unfold 16 d
  | \repeat unfold 8 cis

  % 60
  | d4 r
  | d, r
  | d r
  | d r8 gis,
  | a8-. a16( b cis8) a16( b
  | cis8) b16( cis d8) cis16( d
  | e8) d16( e fis8) d16( e
  | fis8) e16( fis gis8) fis16( gis
  | a8) fis16( gis a8) fis16( gis
  | a8) gis16( a b8) a16( b
  | c2)\fz
  | a
  | d,\fz ~
  | d4 r8 d\p
  | e4 r8 e
  | e,4 r8 e
  | a4 r
  | r r8 a-.\f
  | e'4-. r
  | r4 r8 e-.

  % 80
  | a4-. r
  | R2
  | r4 r8 e,16(\p fis)
  | gis8-. gis16( a) b8-. b16( cis)
  | d4( b8) gis16( a)
  | b8-. b16( cis) d8-. d16( e)
  | fis2
  | gis\fz
  | a8\f a fis fis
  | d d e e

  % 90
  | a,4 r
  | r r8 a-.
  | e4-. r
  | r r8 e-.
  | a4-. r
  | r a'-.
  | e'8-. e-.\p e-. e-.
  | \repeat unfold 8 e
  | e-\markup { \italic "cresc." } e e e

  % 100
  | dis dis dis dis
  | d! d d d
  | cis\f cis cis cis
  | \repeat unfold 2 { d d d d cis cis cis cis }
  | d d d d cis-. r gis-. r
  | a-. r fis-. r

  % 110
  | cis4-. r
  | R2
  | d ~
  | d 
  | e
  | e,
  | \repeat unfold 4 { a4 r8 e'-. }

  % 120
  | a,4-. r
  | R2*4
  | r4 r8 a\f
  | bes2 ~
  | bes ~
  | bes ~
  | bes4 bes'

  % 130
  | f d
  | bes r
  | R2*5
  | r4 r8 f'16(\p es)
  | d8-. d16( c) bes8-. c-.
  | d16( es d c) bes8-. f'16( es)
  | d8-.-\markup { \italic "cresc." } d16( c) bes8-. bes16( as)
  | g2\f ~
  | g
  | c4 r8 g'16( f)
  | es8-. es16( d) c8-. d-.
  | es16( f es d) c8-. g'16( f)
  | es8-.-\markup { \italic "cresc." } es16( d) c8-. c16( bes)
  | a2\f ~
  | a
  | d4 r
  | R2*3
  | r4 r8 d'-.
  | d-. d-. d-. d-.
  | e4. e8-.
  | e-. e-. e-. e-.
  | f4. fis8-.
  | fis-. fis-. fis-. fis-.
  | g4 r8 d-.

  % 160
  | d-. d-. d-. d-.
  | bes16( c bes a) g8-. r
  | R2
  | r4 r8 f-.
  | f-. f-. f-. f-.
  | e4 r
  | r r8 e-.
  | e[-.\p e-. e-.] r
  | r4 r8 e-.
  | e[-. e-. e-.] r

  % 170
  | r4 r8 e-.\pp
  | e[-. e-. e-.] r
  | r4 r8 e
  | e-\< e e e
  | e e e e-\!
  | e\f e e e
  | e e e e
  | d d d d
  | d d d d
  | e e e e

  % 180
  | fis fis fis fis
  | b,-. b16( cis d8) cis16( d
  | e8) d16( e fis8) e16( fis
  | g8) r e-. r
  | fis-. r fis-. r
  | b-. b\p b b
  | \repeat unfold 20 b

  % 191
  | a-\< a a a
  | a, a a a-\!
  | d,4\f r8 a''-|
  | d4-| r8 a-|
  | d4-| r8 a-| 
  | d-| a-| d-| a-|
  | d4-| r8 fis,-|
  | b-| fis-| b-| fis-|
  | b4-| r8 d,-|

  % 200
  | g-| d-| g-| d-|
  | g4-| r8 b,-|
  | e-| b-| e-| b-|
  | e-| e-. e-. e-.
  | e-. e-. g-. gis-.
  | a-. a-. a-. a-.
  | a a a a
  | a, a' a a
  | a a a a
  | a, a' a a

  % 210
  | a a a g
  | fis4 r
  | R2*6
  | r4 r8 b
  | fis( eis fis) fis-|

  % 220
  | g4.( gis8)-.
  | a-. a-.\p a-. a-.
  | \repeat unfold 20 a
  | a\f a a a
  | a a a a
  | \repeat unfold 16 g
  | \repeat unfold 8 fis
  | g4 r
  | g r
  | g2
  | fis8( e d fis)
  | g2

  % 240
  | a4 a,
  | d r
  | r r8 d-.
  | a'4-. r
  | r r8 a,-.
  | d4-. r
  | R2
  | r4 r8 a16(\p b)
  | cis8-. cis16( d) e8-. e16( fis)
  | g4( e8) cis16( d)

  % 250
  | e8-. e16( fis) g8-. g16( a)
  | b2
  | cis\fz
  | d8-. d-. b-. b-.
  | g-. g-. a-. a-.
  | d,4 r8 d16( e)
  | fis8-. fis-. e-. d-.
  | a4 r8 e'16( fis)
  | g8-. g-. fis-. e-.
  | d4 r

  % 260
  | R2*6
  | a4.-\markup { \dynamic "p" \italic " cresc." } g'8
  | fis\f fis fis fis
  | g g g g
  | fis fis fis fis

  % 270
  | g g g g
  | fis fis fis fis
  | g g g g
  | fis-. r cis-. r
  | d-. r b-. r
  | fis4-. r
  | R2
  | g'2 ~
  | g
  | a

  % 280
  | a,
  | \repeat unfold 6 { d4 r8 a'-. }
  | d,4-. r8 a-.
  | d,-| a'-| d,-| a'-|
  | d,4 r

  % 290
  | d r
  | d r

  \bar "|."
}
