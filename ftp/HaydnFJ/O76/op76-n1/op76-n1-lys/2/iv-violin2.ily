\version "2.18.0"
violinIIFourthMov =  \relative a' {
  \key d \minor
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    r8
    | a4\p( bes)
    | a r
    | a( bes)
    | a r
    | b8-. b-. b-. b-.
    | a4 r
    | d8-. d-. d-. d-.
    | cis4 r8\fermata
  }

  \repeat volta 2 {
    r8
    | g4( gis)

    % 10
    | a r
    | g!( gis)
    | a r
    | a r
    | bes r
    | g r
    | f r
    | a r
    | bes r
    | <cis, e> r
  }

  \alternative {
    {
      | <a f'> r
    }

    {
      | f'8-.\f a,-. d-. a-.
    }
  }

  % 22
  | d8-. a-. d-. a-. 
  | d-. d4 e16( cis)
  | d8( f gis a)
  | d, d4 e16( cis)
  | d8( f gis a)
  | a,( e' gis a)
  | b-. b-. b16( c d b)
  | c4 a ~

  % 30
  | a gis
  | a c ~
  | c b
  | c <c e>
  | <d f>2(
  | <c e>
  | <d f>
  | <c e>)
  | <d f>8 <d f>4 <d f>8
  | <c e> <c e>4 <c e>8

  % 40
  | <d f> <d f>4 <d f>8
  | <c e> <c e>4 d8
  | bes( d) g,( bes)
  | e,( g) c,-. d'-.
  | bes( d) g,( bes)
  | e,( g) c,-. bes'-.
  | g( e) c-. g'-.
  | f4 r8 cis(
  | d4) r8 f!(
  | e4) r8 g!(

  % 50
  | f4) r8 bes'-.
  | bes4( a8) g-.
  | f( g a) g-.
  | f-. r r e-.
  | d-. r r c-.
  | bes-. r r a-.
  | g-. r r f-.
  | f4( e8) e-.
  | e-. e-. e-. e-.
  | e4 r8 e-.

  % 60
  | e-. e-. e-. e-.
  | e4 r8 e-.
  | e-. e-. e-. e-.
  | <e bes'>4.\fermata r8
  | R2*4
  | r8 c-. c-. r
  | r c-. c-. r

  % 70
  | r c-. c'-. r
  | r c,-. c'-. r
  | r d,-. d-. r
  | r g,-. g-. r
  | r g-. g-. r
  | r g g r
  | r g-. g( gis)
  | a2
  | <g! e'>\fz
  | a

  % 80
  | <g' bes>\fz
  | <f a>
  | <c' bes'>\fz
  | <c a'>4 <a, f'>(
  | << { e'4. g8 } \\ { bes,2 } >>
  | <a f'>2)
  | << { e'4.( g8) } \\ { bes,2 } >>
  | <a f'>2
  | << { e'4.( g8) } \\ { bes,2 } >>
  | <a f'>2

  % 90
  | << { e'4.( g8) } \\ { bes,2 } >>
  | <a f'>8 r g'-. r
  | f-. r g-. r
  | <f a>4 r
  | r r8 c'-.
  | bes4.( a8)
  | g4.( f8)
  | f2(
  | g4) r8 f'-.
  | e4.( d8)

  % 100
  | c4.( bes8)
  | bes2(
  | c4) r8 bes'-.
  | bes4( a8) g-.
  | g4( f8) bes,-.\p
  | bes4( a8) g-.
  | g4( f8)\noBeam bes'-.\f
  | bes4( a8) g-.
  | g4( fis8) d-.
  | d4( c8) bes-.

  % 110
  | bes4( a8) c-.
  | c4( d8) es-.
  | es4( d8) c-.
  | a4( bes8) c-.
  | fis,4( g8) a-.
  | d,4 r
  | d8-. d-. r4
  | d8-. d-. r4
  | d8-. d-. r4
  | d8-. d-. r4

  % 120
  | d8-. d-. r4
  | d'8-. d-. r4
  | d8-. d-. r4
  | d4. d'8
  | d4( c8) b-.
  | b4( a8) e-.
  | dis2
  | e4 r8 b-.
  | b-. b-. b-. b-.
  | <d, b'>4 r8 d'-.

  % 130
  | d-. d-. d-. d-.
  | e4 r
  | e,8-. e-. e-. e-.
  | f4 r
  | f8-. f-. f-. f-.
  | e4 r8 e-.
  | e-. e-. e-. e-.
  | <g, e'>4 r8 bes'!-.
  | bes-. bes-. bes-. bes-.
  | a4 r

  % 140
  | d,2 ~
  | d ~
  | d ~
  | d ~
  | d
  | cis8-. r <cis e>-. r
  | <cis e>-. r <cis e>-. r
  | <cis e>-. r <cis e>-. r
  | <cis e>-. r bes'-. r
  | a4( bes)

  % 150
  | a r
  | a( bes)
  | a r
  | b8-. b-. b-. b-.
  | a4 r
  | d8-. d-. d-. d-.
  | cis4\fermata r8\fermata r
  | g4( gis)
  | a r
  | g!( gis)


  % 160
  | a r
  | a r
  | bes r
  | g r
  | f r
  | a r
  | bes r
  | a8-. c-. a16( bes c a)
  | d8-. bes-. d-. bes-.
  | d-. d4 d8-.


  % 170
  | d-. r c-. r
  | c-. r bes-. r
  | bes-. r a-. r
  | a-. r a-. r
  | gis2- ~
  | gis
  | a4 r8 cis,(
  | a'4)-. r8 a(
  | cis4)-. r8 cis(
  | e4)-. r8 e

  % 180
  | cis4.\fermata r8

  \bar "||"
  \key d \major

  | fis,4(\pp g)
  | fis r
  | fis( g)
  | fis2(
  | g
  | fis
  | g
  | fis4.) a8-.
  | b4( d,)

  % 190
  | a'( d,)
  | g( d)
  | fis( d)
  | b'( d,)
  | a'( d,)
  | g( d)
  | fis( d)
  | g( gis)
  | a2
  | b

  % 200
  | e,4( g!)
  | fis2
  | cis4. b'8-.
  | g( b) e,( g)
  | cis,( e) a,-. b'-.\f
  | g( b) e,( g)
  | cis,( e) a,-. e'-.
  | d4 r8 ais(
  | b4) r8 d(
  | cis4) r8 e(

  % 210
  | d4) r8 g'-.
  | g4( fis8) e-.
  | d( e fis) e-.
  | d-. r r cis-.
  | b-. r r a-.
  | g-. r r fis-.
  | e-. r r d-.
  | d4( cis8)\noBeam e-.
  | e-. e-. e-. e-.
  | e4 r8 e-.

  % 220
  | e-. e-. e-. e-.
  | e4 r8 e-.
  | e-. e-. e-. e-.
  | g4.\fermata r8
  | R2*4
  | r8 e-. e-. r
  | r d-. d-. r

  % 230
  | r cis'-. cis,-. r
  | r d'-. d,-. r
  | r d-. d-. r
  | r e-. e-. r
  | r e-. e-. r
  | r e-. e-. r
  | r cis-. cis-. r
  | r cis-. cis-. r
  | d2
  | <a g'>\fz

  % 240
  | <d fis>
  | <e cis'>\fz
  | <fis d'>
  | <a g'>\fz
  | <d, a' fis'>4 \slurUp <a fis'>(
  | \slurNeutral <a g'>2)(
  | <a fis'>
  | <a g'>)
  | <a fis'>(
  | <a g'>

  % 250
  | <a fis'>
  | <a g'>
  | <a fis'>4) r
  | r <e' cis'>-.
  | <fis d'>-. r
  | r <e cis'>-.
  | <fis d'>-. r
  | r <a g'>-.
  | <a fis'>-. d-.
  | <e, cis'>2(


  % 260
  | <fis d'>
  | <e cis'>
  | <fis d'>
  | <e cis'>)
  | \repeat unfold 2 { \tuplet 3/2 { d8-. fis-. a-. d-. a-. fis-. } }
  | d4 r
  | <d a' fis'> r
  | <d a' fis'> r8

  \bar "|."
}
