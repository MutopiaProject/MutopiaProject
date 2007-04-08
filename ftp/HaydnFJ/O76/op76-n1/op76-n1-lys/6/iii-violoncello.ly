\version "2.6.0"
celloThirdMov =  \relative es' {
  \key es \major
  \clef bass

  \repeat volta 2 {
    r4
    | R2.
    | r4 es-.\f r
    | r es,-. r
    | r es,-. r
    | R2.*2
    | f'4-.\mf f-. f-.
    | bes-. bes,-. r
    | R2.

    % 10
    | r4 f''-. r
    | r f,-. r
    | r f,-. r
    | bes-.\mf bes-. bes-.
    | es-. es-. es-.
    | bes-. bes-. bes-.
    | es,-. r
  }

  \repeat volta 2 {
    r4
    | R2.*3

    % 20
    | r4 r bes'-.\f
    | a8( bes) a( bes) c( a)
    | bes4-. bes'-. r
    | R2.*6
    | r4 r f-.\mf

    % 30
    | bes,-. r bes'-.\p
    | bes,-. r bes'-.
    | bes,-. r d'-.
    | bes,-.-\markup { \italic "dim." } r f'-.
    | bes,-. r as''-.
    | bes,,-. r r
    | R2.*4

    % 40
    | r4 es'-.\f r
    | r es,-. r
    | r es,-. r
    | R2.*2
    | f'4-.\mf f-. f-.
    | bes,-. bes'-. r
    | R2.
    | r4 es,-.\f r
    | r es-. r

    % 50
    | r es-. r
    | g,-.\mf g-. g-.
    | as-. r r
    | bes-. bes-. bes-.
    | es-. es-. es-.
    | bes-. bes-. bes-.
    | es,-. r r
    | bes'8(-\markup { \italic "cresc." } c) d( es) f( d)
    | es4 r r
    | bes-.\ff bes-. bes-.

    % 60
    | es,-. r
  }

  % Trio

  es'4-.\p
  | d2( c4)
  | bes2( as4)
  | g2( f4)
  | es2 c''4 ~
  | c bes-. as ~
  | as g-. f ~
  | f es-. bes-.
  | g-. es-. c8( es)
  | g2 as8( c) 
  | es2 b'4
  | c( a bes!)
  | g-. es-. r
  | R2.*3
  | r4 r es,-.
  | f!2( g4)
  | as2( bes4)
  | c2( d4)

  % 80
  | es2 es4 ~
  | es d-. des ~
  | des c-. bes ~
  | bes as-. f-.
  | g-. es-. g'-.
  | as( bes es,)
  | as,2 g'4-.
  | e( f) bes,-.
  | es,!2 es8(\f g)
  | as( g as) es-. bes'-. es,-.

  % 90
  | c'8( bes c) es,-. g-. es-.
  | as( g as) es-. f-. bes-.
  | es,4-. r r
  | R2.*11
  | r4 r es'-.\f
  | d2( c4)
  | bes2( as4)
  | g2( f4)
  | es2 r4
  | R2.*11

  % 120
  | r4 r es\f
  | f2( g4)
  | as2( bes4)
  | c2( d4)
  | es-. r es-.\p
  | d2( c4)
  | bes2( as4)
  | g2( f4)
  | es8 d es f g as
  | bes c d es f g

  % 130
  | as( g as) f-. d4
  | es8[( d es) bes-.] d[-. bes]-.
  | es4-. es,-. r
  | R2.*3
  | r4 r es'-.\f
  | b'2( c4)
  | g2( as4)
  | bes!2( bes,4)

  % 140
  | es r es,-.\p
  | f2( g4)
  | as2( bes4)
  | c2( d4)
  | es2 g,8-. es'-.
  | as,( es' d) es-. bes-. es-.
  | c( es d) es-. g,-. es'-.
  | as,( es' d) es-. as,-. bes-.
  | g4-. es-. as'-.
  | f-. des-. c-.

  % 150
  | as-. f-. es!-.
  | c-. as'-. bes-.
  | es,2.\f ~
  | es ~
  | es ~
  | es ~
  | es4 r

  \bar "|."
}
