\version "2.6.0"
violinIIFourthMov =  \relative es' {
  \key c \minor
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2 {
    <es c'>4-.\f r f'-. r
    | es-. r r c-.
    | d2( c4) g'-.
    | fis2( g4)-. r
    | <c, g'>-.\f r <c g'>-. r
    | <c as'>-. r r c-.\p
    | des2( c4) c-.
    | b2( c)
    | d!( c4) r

    % 10
    | des,1
    | es!2( f)
    | <es c'>4-.\f r f'-. r
    | es-. r r2
    | <d, b'>2( <es c'>4) g
    | <d b'>2 << { c'2 ~ } \\ { es,4 es\rest } >>
    | c1 ~ 
    | c 
    | <d b' g'>4-. r <es c' g'>-. r
    | <d b' g'>-. r <es c' g'>-. r

    % 20
    | <d b' g'>-. r r g
    | fis2( g4 a)
    | bes( as! g f!)
    | es( bes') as-. as-.
    | g1(
    | as2 bes4 c)
    | des2(\fz c4 bes)
    | as c2 c4
    | bes r r2
    | R1

    % 30
    | r4 f'2\p es4 ~
    | es d( e f)
    | g2( f4) as,!-.
    | \repeat unfold 2 { as8-. bes-. as-. bes-. g-. bes-. g-. bes-. }
    | \repeat unfold 3 { as bes as bes g bes g bes }
    | as bes as bes g4( as)
    | bes2( as)

    % 40
    | g4-. g( as bes)
    | c-. es,( f g)
    | as1( ~
    | as2 g4 f)
    | es( des c) f ~
    | f es2( d!4)
    | <es bes' g'>4-.\f r <as, d> r
    | <g es'>-. r r2
    | <f' c'>4-. r <f es'>-. r
    | <f d'>-. r r2

    % 50
    | a1\fz
    | as!\fz
    | g4-. r r2
    | r4 es'2 d4 ~
    | d c2 bes4 ~
    | bes as2 g4
    | \times 2/3 { f8 f f g g g f f f g g g }
    | as4 r as r
    | \times 2/3 { g'8 as bes as g f es d c bes as g } \noTupletNum
    | f4 r r2

    % 60
    | \times 2/3 { g'8 as bes as g f es d c bes as g } \tupletNum
    | f2( g4 as)
    | bes r <es, es'> r
    | <es es'> r <bes' f'> r
    | <bes g'> r <as c f> r
    | <bes, g' es'> r <bes f' d'> r
    | bes2( des)
    | c( as)
    | g( des')
    | ces1

    % 70
    | bes4( ces bes ces)
    | bes-. r bes-. r
  }

  \alternative {
    {| g-. r r2}
    {| g4-. r r g'\f}
  }

  | f2( g4 as)
  | bes r r as
  | g2( as4 bes)
  | c2 as' ~
  | as g4 f8( es)
  | es2.( c4)

  % 80
  | c2( bes4) f-.\p
  | ges2( f4) bes-.
  | a2( bes4) f-.
  | ges2( f4) bes-.
  | a2( bes4) r
  | r \times 2/3 { bes8\f c bes as! g! f es d c }
  | bes4( es d as')
  | g2( as4 bes)
  | c2( bes4 g)
  | as( es f ges)

  % 90
  | as2( ges
  | f es)
  | des( c4) c'-.
  | b2( c4 d!)
  | es2( d)
  | c( d4 e)
  | f2( es) ~
  | es4 \times 2/3 { d8 c d es d es f es f }
  | bes,4 r r es ~
  | es as bes es,8. bes'16

  % 100
  | \times 2/3 { c8 des es des c bes as g f es des c } \noTupletNum
  | bes4 r r2
  | \times 2/3 { c'8 des es des c bes as g f es des c }
  | bes4 r r es,
  | \times 2/3 { c'8 des es des c bes as g as bes c des }
  | c4 r r2
  | \times 2/3 { c8 des es des c bes as bes c bes as g }
  | \times 2/3 { f g as g f es d! es f es d c }
  | bes4 f''2\fz f,4
  | g g'2\fz es,4

  % 110
  | d d''2\fz d,4
  | \times 2/3 { es8 f g f es d c b c d c d }
  | es4 r r2
  | r2 r4 \times 2/3 { es,8( d es) }
  | f4-. \times 2/3 { g8( f g) } as4-. bes-.
  | as-. bes-. as-. \times 2/3 { d,8( c d) }
  | es4-. \times 2/3 { f8( es f) } g4-. as-.
  | g-. as-. g-. \times 2/3 { es'8( f es) }
  | d4-. \times 2/3 { c8( d c) } \tupletNum b4-. fis-.
  | g-. b-. c-. d-.

  % 120
  | es-. r f-. r
  | es-. r r c-.\p
  | d2( c4) g'-.
  | fis2( g4)-. r
  | <c, g'>-.\f r <c g'>-. r
  | <c as'>-. r r c-.\p
  | des2( c4) c-.
  | b2( c)
  | d!2( c4) r
  | des,1(

  % 130
  | es!2 f)
  | R1
  | des1(
  | es2 f)
  | R1
  | des\pp ~
  | des2 ges(
  | f es)
  | <as, f'>1\f
  | <c es>2.\fz as4

  % 140
  | \times 2/3 { des8( c des) f( e f) 
  as( g as) es( f es) } \noTupletNum
  | \times 2/3 { d!-. es-. f-. f ges as as bes ces ces bes as }
  | ges4 ges2 ges4
  | <d! f>2.\fz bes4
  | \times 2/3 { es8( d es) ges( f ges) bes( a bes) f( g f) }
  | \times 2/3 { e-. f-. g-. g as! bes bes c des des c bes }
  | as4 r \times 2/3 { f8( e f) as( g a) }
  | c4 r \times 2/3 { c,8( b c) g'( fis g) }
  | c4 r \times 2/3 { c,8( b c) g'( fis g) } \tupletNum
  | g,4 r fis'' r

  % 150
  | g r fis r
  | g r fis r
  | g r r\fermata \key c \major g,-.\p
  | g1 ~
  | g4( fis g) r
  | r2 r4 a-.
  | a1 ~
  | a4( gis a) r
  | r2 r4 f'-.\f
  | e2( f4) a,-.

  % 160
  | bes2( a4) r
  | f2( e!4) r
  | f2( e8)-. g-. e-. g-.
  | f-. g-. f-. g-. e-. g-. e-. g-.
  | f-. g-. f-. g-. e-. g-. e-. g-.
  | f g f g e g e g
  | f g f g e g e g
  | f g f g e c' e g
  | f g f g e4( f)
  | g2( f)

  % 170
  | e4-. e( f g)
  | a-. c,( d e)
  | f1 ~
  | f2 e4( d)
  | c( bes a) d ~
  | d c2( b4)
  | \times 2/3 { e8 f g f e d c b a g f e }
  | d4 r r2
  | \times 2/3 {e'8 f g f e d c b a g f e }
  | d2( e4 f)

  % 180
  | g-. r c-. r
  | \repeat unfold 4 { \times 2/3 { c8 c c } }
  | e4-. r <f, d'>-. r
  | <e c'> r r e'
  | f2( e4 b')
  | c r r g,
  | as2( g4 f)
  | e-. r <e c'>-. r
  | <c' e>-. r <e, c'>4. <e c'>8
  | <e c'>4 r r2

  \bar "|."
}
