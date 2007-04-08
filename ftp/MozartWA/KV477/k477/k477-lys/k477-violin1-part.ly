violinI = \relative as'
{
    \key c \minor
    \time 2/2
    \override Hairpin #'minimum-length = #5
    \override TupletBracket #'bracket-visibility = #'if-no-beam

    R1*7
    | r8 as(-\p g fis g d es b)
    | c( es as g fis a c fis)

% 10
    | g as?(-\f f! d b as? f d)
    | as(-\p g b d g b d g)
    | as(-\f g d es) b( c) fis,( g)
    | es4 r r2
    | r8 d'(-\f f) f-| f4. g32( f es d
    | es4) r r2
    | r8 b(-\f as') as-| as4. g32( f es d
    | es4) r r2
    | r r8 bes!(-\f bes') bes-|
    | bes4 ~ bes8. g32 es bes8 bes( bes') bes-|

% 20
    | bes4 ~ bes8. f32 d bes8 bes( bes') bes-|
    | bes8-\p bes,4 ces bes a8
    | bes4 r r c?8.( bes16)
    | bes4 r r c8.( bes16)
    | bes4 bes2-\markup { \italic "cresc." } bes4 ~
    | bes8(-\p es) r bes16( g) f8( c') r bes16( f)
    | g8( bes) r es16( bes) g'8( bes,) b( f')
    | es( c) r c16( g) es'8( c) des( e,)
    | f( c') r c16( es,!) d8( c' bes as)
    | g( bes) r g'16(-\f c,) f8( bes,) a( es')

% 30
    | d( g,) r8 es'16(-\p c) b8( d) r d16( b)
    | d8( c) r f16( d) f8( es) r e16( c)
    | c'8( c,) r c16(-\p b) c8( es d c)
    | b( d) r d16(-\f g,) g'8( c,) b( f')
    | es4 r r8 g,8( es') es-|
    | es4..( \times 2/3 { d32 c b } c8) c( g') g-|
    | g4..( \times 2/3 { f32 es d } es8) c( g') g-|
    | g4..( \times 2/3 { f32 es d } es4.) g,32( f es d
    | es4..) \tupletDown \times 2/3 { d32( c b } \tupletNeutral
      c8.[) c'32( d)] es8.[ \times 2/3 { f32( g a] }
    | bes?4.) f,32( es d c) bes8 bes'( bes') bes-|

% 40
    | bes4.. \times 2/3 { as?32( g f } g8) bes,( g') g-|
    | g4. es32( f g a bes4..) \times 2/3 { d,32( es f }
    | g4..) \tupletDown \times 2/3 { g,32( as? bes } \tupletNeutral
      c4..) \times 2/3 { es,32( d c }
    | bes4..) \times 2/3 { g''32( f es } d8)( f) f,( as)
    | g8 es4-\p g bes des8 ~
    | des bes4 g e c8 ~
    | c f4 as c es8 ~
    | es c4 a fis d8 ~
    | d g(-\f g') g-| g4. f32( es d c
    | b8) d( g) g-| g4. f32( es d c

% 50
    | b8) as?( g fis g d es b)
    | c(-\p b c d es e f fis)
    | g(-\f f! as g f es? d c)
    | b(-\p c d g, as a bes b)
    | c-\f es( f fis g as a b)
    | c4 r r2
    | r8 d(-\f f) f-| f4. g32( f es d
    | es4) r r2
    | r8 b(-\f as') as-| as4. g32( f es d
    | es8) c( c') c c2 ~

% 60
    | c8 c,( c') c c2 ~
    | c8 c,( c') c c2
    | r8 es,,-\p es es r d d d
    | r c16.[( es32]) g8[ g] r e16.[( g32]) bes8[ bes]
    | r as r es? d( as' g f)
    | r es16.[( g32]) c8[ c] r e,16.[( g32]) c8 c
    | c ges( f es? d? as' g f)
    | es4 r as-\pp r
    | g r g r
    | << { e1 } { g, } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}