\version "2.18.0"
violinIFourthMov =  \relative es' {
  \key c \minor
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    <es c' g'>4-.\f r <d b' as'>-. r
    | <es c' g'>-. r r c''-.\p
    | b2( c4) d-.
    | es2( d4)-. r
    | c-.\f r <e,, c' bes'!>-. r
    | <f c' as'!>-. r r f'-.\p
    | e2( f4) g-.
    | as2( g4) c,-.
    | f2( es4) c-.

    % 10
    | des2( f4 as)
    | c,2( b)
    | <es, c' g'>4-.\f r <d b' as'>-. r
    | <es c' g'>-. r r8 g'[ es c]
    | \tuplet 3/2 { b as' g f es d c g' f es d c }
    | \tuplet 3/2 { b as' g f es d } c8( g' c bes!)
    | bes( as) as( g) g( f) f( es) 
    | es( d) d2 es8 c
    | \repeat unfold 2 { <d, b' g'>4-. r <es c' g'>-. r }

    % 20
    | <d b' g'>-. r r2
    | r r4 es'
    | d2( es4 f)
    | g2( f
    | es e)
    | f( g4 as)
    | bes2( as4 g)
    | << { f2( g4 es!) } { s4 \preTurnNatural s4^\turnNatural } >>
    | es2( d4) f-.\p
    | e2( f4 g)

    % 30
    | as2( g)
    | f2( g4 as)
    | bes2( as4) c-.\fz
    | d,2( es4) bes'-.
    | f2( g4) r
    | r2 r4 bes-.
    | f2( g4) r
    | r2 r4 es-.
    | d2( es4 f)
    | g2( f

    % 40
    | es des
    | c bes)
    | as( bes4 ces)
    | bes1 ~
    | bes2. as4 ~
    | as g2( f4)
    | \tuplet 3/2 { bes'8\f g f es d c bes as g f es d } \noTupletNum
    | \tuplet 3/2 { es( d es) g( fis g) bes( a bes) es( d es) }
    | \tuplet 3/2 { f b d c bes as g f e f g es } \tupletNum
    | d4-. \tuplet 3/2 { bes8( a bes) c( bes c) d( c d) } \noTupletNum

    % 50
    | \tuplet 3/2 { es-. c( b c) a-. f-. es-. f-. a-. c-. d-. es-. }
    | \tuplet 3/2 { f-. d( cis d) bes-. a-. bes-. c-. d-. es-. e-. f-. }
    | \tuplet 3/2 { g-. es( d es) f-. g-. as-. f( e f) g-. as-. }
    | \tuplet 3/2 { g( as g) c( d c) f, g a bes bes, d }
    | \tuplet 3/2 { es f g as f es d es f g fis g }
    | \tuplet 3/2 { c, d e f! g as bes, c d es f g }
    | \tuplet 3/2 { as as as g g g as as as g g g }
    | c4 r <f,, d'> r
    | <es es'> r r2
    | \tuplet 3/2 { f'8 g as g f es d c bes as g f }

    % 60
    | es4 r r2
    | \tuplet 3/2 { f'8 g as g f es d c bes as g f }
    | es4 r <bes' g'> r
    | <c as'> r <d, bes' as'> r
    | <es bes' g'> r <as c f> r
    | <bes, g' es'> r <bes f' d'> r
    | \tuplet 3/2 { es8 d es g fis g bes a bes g fis g }
    | \tuplet 3/2 { as! c bes as g f! es d f as f d }
    | \tuplet 3/2 { es d es g fis g bes a bes g fis g }
    | \tuplet 3/2 { as! ces bes as ges f es d f as f d }

    % 70
    | \tuplet 3/2 { es d es as f d es d es as f d }
    | es4-. r g-. r
  }

  \alternative {
    {| es4-. r r2}
    {| es4-. r r es'\f}
  }

  | d2( es4 f)
  | g r r f
  | es2( f4 g)
  | as2( c)
  | bes2. as8( g)
  | f2( ges4 es)

  % 80
  | es2( d4) bes-.\p
  | a2( bes4) f'-.
  | ges2( f4) bes,-.
  | a2( bes4) f'-.
  | ges2( f4) r
  | R1*4
  | r4 \tupletNum \tuplet 3/2 { as8\f bes as ges f es des c bes }

  % 90
  | as4( des c ges')
  | r bes,( a es')
  | f,( des' f,) f'-.
  | as2( g4) f8 d
  | g,4 \tuplet 3/2 { g'8 f g as g as bes as bes } \noTupletNum
  | c4 c,8 c' bes4 bes,8 bes'
  | as4 \tuplet 3/2 { as8 g as bes as bes c bes c }
  | f,4 bes2 as4
  | g \tuplet 3/2 { es8 d es f es f g f g }
  | as2 des

  % 100
  | c4 r r2
  | \tuplet 3/2 { des8 es f es des c bes as g f es des }
  | c4 r r2
  | \tuplet 3/2 { des'8 es f es des c bes as g f es des }
  | c4 r r2
  | \tuplet 3/2 { c8 des es des c bes as g as bes c des }
  | \tuplet 3/2 { c des es des c bes as bes c bes as g }
  | \tuplet 3/2 { f g as g f es d! es f es d c }
  | \tuplet 3/2 { bes( a bes) d( cis d) f e f as! g as }
  | \tuplet 3/2 { g fis g bes a bes es d es g fis g }

  % 110
  | \tuplet 3/2 { g, fis g b a b d cis d f! e f }
  | es!4 r r2
  | \tuplet 3/2 { es8 f g f es d c b c d c d }
  | \tuplet 3/2 { es f g f es d } c4 \tuplet 3/2 { c'8( d c) }
  | b4-. \tuplet 3/2 { bes8( c bes) } as!4-. \tuplet 3/2 { g8( as g) }
  | \tuplet 3/2 { f( g f) e( f g) } f4-. \tuplet 3/2 { bes8( c bes) }
  | a4-. \tuplet 3/2 { as8( bes as) } g4-. \tuplet 3/2 { f8( g f) }
  | \tuplet 3/2 { es( f es) d( es f) } es4-. \tuplet 3/2 { g8( as g) }
  | f4-. \tuplet 3/2 { es8( f es) } d4-. \tuplet 3/2 { c8( d c) }
  | b4-. d-. es-. f-.

  % 120
  | <es, c' g'>-. r <d b' as'>-. r
  | <es c' g'>-. r r c''-.\p
  | b2( c4) d-.
  | es2( d4)-. r
  | c-.\f r <e,, c' bes'!>-. r
  | <f c' as'>-. r r f'-.\p
  | e2( f4) g-.
  | as2( g4) c,-.
  | f2( es4) c-.
  | des2( f4 as)

  % 130
  | c,2( b)
  | r2 r4 c
  | des2( f4 as)
  | c,2( b)
  | r2 r4 c\pp
  | des2( f4 as)
  | bes,2( es4 ges)
  | as,4( des8 f) ges,4( c8 es)
  | \tuplet 3/2 { des8(\f c des) f( e f) as g as f( e f) }
  | \tuplet 3/2 { ges-. bes-. as-. ges f es! des c es ges es c }

  % 140
  | des4 r r as'
  | \grace { g32[( as bes] } as2) d,!
  | \tuplet 3/2 { es8( d es) ges( f ges) bes( a bes) ges( f ges) }
  | \tuplet 3/2 { as!-. ces-. bes-. as ges f es d f as f d }
  | es4 r r bes'
  | \grace { a32[( bes c] } bes2) e,
  | \tuplet 3/2 { f8( e f) as( g as) } c4 r
  | \tuplet 3/2 { c,8( b c) g'( fis g) } c4 r
  | \tuplet 3/2 { c,8( b c) g'( fis g) } c4 r
  | <f,! d'>4 r <es c'> r

  % 150
  | <d b'> r <es c'> r
  | <d b'> r <es c'> r
  | <d b'> r r\fermata \key c \major c4-.\p
  | b!2( c4 d)
  | e!2( d4) r
  | r2 r4 d-.
  | cis2( d4 e)
  | f2( e4) r
  | r2 r4 a-.\f
  | gis2( a4) f-.

  % 160
  | g!2( f4) a
  | b,2( c4) a'
  | b,2( c4) c'
  | b2( c4) g
  | d2( e4) r
  | r2 r4 g
  | d2( e4) r
  | r2 r4 c'
  | b2( c4 d)
  | e2( d

  % 170
  | c bes)
  | a( g)
  | f2.( g8 as)
  | g1 ~
  | g2. f4 ~
  | f e2( d4)
  | c r r2
  | \tuplet 3/2 { d8 e f e d c b a g f e d }
  | c4 r r2
  | \tuplet 3/2 { d''8 e f e d c b a g f e d }

  % 180
  | c4-. r <bes e>-. r
  | \tuplet 3/2 { f'8 f f f f f fis fis fis fis fis fis }
  | g4-. r <d, b'>-. r
  | <e c'> r r c''
  | b2( c4 d)
  | e r r c,
  | b2( c4 d)
  | e4-. r <e g>-. r
  | <c e>-. r <e, c'>4. <e c'>8
  | <e c'>4 r r2

  \bar "|."
}
