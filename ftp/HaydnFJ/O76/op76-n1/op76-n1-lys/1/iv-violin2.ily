\version "2.18.0"
violinIIFourthMov =  \relative g' {
  \key g \minor
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    \tuplet 3/2 { g8(\f fis g) }
    | bes!4-. g-. d-. \tuplet 3/2 { c'8( d c) }
    | es4-. c-. fis,-. \tuplet 3/2 { d'8( es c) }
    | bes4-. \tuplet 3/2 { bes8( c a) } \noTupletNum g4-. d-.
    | \repeat unfold 2 { es4(-\trill d8) r }
    | \acciaccatura d8 \afterGrace es1(\trill {d16[ es])}
    | d4-. d'-. r2
    | r4 g2(-> fis4)
    | r4 c'2(-> bes8 a)
    | g4( fis g) d-.

    % 10
    | cis-. d-. cis-. d-.
    | g,4( a8 bes c!4 cis)
    | d r r2
    | r4 d,-. d-. r
    | r es-. es-. r
    | r bes-. bes-. r
    | R1
    | r2 r4 \tuplet 3/2 { f'8(\f e f) }
    | bes-. r \tuplet 3/2 { f( e f) } bes-. r \tuplet 3/2 { f-. e-. f-. }
    | \tuplet 3/2 { bes[-. a-. bes-.] f-.[ e-. f]-. bes[-. a-. bes]-. f[-. e-. f]-. }

    % 20
    | bes1 ~
    | bes2 <g bes>
    | <f a>4 r <g bes>2
    | <f a>4 r <bes, g'>2
    | <a f'>4-. r r \tuplet 3/2 { f'8-.\p g-. f-. }
    | bes4-. f-. d-. a'-.
    | bes( c d) c-.
    | bes r r \tuplet 3/2 { a8-. bes-. c-. }
    | f,4 r r \tuplet 3/2 { a8-. bes-. c-. }
    | f,4 r r2

    % 30
    | c'4..\fz( bes16 a4) f'
    | c4..\fz( bes16 a4) f'
    | <es, c'>2.\mf es4
    | d( es d es)
    | d r r es
    | d( es d es)
    | d r r es
    | d( es d es)
    | d2 f' ~
    | f4 bes,-. es-. g-.

    % 40
    | f( c d bes)
    | g2( f4 es)
    | d c'->( d8) r c4->(
    | d8) r r4 r c->(\p
    | d8) r c4->( d8) r c4(->
    | d8) r r4 r bes8. bes16
    | bes2\cresc r4 bes8. bes16
    | g'2 r4 d8. d16
    | g2 r4 g8. g16
    | f1\f

    % 50
    | f
    | \tuplet 3/2 { f8[-\< f f] f[ f f] f[ f f] f[ f f]-\! }
    | <bes, g'>1\ff
    | d2( es4) a,-.
    | bes-. des,2(\fz des4)-.
    | c(\p des c des)
    | c1
    | des4-. des2\fz( des4-.)
    | des1\p ~
    | des2 c

    % 60
    | des4-. d2\fz( es4)-.
    | d4(\p es d es)
    | d2( f)
    | bes,4-. ges'2(\fz a!4)-.
    | bes1\p ~
    | bes2 es,
    | << { d'4( es) d( es) } \\ { f,1\f } >>
    | <f d'>4 r r2
    | << { d'4( es) d( es) } \\ { f,1 } >>
    | <f d'>4-. r f'-. r

    % 70
    | g-. es-. d-. c-.
    | bes-. a-. bes-. c-.
    | d-. r r
  }

  r4
  | r des,2(\f c4)
  | r ges'2(-> f8 es)
  | f2. f4
  | f1 ~
  | f2 e
  | f r
  | r4 as2(-> g4)

  % 80
  | r4 des'2(-> c8 bes)
  | as4( g f g)
  | as( g as g)
  | \acciaccatura g8 \afterGrace as1(\trill {g16[ as])}
  | g2 r
  | r4 as-. as-. r
  | r <g bes>-. <g bes>-. r
  | r as-. as-. r
  | r as-. as-. r
  | r bes bes( g)

  % 90
  | as( bes c des)
  | c r r2
  | r4 \tupletNum \tuplet 3/2 { es,8( f es) } \noTupletNum as4-. es-.
  | ces-. bes-. ces-. bes'-.
  | as1-\> ~
  | << { as } { s4 s2.-\! } >>
  | as4(\p fes des as)
  | as'1 ~
  | as4( fes des as)
  | as'( fes des as)

  % 100
  | as'( fes des as)
  | as'( fes des as)
  | a!1 ~
  | a
  | d! ~
  | << { d1 } { s2.-\< s4-\! } >>
  | cis4 \tuplet 3/2 { e8(\f fis e) } a!4-. e-.
  | cis-. r r \tuplet 3/2 { e8( fis e) }
  | a4-. e-. c!-. gis'-.
  | a-.\fz b-. c!-.\fz \tuplet 3/2 { e,8( f! e) }

  % 110
  | \repeat unfold 4 { a4-.\fz \tuplet 3/2 { e8( f e) } }
  | g!4-.\fz \tuplet 3/2 { e8( f e) } 
  \repeat unfold 3 { g4-.\fz \tuplet 3/2 { e8( f e) } }
  | <e cis'>1\ff ~
  | <e cis'>2. \tuplet 3/2 { a8( bes a) }
  | \repeat unfold 4 { d4-.\fz \tuplet 3/2 { a8( bes a) } }
  | c!4-.\fz \tuplet 3/2 { a8( bes a) }
  \repeat unfold 2 { c4-.\fz \tuplet 3/2 { a8( bes a) } }
  c4-.\fz \tuplet 3/2 { c8( d c) }

  % 120
  | <a fis'>1\ff ~
  | <a fis'>2 r
  | r4 g'2(->\f fis4)
  | r c'2(-> bes8 a)
  | g4( fis g) d-.
  | cis-. d-. cis-. d ~
  | d8 g,( a bes c!4 cis)
  | d2 r
  | R1*2

  % 130
  | r4 \tuplet 3/2 { c8( d c) } es4-. c-.
  | a \tuplet 3/2 { a8( bes a) } c4-. a,-.
  | bes( a) bes( a)
  | bes1(
  | a2) r
  | R1*2
  | r1\fermata
  | r2\fermata r4

  \key g \major

  r4
  | <d b'>1(-\markup { \italic m.v. }

  % 140
  | <d c'>) ~
  | <d c'>
  | <d b'>
  | d'(
  | e2.) c,4
  | b2( a)
  | g4 r r2
  | g''1 ~
  | g2 e ~
  | e a, ~

  % 150
  | a r
  | a4..\fz( g16) fis4 d'
  | a4..(\fz g16) fis4 d'
  | c\mf r a r
  | d,1 ~
  | d4 r r d ~
  | d d2 d4
  | d4 r r2
  | << { c2( cis) } { s2-\< s4 s4-\! } >>
  | \tuplet 3/2 { d8[-.\f g-. b-.] d[-. b-. g-.] } d4-. c'!-.

  % 160
  | b-. bes,2(\fz bes4)-.
  | a(\p bes a bes)
  | a1
  | bes4 bes2(\fz bes4)-.
  | bes1\p ~
  | bes2 a
  | bes4 b2(\fz c4-.)
  | b(\p c b c)
  | b2( d)
  | g,4-. es'2(\fz fis!4)-.

  % 170
  | g1\p ~
  | g2 c,
  | << { b'!4( c) b( c) } \\ { d,1 } >>
  | <d b'>4-. r r2
  | << { b'!4( c) b( c) } \\ { d,1 } >>
  | <d b'>4-. r r2
  | \tuplet 3/2 { c8[-. e-. g]-. c[-.-\markup { \italic cresc. } g-. e]-. 
  c[-. e-. g]-. c[-. g-. e]-. }
  | \tuplet 3/2 { cis[-. e-. g]-. bes[-. g-. e]-. cis[-. e-. g]-. bes[-. g-. e]-. }
  | \tuplet 3/2 { d[-.\ff g-. b!]-. d[-. b-. g]-. d[-. g-. b]-. d[-. b-. g]-. }
  | d4-. r <d c'!-.> r

  % 180
  | r2 r4 b'\p^\markup { pizz. }
  | g b g b
  | g b d a
  | fis a fis a
  | fis a c g
  | d-\markup { \italic cresc. } b' g d'
  | b g' r g\f^\markup { arco }
  | \tuplet 3/2 { g8[-. fis-. e]-. d[-. c-. b]-. a[-. g-. fis]-. e[-. d-. c]-. }
  | b4 r r b'\p^\markup { pizz. }
  | g b g b

  % 190
  | g b d a
  | fis a fis a
  | fis a c g
  | d-\markup { \italic cresc. } b' g d'
  | b g' r g\ff^\markup { arco }
  | \tuplet 3/2 { g8[-. fis-. e]-. d[-. c-. b]-. a[-. g-. fis]-. e[-. d-. c]-. }
  | b4-. d-. g-. d-.
  | b-. d-. g-. d-.
  | \tuplet 3/2 { g8[( a b]) a[( b c]) b[( c d]) c[( b a]) }
  | g4-. r <d-. a' fis'> r

  % 200
  | <d b' g'-.> r r

  \bar "|."
}
