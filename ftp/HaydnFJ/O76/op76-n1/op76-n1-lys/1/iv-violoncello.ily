\version "2.18.0"
celloFourthMov =  \relative e, {
  \key g \minor
  \clef bass

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    \tuplet 3/2 { g8(\f fis g) }
    | bes!4-. g-. d-. \tuplet 3/2 { c'8( d c) }
    | es4-. c-. fis,-. \tuplet 3/2 { d'8( es c) }
    | bes4-. \tuplet 3/2 { bes8( c a) } \noTupletNum g4-. d-.
    | \repeat unfold 2 { es4(-\trill d8) r }
    | \acciaccatura d8 \afterGrace es1-\trill( {d16[ es])}
    | d4-. d'-. r2
    | R1*6
    | r4 g-. g-. r

    % 14
    | r g-. g-. r
    | r g-. g-. r
    | R1
    | r2 r4 \tuplet 3/2 { f!8(\f e f) }
    | bes-. r \tuplet 3/2 { f!8( e f) } bes-. r \tuplet 3/2 { f!8-. e-. f-. }
    | \repeat unfold 2 { \tuplet 3/2 { bes[-. a-. bes-.] f-.[ e-. f-.] } }

    % 20
    | d1
    | g,2 c
    | f, r
    | f r
    | f \tuplet 3/2 { f'8[-. e-. f-.] es-.[ d-. c-.] }
    | bes4 r r2
    | r r4 \tuplet 3/2 { f'8-.\p g-. f-. }
    | bes4-. f-. d-.\tuplet 3/2 { f8-. g-. f-. }
    | bes4-. f-. d-. \tuplet 3/2 { f8-. g-. f-. }
    | bes4-. f-. d-. d'-.

    % 30
    | es2.\fz d4
    | es2.\fz d4
    | a1-\mf
    | bes ~
    | bes4 r r f
    | bes,1 ~
    | bes4 r r f'
    | bes,1 ~
    | bes2 r4 \tuplet 3/2 { d,8-. c-. d-. }
    | es4-.\f g-. c-. es-.

    % 40
    | a,-. a'-. bes-. d-.
    | es,-. c-. f-. f,-.
    | \tuplet 3/2 { bes8[ c bes] a[ c f] bes,[ c bes] a[ c f] }
    | \tuplet 3/2 { bes,[ d f] bes[-> a g] f[ es d] c[\p bes a] }
    | \tuplet 3/2 { bes[ c bes] a[ c f] bes,[ c bes] a[ c f] }
    | \tuplet 3/2 { bes,[ d f] bes[-> a g] f[ es d] c[ bes a] }
    | \deprecatedcresc \tuplet 3/2 { g[ bes d] g[ f es] d[ c bes] a![ g f] }
    | \tuplet 3/2 { es[ g bes] es[ d c] bes[ as g] f[ es d] }
    | \tuplet 3/2 { c[ es g] c[ es g] c[ d c] bes[ c bes] }
    | a2\f bes

    % 50
    | a bes
    | \tuplet 3/2 { a8[\< a a] bes[ bes bes] a[ a a] bes[ bes bes] }
    | es,2\!\ff e
    | f2. f4-.
    | bes,-. ges'2\fz( f4-.)
    | es(\p f es f)
    | es2( f)
    | bes,4-. ges'2\fz( f4-.)
    | f(\p ges % The source text has G (without alterations)
    es f)
    | es2( as,)

    % 60
    | des4-. as'2(\fz ges4-.)
    | f4(\p ges f ges)
    | f2( bes,)
    | es r
    | R1*2
    | bes'1\f
    | bes,4-. r r2
    | R1
    | bes4-. r d-. r

    % 70
    | es-. es-. f-. f-.
    | bes-. f-. bes,-. f-.
    | bes-. r r
  }

  r4
  | R1*5
  | r2 r4 \tuplet 3/2 { f'8(\f e f) }
  | bes4-. f-. c-. \tuplet 3/2 { bes'8( c bes) }

  % 80
  | des4-. bes-. e,-. c'-.
  | f,( bes as) r
  | R1*2
  | r4 \tuplet 3/2 { e,8( f g) } c,4 r
  | r4 f'-. f-. r
  | r e-. e-. r
  | r f-. f-. r
  | r f-. f-. r
  | r \tuplet 3/2 { es,8( d! es) } g4 r

  % 90
  | R1
  | r4 \tuplet 3/2 { es8( f es) } as4-. es-.
  | c-. r r2
  | r4 \tuplet 3/2 { es'8( fes es) } as4-. es-.
  | ces1\> ~
  | << { ces } { s4 s2.\! } >>
  | des1\p(
  | ces)
  | des ~
  | des

  % 100
  | des\pp ~
  | des
  | cis,(
  | cis')
  | b
  | e,2.\< \tuplet 3/2 { e8\!(\f fis e) }
  | a4-. e-. cis-. r
  | R1
  | r2 r4 \tuplet 3/2 { e'8( f! e) }
  | a4-.\fz e-. c!-.\fz \tuplet 3/2 { e8( f e) }

  % 110
  | a4-.\fz \tuplet 3/2 { e8( f e) } a4-.\fz \tuplet 3/2 { e8( f e) }
  | a4-.\fz \tuplet 3/2 { e8( f e) } a4-.\fz \tuplet 3/2 { e8( f e) }
  | g!4-.\fz \tuplet 3/2 { e8( f e) } g4-.\fz \tuplet 3/2 { e8( f e) }
  | g4-.\fz \tuplet 3/2 { e8( f e) } g4-.\fz \tuplet 3/2 { e8( f e) }
  | a,1\ff ~
  | a2. \tuplet 3/2 { a'8( bes! a) }
  | d4-.\fz \tuplet 3/2 { a8( bes a) } d4-.\fz \tuplet 3/2 { a8( bes a) }
  | d4-.\fz \tuplet 3/2 { a8( bes a) } d4-.\fz \tuplet 3/2 { a,8( bes a) }
  | c!4-.\fz \tuplet 3/2 { a8( bes a) } c4-.\fz \tuplet 3/2 { a8( bes a) }
  | c4-.\fz \tuplet 3/2 { a8( bes a) } c4-.\fz \tuplet 3/2 { a8( bes a) }

  % 120
  | d,1\ff ~
  | d2 r
  | R1*6
  | r4 \tuplet 3/2 { g'8(\f fis g) } bes4-. g-.
  | es-. \tuplet 3/2 { es8( d es) } g4-. es-.

  % 130
  | c-. r r2
  | R1*3
  | r4 \tuplet 3/2 { fis,8( g a) } d,4 d
  | c( d c d)
  | es1 ~
  | es\fz->\fermata
  | d2.\fermata

  \key g \major

  r4
  | g2\p r

  % 140
  | fis r
  | fis' r
  | g r
  | b,1(
  | c
  | d)
  | g,4 r r2
  | b1
  | c2( a')
  | c( cis)

  % 150
  | d2. b4
  | c2.\fz b4
  | c2.\fz b4
  | a-\mf r fis r
  | g1
  | g,4 r r d'
  | g,1
  | g4 r r2
  | c2(\< << { cis) } { s4 s4\! } >>
  | \tuplet 3/2 { d8[-. g-. b]-. d[-. b-. g-.] } d4-. d-.

  % 160
  | g,-. es'2(\fz d4)-.
  | c(\p d c d)
  | c2( d)
  | g,4 es'2(\fz d4)-.
  | c(\p d c d)
  | c2( f,)
  | bes4 f'2(\fz es4)-.
  | d(\p es d es)
  | d2( g,)
  | c r

  % 170
  | R1*2
  | g'1\f
  | g,4-. r r2
  | g'1
  | g,4-. r r2
  | \tuplet 3/2 { c,8[-. e-. g]-. c[-.-\markup { \italic cresc. } g-. e]-. 
  c[-. e-. g]-. c[-. g-. e]-. }
  | \tuplet 3/2 { cis[ e g] bes[ g e] cis[ e g] bes[ g e] }
  | \tuplet 3/2 { d[\ff g b!] d[ b g] d[ g b] d[ b g] }
  | d4-. r d-. r

  % 180
  | r2 r4 g'\p^\markup { pizz. }
  | b g b g
  | b r r d,
  | c'! d, c' d,
  | c' r r2
  | g4-\markup { \italic cresc. } r g r
  | g r r b,\f^\markup { arco }
  | c r d r
  | g, r r g'\p^\markup { pizz. }
  | b g b g

  % 190
  | b r r d,
  | c' d, c' d,
  | c' r r2
  | g4-\markup { \italic cresc. } r g r
  | g r r b,\ff^\markup { arco }
  | c r d r
  | g r r2
  | R1
  | g4-. d-. g,-. d'-.
  | g-. r d-. r

  % 200
  | g,-. r r

  \bar "|."
}
