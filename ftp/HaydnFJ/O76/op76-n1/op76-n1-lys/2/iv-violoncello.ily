\version "2.18.0"
celloFourthMov =  \relative d' {
  \key d \minor
  \clef bass

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    r8 
    | d2(\p
    | d,4)-. r
    | d'2(
    | d,4)-. r
    | d'8-. d-. d-. d-.
    | cis4 r
    | e,8-. e-. e-. e-.
    | a4 r8\fermata
  }

  \repeat volta 2 {
    r8
    | a2(

    % 10
    | a,4) r
    | a'2(
    | a,4) r
    | f' r
    | g r
    | a r
    | bes r
    | f r
    | g r
    | a r
  }

  \alternative {
    {
      % 20
      | d, r8 s8
    }

    {
      | d2\f ~
    }
  }

  | d ~
  | d ~
  | d ~
  | d ~
  | d
  | c!
  | d4 e
  | a, r

  % 30
  | R2*3
  | \repeat unfold 5 { c,8 c' c c }
  | \repeat unfold 4 { c,4 \acciaccatura b'8 c4 }

  % 42
  | R2
  | r4 r8 d-.
  | bes( d) g,( bes)
  | e,( g) c,-. bes'-.
  | g( e) c-. bes'-.
  | a( c) e-. f-.
  | bes,( d) fis-. g-.
  | c,( e) gis-. a-.

  % 50
  | d,( f) a-. bes-.
  | e,4 c'
  | f, r
  | R2*4
  | r4 r8 c'-.
  | c-. c-. c-. c-.
  | e,,4 r8 c''-.

  % 60
  | c-. c-. c-. c-.
  | e,,4 r8 c''-.
  | c-. c-. c-. c-.
  | e,,4.\fermata r8
  | R2*4
  | r8 bes'-. bes-. r
  | r a a r

  % 70
  | r bes-. bes'-. r
  | r a,-. a'-. r
  | \repeat unfold 4 { r bes,-. bes-. r }
  | r bes-. bes( b)
  | \repeat unfold 3 { c c c c <c, c'>\fz <c c'> <c c'> <c c'> }

  % 83
  | \repeat unfold 4 { f f' f f f f f f }

  % 91
  | f-. c-. e-. c-. 
  | f-. c-. e-. c-.
  | f4 r
  | R2*2
  | r4 r8 as-.\p
  | as4( g8) f-.
  | f4( e8) r
  | R2

  % 100
  | r4 r8 des'-.
  | des4( c8) bes-.
  | bes4( a!8) r
  | R2*4
  | d,,2\f ~
  | d ~
  | d ~

  % 110
  | d
  | d'2 ~
  | d ~
  | d4. d8-.
  | d4( e!8) fis-.
  | g( bes) cis-. d-.
  | fis,( a) cis-. d-.
  | g,( bes) cis-. d-.
  | a( c!) cis-. d-.
  | bes( c!) cis-. d-.


  % 120
  | fis,( a) cis-. d-.
  | g,( bes) cis-. d-.
  | f,!( a) cis-. d-.
  | e,!( gis) b-. d-.
  | e,( gis) b-. d-.
  | e,( gis) a-. c-.
  | e,( a) b-. c-.
  | e,4 r
  | R2*9
  | r4 r8 g'-.
  | g-. g-. g-. g-.
  | f4 r

  % 140
  | f,2( 
  | g
  | a)
  | bes
  | bes,
  | \repeat unfold 8 { a8-. r }
  | d,2( 

  % 150
  | d'4) r
  | d'2(
  | d,4) r
  | d'8-. d-. d-. d-.
  | cis4 r
  | e,8-. e-. e-. e-.
  | a4 r8\fermata r
  | a2(
  | a,4) r
  | a'2(

  % 160
  | a,4) r
  | f' r
  | g r
  | a r
  | bes r
  | f r
  | g r
  | c8-. d,-. c'-. d,-.
  | bes'-. d,-. bes'-. d,-.
  | fis-. d-. fis-. d-.

  % 170
  | g-. d'-. e,-. c'-.
  | f, a d, bes'
  | e, g cis, a'
  | d, a' c,! a'
  | bes,2 ~
  | bes
  | a8-. cis-. e-. g-.
  | \repeat unfold 3 { a, cis e g }

  % 180
  | a,4.\fermata r8

  \bar "||"
  \key d \major

  | R2*23
  | r4 r8 b'-.\f
  | g( b) e,( g)
  | cis,( e) a,-. g-.
  | fis( a) cis-. d-.
  | g,( b) dis-. e-.
  | a,( cis) eis-. fis-.

  % 210
  | b,( d) fis-. g-.
  | cis,4 a'
  | d, r
  | R2*4
  | r4 r8 cis'-.
  | cis-. cis-. cis-. cis-.
  | cis,,4 r8 cis''-.

  % 220
  | cis-. cis-. cis-. cis-.
  | cis,,4 r8 cis''-.
  | cis-. cis-. cis-. cis-.
  | cis,,4.\fermata r8
  | R2*4
  | r8 g''-. g-. r
  | r fis-. fis-. r

  % 230
  | r g-. g,-. r
  | r fis'-. fis,-. r
  | \repeat unfold 4 { r g'-. g-. r }
  | r g,-. g-. r
  | r g-. g( gis)
  | \repeat unfold 3 { a a a a a\fz a a a }
  | \repeat unfold 4 { d, d' d d d d d d }
  | d4 r
  | r a-.
  | d-. r
  | r a-.
  | d-. r
  | r a
  | \repeat unfold 3 { \grace { d,16[( a'] } d2) ~ d }
  | \repeat unfold 2 { \tuplet 3/2 { d,8-. fis-. a-. d-. a-. fis-. } }
  | d4 r
  | <d a' d> r
  | <d a' d> r8

  \bar "|."
}
