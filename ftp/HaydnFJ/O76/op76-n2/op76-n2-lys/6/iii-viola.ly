\version "2.6.0"
violaThirdMov =  \relative g' {
  \key es \major
  \clef alto

  \repeat volta 2 {
    r4
    | R2.
    | r4 g-.\f r
    | r bes,-. r
    | r g-. r
    | r g'(\mf f)
    | r es( d)
    | c-. c-. c-.
    | d-. r r
    | R2.

    % 10
    | r4 as'-.\f r
    | r c,-. r
    | r as-. r
    | f-.\mf f-. f-.
    | g-. g-. g-.
    | d'-. d-. d-.
    | es-. r
  }

  \repeat volta 2 {
    c\f
    | b8( c) d( es) f( g)
    | es4-. c-. bes!-.
    | a8( bes) c( d) es( f)

    % 20
    | d4-. bes-. r
    | R2.
    | r4 r bes-.
    | a8( bes) a( bes) c( a)
    | bes4-. d-.\mf d'-.
    | c2(-> bes4) 
    | a2(-> g4)
    | f2.-> ~
    | f4 es-. c-.
    | f,2.

    % 30
    | bes4-. f'-. r
    | r bes-.\p r
    | r d,-. r
    | r f-.-\markup { \italic "dim." } r
    | r d-. r
    | r d-.\pp bes-.
    | R2.
    | r4 g'-. es-.
    | R2.*2

    % 40
    | r4 g-.\f r
    | r bes,-. r
    | r g-. r
    | r g'(\mf f)
    | r es( d)
    | c-. c-. c-.
    | d-. r r
    | R2.
    | r4 <bes g'>-.\f r
    | r <bes g'> r

    % 50
    | r <bes g'> r
    | es4-.\mf es-. es-.
    | es-. r r
    | f,-. f-. f-.
    | g-. g-. g-.
    | d'-. d-. d-.
    | es'8(-\markup { \italic "cresc." } d) c( bes) as( g)
    | f2 r4
    | es'8(-\markup { \italic "più " \dynamic "f" }
    d) c( bes) as( g)
    | f(\ff es) d( c) bes( as)

    % 60
    | g4-. r
  }

  % Trio

  r4
  | R2.*3
  | r4 r es'-.\p
  | d2( c4)
  | bes2( as4)
  | g2( f4)
  | es2 c''4 ~
  | c bes-. as ~

  % 70
  | as g-. f ~
  | f es-. d-.
  | es2 a4-.
  | bes2 fis4-.
  | g2 d4-.
  | es2 bes4-.
  | es,2 r4
  | R2.*3

  % 80
  | r4 r es-.
  | f2( g4)
  | as2( bes4)
  | c2( d4)
  | es2 es4 ~
  | es d-. des ~
  | des c-. bes ~
  | bes as-. as ~
  | as g-. g8(\f bes)
  | c2( des4)

  % 90
  | es2( des4)
  | c2( f,4)
  | g-. r r
  | R2.*7

  % 100
  | r4 r es'-.\p
  | d2( c4)
  | bes2( as4)
  | g2( f4)
  | es2 c'4-.\f
  | d2 a'4-.
  | bes2 f,4-.
  | g2( bes4)
  | bes2 r4

  % 109
  | R2.*7
  | r4 r es,-.
  | f2( g4)
  | as2( bes4)
  | c2( d4)

  % 120
  | es2 g,4\f
  | as2( bes4)
  | c2( d4)
  | es2( f4)
  | bes,-. r r
  | R2.*3
  | r4 r es-.\p
  | d2( c4)

  % 130
  | bes2( as4)
  | g2( f4)
  | es2 g'8(\p as)
  | f( g) f( g) es( f)
  | d( es) d( es) c( d)
  | bes( c) bes( c) as( bes)
  | g4 r bes'-.\f
  | as2( g4)
  | e2( f4)
  | es!2( as,4)

  % 140
  | g r r
  | R2.*3
  | r4 r es-.\p
  | f2( g4) as2( bes4)
  | c2( d4)
  | es2( c4)
  | des2( e4)

  % 150
  | f2( g4)
  | as2 g8( f)
  | es!2 g,4-.\f
  | as2( bes4)
  | c2( des4)
  | c2( ces4)
  | bes-. r

  \bar "|."
}
