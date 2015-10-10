\version "2.18.0"
violaFourthMov =  \relative f' {
  \key d \minor
  \clef alto

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    r8
    | f4(\p g)
    | f r
    | f( g)
    | f r
    | f8-. f-. f-. f-.
    | e4 r
    | b'8-. b-. b-. b-.
    | a4 r8\fermata
  }

  \repeat volta 2 {
    r8
    | cis,4( d)

    % 10
    | cis r
    | cis( d)
    | cis r
    | d r
    | d r
    | cis r
    | d r
    | d r
    | d r
    | g r
  }

  \alternative {
    {
      | f4 r8 s
    }

    {
      | f2\f ~
    }
  }

  % 22
  | f2
  | f,4( g)
  | f r
  | f( g)
  | f-. f'
  | e2
  | f4 d
  | c f

  % 30
  | d e
  | a, a'
  | f g!
  | c, g'
  | g2 ~
  | g ~
  | g ~
  | g ~
  | g8 g4 g8 ~
  | g g4 g8 ~

  % 40
  | g g4 g8 ~
  | g g4 d8-.
  | bes!( d) g,( bes)
  | e,( g) c,-. d'-.
  | bes!( d) g,( bes)
  | e,( g) c,-. bes'-.
  | g( e) c-. c'-.
  | c4 r8 f-.
  | d-. bes-. r g'-.
  | e-. c-. r a'-.

  % 50
  | f-. d-. r bes'-.
  | e,-. c'-. r e,-.
  | f4 r
  | R2*5
  | c,8-. e'-. g-. e-.
  | g4 r

  % 60
  | c,,8-. e'-. g-. e-.
  | g4 r
  | c,,8-. e'-. g-. e-.
  | c4.\fermata r8
  | R2*4
  | r8 g-. g-. r
  | r f-. f-. r

  % 70
  | r g-. g'-. r
  | r f,-. f'-. r
  | r bes,-. bes-. r
  | r e,-. e-. r
  | r e-. e-. r
  | r e-. e-. r
  | r e-. e( f)
  | f2
  | <c bes'>\fz
  | <f a>

  % 80
  | <c g'>\fz
  | <f a>
  | g'\fz
  | a4 c, ~
  | c c ~
  | c c ~
  | c c ~
  | c c ~
  | c c ~
  | c c ~


  % 90
  | c c ~
  | c8 r c-. r
  | c-. r c-. r
  | c4 r
  | r r8 a'-.
  | g4.( f8)
  | e4.( d8)
  | d2(
  | c4) r8d'-.
  | c4.( bes8)

  % 100
  | a4.( g8)
  | g2(
  | f4) r
  | e'2(
  | f4) r
  | e,2(\p
  | f4) r
  | d,2\f ~
  | d4. g8-.
  | g( a16 bes) c8-. cis-.


  % 110
  | cis4( d8) es-.
  | es4( d8) c!-.
  | c4( bes8) es-.
  | es4( d8) c-.
  | c4( bes8) a-.
  | g-. g4 g8-.
  | r8 fis4 fis8
  | r g4 g8-.
  | r a4 a8-.
  | r8 bes4 bes8-.

  % 120
  | r fis4 fis8-.
  | r g4 g8-.
  | r f!4 f8-.
  | r e!4 e8-.
  | r e4 e8-.
  | r e4 e8-.
  | r e4 e8-.
  | c'4 b8-. gis'-.
  | gis-. gis-. gis-. gis-.
  | gis4 r8 b-.

  % 130
  | b-. b-. b-. b-.
  | c4 r
  | c,8-. c-. c-. c-.
  | d4 r
  | d8-. d-. d-. d-.
  | c4 r8 cis-.
  | cis-. cis-. cis-. cis-.
  | cis4 r8 e'-.
  | e-. e-. e-. e-.
  | d4 r

  % 140
  | \stemUp a,2(
  | bes!
  | c) \stemNeutral
  | g(
  | gis)
  | a8-. r a-. r
  | a-. r a-. r
  | g!-. r g-. r
  | g'-. r g-. r
  | f4( g)

  % 150
  | f r
  | f( g)
  | f r
  | f8-. f-. f-. f-.
  | e4 r
  | b'8-. b-. b-. b-.
  | a4\fermata r8\fermata r
  | cis,4( d)
  | cis r
  | cis( d)

  % 160
  | cis r
  | d r
  | d r
  | cis r
  | d r
  | d r
  | d r
  | d2
  | bes
  | fis4. fis'8-.

  % 170
  | g-. g,-. r e'-.
  | f! f,! r d'-.
  | e-. e,-. r cis'-.
  | d-. r e-. r
  | f2
  | d
  | cis4 a
  | r a
  | r a
  | r a

  % 180
  | g'4.\fermata r8

  \bar "||"
  \key d \major

  | d2\pp ~
  | d4 r
  | d2 ~
  | d ~
  | d ~
  | d ~
  | d ~
  | d4 r
  | R2*4

  % 193
  | d'2 ~
  | d ~
  | d ~
  | d4. a8
  | b2
  | a4 r8 d,
  | g,4( gis)

  % 200
  | a2 ~
  | a ~
  | a4 r
  | R2
  | r4 r8 b-.\f
  | g( b) e,( g)
  | cis,( e) a-. a-.
  | a4 r8 d-.
  | b-. g-. r e'-.
  | cis-. a-. r fis'-.

  % 210
  | d-. b-. r g'-.
  | cis,-. a'-. r cis,-.
  | d4 r
  | R2*5
  | a8-. cis-. e-. cis-.
  | e4 r

  % 220
  | a,8-. cis-. e-. cis-.
  | e4 r
  | a,8-. cis-. e-. cis-.
  | a4.\fermata r8
  | R2*4
  | r8 a-. a-. r
  | r a-. a-. r

  % 230
  | r e'-. e,-. r
  | r a'-. a,-. r
  | r b-. b-. r
  | r cis-. cis-. r
  | r cis-. cis-. r
  | r cis-. cis-. r
  | r e,-. e-. r
  | r e-. e( f)
  | fis!2
  | <cis' e>2\fz

  % 240
  | <d fis>
  | <g, e'>\fz
  | <fis d'>
  | <e cis'>\fz
  | <d d'>4 d'(
  | cis4. e8
  | d2)
  | cis4.( e8
  | d2)
  | cis4.( e8

  % 250
  | d2)
  | cis4.( e8
  | d4) r
  | r <a g'>-.
  | <a fis'>-. r
  | r <a g'>-.
  | <a fis'>-. r
  | r <a e'>
  | fis'( a)
  | cis,( a')

  % 260
  | a,( fis')
  | a,( g')
  | fis( d)
  | a( cis)
  | \repeat unfold 2 { \tuplet 3/2 { d,8-. fis-. a-. d-. a-. fis-. } }
  | d4 r <d a' d> r
  | <d a' d> r8

  \bar "|."
}
