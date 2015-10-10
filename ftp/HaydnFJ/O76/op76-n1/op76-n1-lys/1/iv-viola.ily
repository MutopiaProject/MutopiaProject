\version "2.18.0"
violaFourthMov =  \relative g {
  \key g \minor
  \clef alto

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    \tuplet 3/2 { g8(\f fis g) }
    | bes!4-. g-. d-. \tuplet 3/2 { c'8( d c) }
    | es4-. c-. fis,-. \tuplet 3/2 { d'8( es c) }
    | bes4-. \tuplet 3/2 { bes8( c a) } \noTupletNum g4-. d-.
    | \repeat unfold 2 { es4(\trill d8) r }
    | \acciaccatura d8 \afterGrace es1(\trill {d16[ es])}
    | d4-. d'-. r \tuplet 3/2 { g8( fis g) }
    | bes4-. g-. d-. \tuplet 3/2 { c'8( d c) }
    | es4-. c-. fis,-. d'-.
    | g,( a bes) d,-.

    % 10
    | es4(\trill d8) r es4(\trill d8) r 
    | \acciaccatura d8 \afterGrace es1\trill( {d16[ es])}
    | d4-. d'-. r2
    | r4 bes,-. bes-. r
    | r bes-. bes-. r
    | r cis-. cis-. r
    | R1
    | r2 r4 \tuplet 3/2 { f,8(\f e f) }
    | bes-. r \tuplet 3/2 { f( e f) } bes-. r \tuplet 3/2 { f-. e-. f-. }
    | \tuplet 3/2 { bes[-. a-. bes-.] f-.[ e-. f]-. bes[-. a-. bes]-. f[-. e-. f]-. }

    % 20
    | f1
    | d'2 e
    | \tuplet 3/2 { f8[-. c-. bes]-. a[-. g-. f]-. } e2
    | \tuplet 3/2 { f'8[-. c-. bes]-. a[-. g-. f]-. } e2
    | \tuplet 3/2 { f'8[-. d-. c]-. bes[-. a-. g]-. } f4 r
    | r2 r4 \tuplet 3/2 { f'8-.\p g-. f-. }
    | bes4-. f-. d-. a'-.
    | bes r r es,(
    | d) r r es(
    | d) r r f

    % 30
    | f1\fz
    | f1\fz
    | f1\mf ~
    | f4 f2-> f4 ~
    | f r r f-> ~
    | f f2-> f4-> ~
    | f r r f-> ~
    | f f2-> f4-> ~
    | f4 bes,2-> bes'4-> ~
    | bes\f g2-> es4-.

    % 40
    | c-. f2-> f4
    | g( es d c)
    | d f, ~ f8 r f4-> ~
    | f8 r r4 r f'->\p ~
    | f8 r f4-> ~ f8 r f4-> ~
    | f8 r r4 r2
    | r4 \tuplet 3/2 { bes8[\cresc a g] f[ es d] c[ bes a!] }
    | \tuplet 3/2 { g[ bes es] g[-> f es] d[ c bes] as[ g f] }
    | \tuplet 3/2 { es[ g c] es[ g c] } es4 d
    | c\f es d2

    % 50
    | c4 es d2
    | \tuplet 3/2 { c8[\< d es] c[ d es] c[ d es] c[ d es]\! }
    | c2\ff des
    | bes( c4) es,-.
    | d bes2\fz( bes4-.)
    | bes1\p ~
    | bes2 a
    | bes4-. bes2\fz( bes4)-.
    | bes1\p ~
    | bes2 es

    % 60
    | as,4-. ces2\fz( bes4)-.
    | ces1\p ~
    | ces2 d,!-.
    | es es'\fz
    | e4(\p g! e g)
    | f2 f,
    | bes'4\f( \grace d8 c4) bes4( \grace d8 c4)
    | bes4-. r r2
    | bes4( \grace d8 c4) bes4( \grace d8 c4)
    | bes4-. r bes-. r

    % 70
    | bes-. es,-. f-. f-.
    | f-. es-. d-. es-.
    | d-. r r
  }

  r4
  | r bes2(\f a4)
  | r4 es'2( des8 c)
  | des2. a!4
  | bes( a bes a)
  | \acciaccatura a8 \afterGrace bes1(\trill {a16[ bes])}
  | a2 r
  | R1*2

  % 81
  | r2 r4 e'
  | f( e f e)
  | \acciaccatura e8 \afterGrace f1\trill( {e16[ f])}
  | e2 r
  | r4 c-. c-. r
  | r c-. c-. r
  | r c-. c-. r
  | r des-. des-. r
  | r des( es) \tuplet 3/2 { es8( f e) }

  % 90
  | as4( es c bes)
  | as4 r r2
  | R1
  | r4 g'-. as-. \tuplet 3/2 { g8( as bes) }
  | es,1\>
  | << { es,( } { s4 s2.\! } >>
  | fes1\p
  | es)
  | e ~
  | e

  % 100
  | e\pp ~
  | e
  | e ~
  | e
  | fis(
  | << { gis) } { s2.\< s4\! } >>
  | a4 r r \tuplet 3/2 { e8( fis e) }
  | a4-. e-. cis-. gis''-.
  | a-. \tuplet 3/2 { gis8( a b) } c!4-. b-.
  | g-.\fz \tuplet 3/2 { gis8( a b) } e,4-. \tuplet 3/2 { e8( f! e) }

  % 110
  | \repeat unfold 4 { a4-.\fz \tuplet 3/2 { e8( f e) } }
  | \repeat unfold 4 { g4-.\fz \tuplet 3/2 { e8( f e) } }
  | \tieDown g1( ~
  | <g bes>2.) \tieNeutral \tuplet 3/2 { a8( bes a) }
  | \repeat unfold 3 { d4-.\fz \tuplet 3/2 { a8( bes a) } }
  d4-.\fz \tuplet 3/2 { a,8( bes a) } 
  | \repeat unfold 3 { c4-.\fz \tuplet 3/2 { a8( bes a) } } 
  c4-.\fz\tuplet 3/2 { a'8( bes a) }

  % 120
  | c1\ff ~
  | c2 r4 \tuplet 3/2 { g8\f( fis g) }
  | bes4-. g-. d-. \tuplet 3/2 { c'8( d c) }
  | es4-. c-. fis,-. d'-.
  | g,4( a bes) d,-.
  | es4(\trill d8) r es4(\trill d8) r
  | \acciaccatura d8 \afterGrace es1\trill( {d16[ es])}
  | d4-. d'-. r2
  | r4 \tuplet 3/2 { bes,8( a bes) } d4-. bes-.
  | g-. \tuplet 3/2 { g8( fis g) } bes4-. g-.

  % 130
  | es \tuplet 3/2 { a8( bes a) } c4-. a-.
  | fis4-. \tuplet 3/2 { fis8( g fis) } a4-. fis-.
  | g( fis) g( fis)
  | g1(
  | fis2) r4 fis4-.
  | g( fis g fis)
  | g1 ~
  | g1\fz->\fermata
  | fis2.\fermata

  \key g \major

  r4
  | g'1(-\markup { \italic m.v. }

  % 140
  | a) ~
  | a
  | g ~
  | g ~
  | g2 c,,(
  | d1)
  | g4 r r2
  | d1
  | e2( c')
  | e1

  % 150
  | fis2 r4 d
  | d1\fz
  | d\fz
  | d4\mf r d r
  | b( c b c)
  | b r r c
  | b( c b c)
  | b r r2
  | c(\< << { cis) } { s4 s4\! } >>
  | \tuplet 3/2 { d8[-.\f g-. b-.] d-.[ b-. g-.] } d4-. a-.

  % 160
  | b-. g2\fz( g4)-.
  | g1\p ~
  | g2 fis
  | g4 g2\fz( g4)-.
  | g1\p ~
  | g2 c
  | f,4 as2\fz( g4)-.
  | as1\p ~
  | as2 b!
  | c c\fz

  % 170
  | cis4(\p e! cis e)
  | d2 d,
  | g'4(\f a) g( a)
  | g-. r r2
  | g4( a) g( a)
  | g-. r r2
  | \tuplet 3/2 { c,,8[-. e-. g]-. c[-.-\markup { \italic cresc. } g-. e-.] 
  c[-. e-. g-.] c-.[ g-. e-.] }
  | \tuplet 3/2 { cis[ e g] bes[ g e] cis[ e g] bes[ g e] }
  | \tuplet 3/2 { d[\ff g b!] d[ b g] d[ g b] d[ b g] }
  | d4-. r d' r

  % 180
  | r2 r4 b\p^\markup { pizz. }
  | d b d b
  | d r r fis,
  | d' fis, d' fis,
  | d' r r2 
  | <b d>4-\markup { \italic cresc. } r <b d> r
  | <b d> r r d'4\f^\markup { arco }
  | \tuplet 3/2 { e8[-. d-. c]-. b[-. a-. g]-. fis[-. e-. d]-. c[-. b-. a]-. }
  | g4 r r b\p^\markup { pizz. }
  | d b d b

  % 190
  | d r r fis,
  | d' fis, d' fis,
  | d' r r2 
  | <b d>4-\markup { \italic cresc. } r <b d> r
  | <b d> r r d'4\ff^\markup { arco }
  | \tuplet 3/2 { e8[-. d-. c]-. b[-. a-. g]-. fis[-. e-. d]-. c[-. b-. a]-. }
  | g4 r r2
  | R1
  | g4-. d'-. d-. fis-.
  | g-. r <d c'-.> r

  % 200
  | <g, d' b'-.> r r

  \bar "|."
}
