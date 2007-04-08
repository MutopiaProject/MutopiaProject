\version "2.6.0"
violinIIFourthMov =  \relative e'' {
  \key d \major
  \clef violin

  e8-|\f
  | fis4-| r
  | r r8 e-|
  | fis4-| r
  | r r8 e-|
  | fis-| e-| fis-| e-|
  | fis4 r8 a,-.\p
  | a-. a-. a-. a-.
  | \repeat unfold 32 a
  | a[ a a] e'-|\f
  | fis4-| r8 e-|
  | fis4-| r8 e-|
  | fis-| e-| fis-| e-|

  % 20
  | fis4-| r8 cis-|
  | d4-| r8 cis-|
  | d4-| r8 b-|
  | cis-| b-| cis-| b-|
  | cis4 r8 e,-.\p
  | e-. e-. e-. e-.
  | \repeat unfold 32 e
  | e[ e e] d'-|\f
  | cis-| d-| cis-| d-|
  | cis4 r8 a-|
  | b-| a-| b-| a-|
  | b4 r8 a-|
  | b-| c-| b-| b-|

  % 40
  | b4. a8-|
  | a-| bes-| a-| a-|
  | a4. cis8-|
  | d-| cis-| d-| g-|
  | fis-| g-| fis-| e-|
  | fis-| g-| fis-| fis-|
  | e4 r
  | R2*3

  % 50
  | cis8-.\p cis-. cis-. cis-.
  | cis cis cis cis
  | <fis, cis'>\f <fis cis'> <fis cis'> <fis cis'>
  | <fis cis'> <fis cis'> <fis cis'> <fis cis'>
  | \repeat unfold 8 <fis b>
  | \repeat unfold 8 <e b'>
  | \repeat unfold 8 <e a>

  % 60
  | <fis a>4 r
  | fis r
  | e r
  | b r8 b
  | cis8-. a16( b cis8) a16( b
  | cis8) b16( cis d8) cis16( d
  | e8) d16( e fis8) d16( e
  | fis8) e16( fis gis8) fis16( gis
  | a8) fis16( gis a8) fis16( gis
  | a8) gis16( a b8) \slurDown a16( b \slurNeutral

  % 70
  | c2)\fz
  | a
  | bes\fz ~
  | bes4 r8 d,\p
  | c4 r8 c
  | b4 r8 b
  | a4 r8 a16(\f b)
  | cis!8-. cis-. b-. a-.
  | gis4-. r8 b16( cis)
  | d8-. d-. cis-. b-.

  % 80
  | a4-. r8 a'16( b)
  | cis8-. cis-. b-. a-.
  | e-. e-.\p e-. e-.
  | \repeat unfold 12 e
  | dis dis dis dis
  | d!\fz d d d
  | cis\f r a' r
  | b r gis r

  % 90
  | a a,16( b) cis8-. cis16( d)
  | e8-. e-. d-. cis-.
  | b-. b16( cis) d8-. d16( e)
  | fis8-. fis-. e-. d-.
  | cis-. a'16( b) cis8-. cis16( d)
  | e8-. e-. d-. cis-.
  | b-. b-.\p b-. b-.
  | \repeat unfold 8 b
  | b-\markup { \italic "cresc." } b b b

  % 100
  | \repeat unfold 8 b
  | a\f a a a
  | gis gis16 a b cis d b
  | a8 a a a
  | gis16 fis gis a b cis d b
  | a8 a a a
  | gis16 fis gis a b cis d b
  | a8-. r e'-. r
  | e-. r a-. r

  % 110
  | a4-. r
  | R2
  | fis,16( gis fis eis) fis( gis fis eis)
  | fis8( gis a d)
  | cis4 a8-. cis-.
  | cis( b) a-. gis-.
  | a4 r8 gis-.
  | a4 r8 d,-.
  | cis4 r8 gis'-.
  | a4 r8 d,-.

  % 120
  | cis4-. r8 e-.\p
  | a4-. r8 b-.
  | cis4-. r8 d-.
  | e4-. r8 fis-.
  | g!4-. r
  | r r8 g\f
  | f2 ~
  | f ~
  | f
  | d4 bes

  % 130
  | f d
  | bes r8 f'-.\p
  | \repeat unfold 8 f-.
  | \repeat unfold 24 f

  % 140
  | f-\markup { \italic "cresc." } f f f
  | f\f f f f
  | f f f f
  | es g-.\p g-. g-.
  | \repeat unfold 8 g
  | g-\markup { \italic "cresc." } f f f
  | g\f g g g
  | g g g g
  | f a a a

  % 150
  | \repeat unfold 20 a
  | g( a) bes-. bes-.
  | bes-. bes-. bes-. bes-.
  | a( bes) c-. c-.
  | c-. c-. c-. a-.
  | d,4 r8 a'-.

  % 160
  | a-. a-. a-. a-.
  | bes16( a bes c) d8-. gis,-.
  | gis-. gis-. gis-. gis-.
  | a16( gis a b) c8-. dis,-.
  | dis-. dis-. dis-. dis-.
  | e4 r8 e\p-.
  | e[-. e-. e-.] r
  | r4 r8 e-.
  | e[-. e-. e-.] r
  | r4 r8 cis!-.\pp

  % 170
  | cis[-. cis-. cis-.] r
  | r4 r8 cis
  | cis cis cis cis
  | cis-\< cis cis cis
  | cis cis cis cis-\!
  | cis\f cis cis cis
  | \repeat unfold 4 <cis fis>
  | \repeat unfold 8 <b fis'>
  | g'-. g16( fis) e8-. cis'-.

  % 180
  | d-. b-. cis-. ais-.
  | b-. b,16( cis d8) cis16( d
  | e8) d16( e fis8) e16( fis
  | g8) r e'-. r
  | d-. r e,-. r
  | d4 r
  | R2*3
  | g8\p g g g

  % 190
  | g g g g
  | cis,-\< cis cis cis
  | <e cis'> [ <e cis'> <e cis'> ] a'16[-\! g]
  | fis\f g fis e d b' a g
  | \repeat unfold 2 { fis g fis e d b' a g }
  | fis b a g fis b a g
  | fis g fis e d g fis e
  | d g fis e d g fis e
  | d e d cis b e d c

  % 200
  | b e d c b e d c
  | b c b a g c b a
  | g c b a g c b a
  | g8-| b-. b-. b-.
  | b-. b-. b-. b-.
  | e,4. a16( b)
  | cis8-. cis16( d) e8-. g,-.
  | fis-. d'16( e) fis( d b a)
  | gis4. d'8-.
  | cis-. e16( d) cis8-. g'!16( fis)

  % 210
  | e8-. e16( d) cis8-. e-.
  | d4 r8 g8-|
  | a4 r8 d,-|
  | e4 r8 cis-|
  | d4 r8 d-|
  | cis( d cis) c-|
  | b( c b) bes-|
  | a( bes a) a-|
  | a4. d8-|
  | d2 ~

  % 220
  | d4. b8-.
  | a4 r
  | R2*3
  | fis8\p fis fis fis
  | fis fis fis fis
  | <b, fis'>\f \repeat unfold 7 <b fis'>
  | \repeat unfold 8 <b e>
  | \repeat unfold 8 <a e'>
  | \repeat unfold 8 <a d>
  | <b d>4 r
  | b' r
  | \tieUp <e, a>2( ~
  | <fis a>8) \tieNeutral g( fis a)
  | b4 g'8( e)

  % 240
  | d( fis e cis)
  | d4 r8 d,16( e)
  | fis8-. fis-. e-. d-.
  | cis4 r8 e16( fis)
  | g8-. g-. fis-. e-.
  | d4 r8 d'16( e)
  | fis8-. fis-. e-. d-.
  | a a\p \repeat unfold 14 a

  % 251
  | gis gis gis gis
  | g\fz g g g
  | fis\f-. r d'-. r
  | e-. r cis-. r
  | d4 r
  | R2*3
  | r8 d,16( e) fis8-. fis16( g)
  | a8-. a-. g-. fis-.
  | e e\p e e
  | \repeat unfold 8 e
  | e-\markup { \italic "cresc." } e e e
  | e e e e
  | e' e e e
  | d\f d d d
  | cis cis16 d e fis g e
  | d8 d d d
  | cis16 b cis d e fis g e
  | d8 d d d
  | cis16 b cis d e fis g e
  | d8-. r a'-. r
  | a-. r d-. r
  | d4-. r
  | R2
  | b,16( cis b ais) b( cis b ais)
  | b8( cis d g)
  | fis4 d8-. fis-.

  % 280
  | fis( e) d-. cis-.
  | d4 r8 cis-.
  | d4 r8 g,-.
  | fis4 r8 cis'-.
  | d4 r8 g,-.
  | fis4-. r8 cis'-.
  | d4-. r8 g-.
  | fis4-. r8 g-.
  | fis-| g-| fis-| g-|
  | fis4 r

  % 290
  | <d, a' fis'>4 r
  | <d a' fis'> r

  \bar "|."
}
