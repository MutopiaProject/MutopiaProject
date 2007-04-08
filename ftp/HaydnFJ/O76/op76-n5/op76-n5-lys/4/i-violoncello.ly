\version "2.6.0"
celloFirstMov =  \relative bes, {
  \key bes \major
  \clef bass

  \repeat volta 2 {
    bes1\p ~
    | bes ~
    | bes ~
    | bes
    | es4-| r d-| r
    | c-| r r2
    | f,1 ~
    | f ~
    | f ~

    % 10
    | f
    | g4-| r f-| r
    | bes-| r r2
    | d'2.(\p cis4)
    | d2.( cis4)
    | d2. d,4
    | es1(
    | f
    | g
    | << { f) } { s2 s2 } >>

    % 20
    | es2( e)
    | f1
    | bes,4\f r bes r
    | bes8-| r bes-. r bes-. r bes-. r
    | bes4 r bes r
    | bes8-| r bes-. r bes-. r bes-. r
    | bes4 r bes r
    | bes8 bes' bes bes a,\fz a' a a
    | g, g' g g d, d' d d
    | g r d r g r d r

    % 30
    | g,\ff g' d, d' g, g' d, d'
    | g, g' a, a' bes, bes' b, b'
    | \repeat unfold 3 { c, c' c c c c c c }
    | c4 r r8 c,16( b c b c b)
    | c4 r r2
    | r r4 e'(\p
    | f4. b,8 c gis a e)
    | f4. c8 bes!( a g f)

    % 40
    | e4 r r fis''(
    | g4. fis8 g fis g fis)
    | g4.( dis8 e b c fis,)
    | g( e c g f e d c)
    | f\fz f'4 g8\p as( bes as g)
    | f4.\fz g8\p as( bes as g)
    | f\fz f4 c8\p des( es f es)
    | des8\fz des4 a8\p bes( c des c)
    | bes\fz bes4 c8\p des( c des c)
    | << { des2 des, } { s2-\< s4. s8-\! } >>

    % 50
    | c16-|\f c'( b c) e,-. c'-. d,-. c'-. 
    \repeat unfold 2 { c,-| c'( b c) e,-. c'-. d,-. c'-. }
    c, c' c, c' c, c' c, c'
    | f,4 r f r
    | f r f r
    | R1
    | r2 a8-| a-| a-| a-|
    | bes bes bes bes bes bes b b
    | c4 r r2
    | c,16-| f( e f) c-| a'( g a) c,-| c'( b c) c,-| f'( e f)
    | c,4-. r c2

    % 60
    | f4 r \clef tenor r8 a''-.\p r f-.
    | r bes-. r g-. r e-. r c-.
    | f4 r r2
    | R1
    | r2 r8 \clef bass c[-. c-. c]-.
    | f,4 r r8 c'[-. c-. c]-.
    | f,16\ff \repeat unfold 15 f
    | \repeat unfold 16 f,
    | f4 f f r\fermata
  }

  | d1\p ~

  % 70
  | d ~
  | d ~
  | d2. f'4
  | e-| r d-| r
  | cis-| r r2
  | fis,1 ~
  | fis ~
  | fis ~
  | fis ~
  | fis
  | g16\f-| g'( fis g) bes,-. g'-. a,-. g'-. 
  g,-| g'( fis g) bes,-. g'-. a,-. g'-.
  | g,1
  | d'4 r fis, r
  | fis'1
  | g4 r g r
  | g bes,2\fz bes4
  | es, r es r
  | e1(
  | f4) r f r
  | fis1(

  % 90
  | g8) g' g g g g g g
  | a, a' a a a a a a
  | bes, bes' bes bes bes bes bes bes
  | es,16-| es'( d es d es d es) a,4 r
  | d,16-| d'( cis d cis d cis d) g,4 r
  | c r d r
  | \clef violin g4 r r8 bes-. r g-.
  | r c-. r a-. r fis-. r d-.
  | g4 r r2
  | R1*2

  % 101
  | r2 \clef tenor g4( as)
  | g( d es e)
  | f r \clef bass r8 f,-. r f-.
  | f,4 r r8 f'-. r f-.
  | f,4 r r8 f'\pp r f
  | f,4 r r8 f' r f
  | f, r g r as r a r
  | bes1\p ~
  | bes-\markup { \italic "cresc" } ~

  % 110
  | bes ~
  | bes
  | es4-|\f r <g, d'>-| r
  | <c, c'>-| r r2
  | f1\p ~
  | f-\markup { \italic "cresc" } ~
  | f ~
  | f
  | g4-|\f r f-| r
  | bes-| r r2

  % 120
  | d'2.(\p cis4)
  | d2.( cis4)
  | d2.( c!4)
  | b1
  | c
  | c,2.( b4)
  | c2.( b4)
  | c2( bes!)
  | a!2.( gis4)
  | a2.( gis4)

  % 130
  | a1
  | bes4 r r2
  | R1
  | r2 ges4.\fz f8\p
  | es( d! es f) ges2
  | f8-.\f f'-. r f f, f' f, f'
  | \repeat unfold 2 { f, f' r f f, f' f, f' }
  | f,1 ~
  | f ~

  % 140
  | f4 r r8 f16( e f e f e)
  | f4 r r2
  | r r4 a'(\p
  | bes4. d8 e f cis d)
  | a( bes e, f es d c bes)
  | a1 ~
  | a ~
  | a
  | as ~
  | as ~

  % 150
  | as
  | g2(-\< ges)-\!
  | f4\f r f r
  | f r f2
  | bes4 r bes r
  | bes r bes r
  | R1
  | r2 d8-| d-| d-| d-|
  | es es es es e e e e
  | f4 r r2

  % 160
  | f,1 ~
  | f4 r f'2
  | bes,4 r r8 d'-.\p r bes-.
  | r es-. r c-. r a-. r f-.
  | bes4 r r2
  | R1
  | r8 as,[\f as as] as4 r
  | r8 g[ g g] ges2
  | f1\p ~
  | f2 r8 fis[\fz-. fis-. fis]-.

  % 170
  | g-. g-. r es-. r f-. r f'-.
  | r d'-. r es-. r d-. r es-.
  | d-|\ff bes,-| es-| bes-| d-| bes-| es-| bes-|
  | d bes a a' as, as' g, g'
  | d,1\fermata
  | es1\p ~
  | es
  | e
  | f ~
  | f ~

  % 180
  | f ~
  | f
  | bes4 r r8 f'[-. f-. f]-.
  | bes,4 r r8 f'[-. f-. f]-.
  | bes,16\ff \repeat unfold 15 bes
  | \repeat unfold 16 bes
  | bes8 r bes r bes r bes r
  | bes4 r bes r
  | bes r r2

  \bar "|."
}
