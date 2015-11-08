\version "2.18.0"
violinIFourthMov =  \relative a' {
  \key d \minor
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    a8\p
    | d-. d4 e16( cis)
    | d8( f gis a)
    | d,8-. d4 e16( cis)
    | d8( f gis a)
    | gis-. gis-. gis16( a b gis)
    | a4( a,8) a'-.
    | gis-. gis-. gis16( a b gis)
    | a4\fermata e'8\noBeam\fermata
  }

  \repeat volta 2 {
    a,,
    | e'-. e4 d16( f)

    % 10
    | e8( g! bes! a)
    | e-. e4 d16( f)
    | e8( g bes a)
    | d-. d-. d,16( e f d)
    | e8[( g])-. e[( g])-.
    | a,-. a-. a16( b cis a)
    | d8 f4 a8
    | d-. d-. d,16( e f d)
    | e8[( g])-. e[( g])-.
    | a,-. a-. a16( b cis a)
  }

  \alternative {
    { | d4 r8 s8 }
    { | d2\f }
  }

  | a'2 ~
  | a ~
  | a ~
  | a ~
  | a ~
  | a ~
  | a4 gis
  | a4. a8

  % 30
  | b-. b-. b16( c d b)
  | c4. c8-.
  | d-. d-. d16( e f d)
  | e4( c8) c-.
  | b-. b-. b16( c d b)
  | c8( e) c( e)
  | b-. b-. b16( c d b)
  | c4. c8-.
  | b-. b-. b16( c d b)
  | c8( e) c( e)

  % 40
  | b-. b-. b16( c d b)
  | c4. d8
  | bes!( d) g,( bes)
  | e,( g) c,-. d'-.
  | bes( d) g,( bes)
  | e,( g) c,-. bes'-.
  | g( e) c-. e-.
  | f4 r8 cis(
  | d4) r8 f!(
  | e4) r8 g!(

  % 50
  | f4) r8 d'-.
  | d4( c8) bes-.
  | a( bes c) <e, c'>-.
  | << { c'4( bes8) a-. a4( g8) f-. f4( e8) 
    d-. d4( c8) b-. b4( c8) } \\
  { d4. c8 bes4. a8 g4. f8 e4. d8 d4( e8) } >> <g, bes'>8-.
  | <g bes'>-. <g bes'>-. <g bes'>-. <g bes'>-.
  | << { bes'4. bes8-. } \\ { c,16( des c des c8) g } >>

  % 60
  | <g bes'>8-. <g bes'>-. <g bes'>-. <g bes'>-.
  | << { bes'4. bes8-. } \\ { c,16( des c des c8) g } >>
  | <g bes'>8-. <g bes'>-. <g bes'>-. <g bes'>-.
  | <c bes' g'>4.\fermata <a' c>8-.
  | <a c>[-. <a c>-. <a c>]-. <f a>-.
  | <f a>[-. <f a>-. <f a>]-. <d f>-.
  | <d f>[-. <d f>-. <d f>]-. <bes d>-.
  | <bes d>[-. <bes d>-. <bes d>]-. d''-.
  | e,,4. c''8-.
  | f,,4. d''8-.

  % 70
  | e,,4. c''8-.
  | f,,4. f'8-.
  | g,,4. d'8-.
  | cis4. d8-.
  | cis4. d8-.
  | cis4. d8-.
  | cis4. d8-.
  | c!2
  | <c bes'>\fz
  | c

  % 80
  | <bes' e>\fz
  | c,
  | <e' c'>\fz
  | f4. f8
  | \acciaccatura a8 g f g e
  | f4( a8) f
  | \acciaccatura a g f g e
  | f4( c'8) f,
  | \acciaccatura a g f g e
  | f4( a8) f


  % 90
  | \acciaccatura a g f g e
  | f-. r c'-. r
  | a-. r c-. r
  | a4 r
  | r r8 f-.
  | f4( e8) d-.
  | d4( c8) b-.
  | b2(
  | c4) r8 bes'!-.
  | bes4( a8) g-.


  % 100
  | g4( f8) e-.
  | e2( 
  | f4) r8 d'-.
  | d4( c8) bes-.
  | bes4( a8) d,-.\p
  | d4( c8) bes-.
  | bes4( a8) d'-.\f
  | d4( c8) bes-. 
  | bes4( a8) bes-.
  | bes4( a8) g-.

  % 110
  | g4( fis8) a-.
  | a4( bes8) c-.
  | fis,4( g8) a-.
  | c,4( d8) es-.
  | es4( d8) c-.
  | bes4 r8 bes'(
  | a4) r8 c(
  | bes4) r8 g(
  | fis4) r8 a(
  | g4) r8 bes(


  % 120
  | a4) r8 c
  | bes2
  | a
  | gis4. f'8
  | f4( e!8) d-.
  | d4( c8) c-.
  | c4( b8) a-.
  | a4( gis8) <d, f'!>-.
  | <d f'>-. <d f'>-. <d f'>-. <d f'>-.
  | << { f'4. } \\ { gis,16( a gis a gis8) } >> gis'-.

  % 130
  | gis-. gis-. gis-. gis-.
  | a16( b a b a8) a,-.
  | a-. a-. a-. a-.
  | a,16( bes! a bes a8) a'-.
  | a-. a-. a-. a-.
  | a,16( bes! a bes a8) <g! bes'>-.
  | <g bes'>-. <g bes'>-. <g bes'>-. <g bes'>-.
  | << { bes'4. } \\ { cis,16( d cis d cis8) } >> cis''-.
  | cis-. cis-. cis-. cis-.
  | d16( cis d cis d8) d,,-.

  % 140
  | d-. d-. d-. d-.
  | es16( f es f es8) g-.
  | fis16( g fis g fis8) a-.
  | g16( a g a g8) d'-.
  | f16( e f e f8) gis,,-.
  | a-. cis4 e8 ~
  | e g4 bes8-.
  | cis,-. e4 g8 ~
  | g bes4 cis8-.
  | d-. d4 e16( cis)


  % 150
  | d8( f gis a)
  | d,-. d4 e16( cis)
  | d8( f gis a)
  | gis-. gis-. gis16( a b gis)
  | a4( a,8) a'-.
  | gis-. gis-. gis16( a b gis)
  | a4\fermata a'8\noBeam\fermata a,,
  | e'-. e4 d16( f)
  | e8( g bes! a)
  | e-. e4 d16( f)


  % 160
  | e8( g bes a)
  | d-. d-. d,16( e f d)
  | e8[( g)]-. e[( g)-.]
  | a,-. a-. a16( b cis a)
  | d8 f4 a8
  | d-. d-. d,16( e f d)
  | e8[( g)]-. e[( g)-.]
  | fis-. a-. fis16( g a fis)
  | g8[( bes)]-. g[( bes)]-.
  | a-. c-. a16( bes c a)

  % 170
  | bes8-. r c r
  | a r bes r
  | g r a r
  | f r e r
  | d-. f,-. as-. d,-.
  | f-. gis,-. f'-. d-.
  | a'4 r8 a(
  | cis4)-. r8 cis(
  | e4)-. r8 e(
  | g4)-. r8 g


  % 180
  | e'4.\fermata a,,8\pp

  \bar "||"
  \key d \major

  | d8-. d4 e16( cis)
  | d8( fis gis a)
  | d,8-. d4 e16( cis)
  | d8( fis gis a)
  | ais( b cis d)
  | a!4( d,8) a'-.
  | ais( b cis d)
  | a!4( d,8) fis-.
  | g-. g4 b16( g)

  % 190
  | eis8( fis a fis)
  | e! e4 g16( e)
  | cis8( d e fis)
  | g-. g4 b16( g)
  | fis8[( a]-.) fis[( a]-.)
  | e-. e4 g16( e)
  | d8[( fis]-.) d[( fis]-.)
  | e( g) b,-. d-.
  | cis( e) a,-. fis'-.
  | e( g) b,-. d-.


  % 200
  | cis( e) a,-. cis-.
  | d( fis) a,-. d-.
  | e([ g) a,] b'-.
  | g( b) e,( g)
  | cis,[( e) a,]-. b-.\f
  | g( b) e,( g)
  | cis,( e) a,-. cis-.
  | d4 r8 ais'(
  | b4) r8 d(
  | cis4) r8 e(


  % 210
  | d4) r8 b'-.
  | b4( a8) g-.
  | fis[( g] a[) <cis, a'>]-.
  | << { a'4( g8) fis-. fis4( e8) d-. 
    d4( cis8) b-. b4( a8) gis-. } \\
  { b4. a8 g4. fis8 e4. d8 cis4. b8 } >>
  | <b gis'>4( <a a'>8)\noBeam <a g'>-.
  | <a g'>-. <a g'>-. <a g'>-. <a g'>-.
  | << { g'4. g8-. } \\ { a,16( bes! a bes a8) a } >>

  % 220
  | <a g'>-. <a g'>-. <a g'>-. <a g'>-.
  | << { g'4. g8-. } \\ { a,16( bes! a bes a8) a } >>
  | <a g'>-. <a g'>-. <a g'>-. <a g'>-.
  | <a g' e'>4.\fermata <fis' a>8-.
  | <fis a>[-. <fis a>-. <fis a>-.] <d fis>-.
  | <d fis>[-. <d fis>-. <d fis>-.] <b d>-.
  | <b d>[-. <b d>-. <b d>-.] <g b'>-.
  | <g b'>[-. <g b'>-. <g b'>-.] b''-.
  | cis,,4. a''8-.
  | d,,4. cis8-.

  % 230
  | b''4. d,,8-.
  | a''4. d,8-.
  | e,4. b'8-.
  | ais4. b8-.
  | ais4. b8-.
  | ais4. b8-.
  | ais4. b,8-.
  | ais4. b8-.
  | a!2
  | <e' cis'>\fz

  % 240
  | a,
  | <a' g'>\fz
  | a,
  | <e'' cis'>\fz
  | <d, fis' d'>4 r8 d'
  | \acciaccatura fis8 e d e cis
  | d4( fis8) d
  | \acciaccatura fis8 e d e cis
  | d4( a'8) d,
  | \acciaccatura fis8 e d e cis

  % 250
  | \tuplet 3/2 { d-. e-. fis-. d-. e-. fis-. }
  | \tuplet 3/2 { e-. fis-. g-. a,-. b-. cis-. } \noTupletNum
  | \tuplet 3/2 { d-. cis-. d e fis g }
  | \tuplet 3/2 { gis a b g e cis }
  | \tuplet 3/2 { a cis d e fis g }
  | \tuplet 3/2 { gis a b g e cis }
  | \tuplet 3/2 { d e fis g a b }
  | \tuplet 3/2 { cis a cis e a, cis }
  | \tuplet 3/2 { d a g fis e d }
  | \tuplet 3/2 { e fis g a, b cis }

  % 260
  | \tuplet 3/2 { d cis d e fis g }
  | \tuplet 3/2 { gis a b g e cis }
  | \tuplet 3/2 { a cis d e fis g }
  | \tuplet 3/2 { gis a b g e cis }
  | \tuplet 3/2 { d-. fis-. a-. d-. a-. fis-. }
  | \tuplet 3/2 { d-. fis-. a-. d-. a-. fis-. }
  | d4 r <d, fis' d'> r
  | d4 r8

  \bar "|."
}
