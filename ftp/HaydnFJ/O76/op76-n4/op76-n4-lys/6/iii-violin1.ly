\version "2.6.0"
violinIThirdMov =  \relative es'' {
  \key es \major
  \clef violin

  \repeat volta 2 {
    es4-.\f
    | d8( es f es) g4-.
    | es-. r bes'-.
    | es,-. r es'-.
    | es,-. r g'-.
    | es,2(\mf-> d4)
    | c2(-> bes4)
    | a8( bes a bes c a)
    | bes4-. r f'-.\f
    | e8( f g f) as4-.

    % 10
    | f-. r c'-.
    | f,-. r f'-.
    | f,-. r as'-.
    | d,,,8(\mf es f g as bes)
    | g( as bes c d es)
    | d( es f g as bes)
    | g4-. r
  }

  \repeat volta 2 {
    g(\f
    | as) r d,(
    | es) r g(
    | f) r c(

    % 20
    | d) r d-.
    | es-. es-. es-.
    | d-. r f-.
    | f-. f-. f-.
    | \grace { g32[( f e] } f4)-. r bes-.\mf
    | a8( bes c bes a g)
    | fis( g a g f es)
    | d( es f es d c)
    | b( c d es f g)
    | bes,!2( a4)

    % 30
    | bes4-. d-. r
    | r f-.\p r
    | r as!-. r
    | r d-.-\markup { \italic "dim" } r
    | r f-. r
    | R2.
    | r4 r as,,-.\p
    | f-. r r
    | r r es'-.\f
    | d8( es f es) g4-.

    % 40
    | es-. r bes'-.
    | es,-. r es'-.
    | es,-. r g'-.
    | es,2(\mf-> d4)
    | c2(-> bes4)
    | a8( bes a bes c a)
    | bes4-. r des-.\f
    | c8( des es des) f4-.
    | g,-. r des'-.
    | bes'-. r des,-.

    % 50
    | f' r des8(\mf c)
    | bes( as g f es des)
    | c( bes as g f es)
    | d!( es f g as bes)
    | g( as bes c d es)
    | d( es f g as bes)
    | g4 r r
    | d8(-\markup { \italic "cresc." } es) f( g) as( bes)
    | g4 r r8 es
    | f(\f g) as( bes) c( d)

    % 60
    | es4-. r
  }

  % Trio

  \repeat volta 2 {
    r4
    | R2.*11
    | r4 r es,-.\p
    | d2( c4)
    | bes2( as4)
    | g2( f4)
    | es2 r4
    | R2.*11
    | r4 r es-.\f
    | f2( g4)

    % 90
    | as2( bes4)
    | c2( d4)
    | es-. r es-.\p
    | d2( c4)
    | bes2( as4)
    | g2( f4)
    | es2 g8( a)
    | bes( a bes) f-. es-. f-.
    | g( fis g) d-. c-. d-.
    | es( d es) bes-. as!-. bes-.

    % 100
    | g4 r c' ~
    | c bes-. as ~
    | as g-. f ~
    | f es-. d ~
    | d es-. ges'\f ~
    | ges f-. es ~
    | es d-. c ~
    | c bes-. d ~
    | d es-. es,-.\p
    | f2 g!4

    % 110
    | as2( bes4)
    | c2( d4) 
    | es2 g4-.
    | bes8( as g f es d)
    | c4-. c'-. bes-.
    | as2.*5/6(\trill \grace { g16[ as]) } s8
    | g2 es4 ~
    | es d-. des ~
    | des c-. bes ~
    | bes a-. as ~

    % 120
    | as g-. bes'-.\f
    | d,,2 bes''4
    | c,,4-. es'8( d! c bes)
    | bes2( as4)
    | g-. r r
    | R2.*7

    % 132
    | r4 r bes8(\p c)
    | as( bes) as( bes) g( as)
    | f( g) f( g) es( f)
    | d( es) d( es) c( d)
    | bes4-. r es'-.\f
    | d2( c4)
    | bes2( as4)
    | g2( f4)

    % 140
    | es2 r4
    | R2.*11

    % 152
    | r4 r es'-.
    | f2( g4)
    | as2( bes4)
    | c2( d4)
    | es-. r
  }

  \repeat volta 2 {
  }
}
