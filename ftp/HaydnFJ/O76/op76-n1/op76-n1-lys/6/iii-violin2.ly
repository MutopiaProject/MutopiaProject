\version "2.6.0"
violinIIThirdMov =  \relative bes' {
  \key es \major
  \clef violin

  \repeat volta 2 {
    r4
    | R2.
    | r4 bes-.\f r
    | r g-. r
    | r bes,-. r
    | r bes'(\mf as)
    | r g( f)
    | es-. es-. es-.
    | d-. r r
    | R2.

    % 10
    | r4 c'-.\f r
    | r as-. r
    | r c,-. r
    | <as d>-. <as d>-. <as d>-. 
    | <g es'>-. <g es'>-. <g es'>-. 
    | <as f'>-. <as f'>-. <as f'>-. 
    | <g es'>-. r
  }

  \repeat volta 2 {
    es''4(\f
    | f) r b,(
    | c) r d(
    | c) r a(

    % 20
    | bes) r f'-.
    | f-. f-. f-.
    | \grace { g32[( f e] } f4)-. r d-.
    | es!-. es-. es-.
    | d-. r f-.\mf
    | es2(-> d4)
    | c2(-> bes4)
    | as2.-> ~
    | as4 g-. es-.
    | d2( c4)

    % 30
    | bes4-. bes'-. r
    | r d-.\p r
    | r f-. r
    | r as-.-\markup { \italic "dim." } r
    | r as-. r
    | R2.
    | f,4-.\pp d-. r
    | R2.
    | bes'4-. g-. r
    | R2.

    % 40
    | r4 bes-.\f r
    | r g-. r
    | r bes,-. r
    | r bes'(\mf as)
    | r g( f)
    | es-. es-. es-.
    | d-. r r
    | R2.
    | r4 des-.\f r
    | r des-. r

    % 50
    | r des-. r
    | des'-.\mf des-. bes-.
    | c-. r r
    | <as, d!>-. <as d>-. <as d>-.
    | <g es'>-. <g es'>-. <g es'>-. 
    | <as f'>-. <as f'>-. <as f'>-. 
    | g''8(-\markup { \italic "cresc." } f) es( d) c( bes)
    | as2 r4
    | g'8(-\markup { \italic "più " \dynamic "f" } f) es( d) c( bes)
    | as(\ff g) f( es) d( f)

    % 60
    | es4-. r
  }

  % Trio

  r4
  | R2.*7
  | r4 r es'-.\p
  | d2( c4)

  % 70
  | bes2( as4)
  | g2( f4)
  | es2 ges'4 ~
  | ges f-. es ~
  | es d4-. c ~
  | c bes-. d ~
  | d es-. r
  | R2.*7
  | r4 r es,-.
  | f2( g4)
  | as2( bes4)
  | c2( d4)
  | es!2.\<
  | es2.\!\f ~

  % 90
  | es ~
  | es2( as4)
  | g-. r r
  | R2.*3
  | r4 r es-.\p
  | d2( c4)
  | bes2( as4)
  | g2( f4)

  % 100
  | es r g-.
  | f2( es4)
  | d2( c4)
  | bes2( as4)
  | g2 a'4-.\f
  | bes2 fis4-.
  | g2 d4-.
  | es2 as4 ~
  | as g-. r
  | R2.*3

  % 112
  | r4 r es-.\p
  | f2( g4)
  | as2( bes4)
  | c2( d4)
  | es2 g,4-.
  | as2( bes4)
  | es,2 g4 ~
  | g fis-. f ~

  % 120
  | f es-. r
  | bes'2\f es,4 ~
  | es c'8( bes as g)
  | g2( f4)
  | es-. r r
  | R2.*7
  | r4 r es'-.\p
  | d2( c4)
  | bes2( as4)
  | g2( f4)
  | es2 g4-.\f
  | f2( es4)
  | des2( c4)
  | bes2( d!4)

  % 140
  | es4 r r
  | R2.*7
  | r4 r es-.\p
  | f2( g4)

  % 150
  | as2( bes4)
  | c2( d4)
  | es!2 es4-.\f
  | d2( des4)
  | c2( g'4)
  | as2( f4)
  | g-. r

  \bar "|."
}
