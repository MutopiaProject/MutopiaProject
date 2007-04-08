viola = \relative c'
{
    \key c \minor
    \clef alto
    \time 2/2
    \override Staff.Hairpin #'minimum-length = #5

    R1*8
    | c1-\p

% 10
    | b4 << { d2 d4 } \\ { b2-\f b4 } >>
    | f'1-\p
    | es4 <c, c'>2-\f <c c'>4
    | <c c'> r r2
    | as'8-\f as4 as as8( g b)
    | c4 r r2
    | b8-\f b4 b b b8(
    | c4) r r2
    | R1
    | es8-\f es4 es es es8(

% 20
    | f) f4 f f f8
    | es1-\p
    | d4 r r es8.( d16)
    | d4 r r es8.( d16)
    | d4 d(-\markup { \italic "cresc." } es d)
    | es-\p bes( c as)
    | g( bes g f)
    | g4 c2( bes4)
    | as( es) bes'2 ~
    | bes4 c-\f d es8( a,)

% 30
    | bes4 as!(-\p g f)
    | es( d) c( bes')
    | as( g) as2
    | g4 b(-\f c) f8( b,)
    | c <c, c'>4 <c c'> <c c'> <c c'>8 ~
    | <c c'> <c c'>4 <c c'>4 <c c'>4 <c c'>8 ~
    | <c c'> <c c'>4 <c c'>4 <c c'>4 <c c'>8
    | << { g'8 g4 g g g8 ~ 
	   g g4 g8( a) a4 a8( 
	   bes) d4 d d d8( 
	   es) es4 es es es8 ~ 
	   es es4 es8( f) f4 f8(
           g) g4 g8( as) as4 as8(
           g) g4 g8( f) f4 f8(
           es4) } \\
	 { es,8 es4 es es es8 ~
           es es4 es8 ~ es es4 es8(
           f) bes4 bes bes bes8(
           g) g4 g g g8(
           c8) c4 c8( bes) bes4 bes8 ~
           bes bes4 bes8( as) as4 as8(
           bes) bes4 bes d d8(
           es4) } >> bes2-\p bes4 ~
    | bes g2 c4 ~
    | c c2 c4 ~
    | c a2 d4
    | d8 << { g4 g g g8 ~ g g4 g g g8 ~ g s4. s2 } \\
	    { g,4 g g g8 ~ g g4 g g g8 ~ g as'!( g fis g d es b) } >>

% 51
    | c(-\p b c d, es e f fis)
    | g(-\f f! as g f es? d c)
    | b(-\p c d g, as a bes b)
    | c-\f es( f fis g as a b)
    | c4 r r2
    | as?8-\f as4 as as8( g b)
    | c4 r r2
    | b8-\f b4 b b b8(
    | c) g'4 g << { bes! bes8( as) as4 as as as8( a) a4 a a a8 } \\
		  { g4 g8( c,) c4 c c c8 ~ c c4 c c c8 } >>

% 62
    | r g-\p g g r << { g g g } \\ { f f f } >>
    | << g4 es >> r r e
    | f2( g) ~
    | g2. e'4(
    | f2) g
    | as4 r c,-\pp r
    | c r b r
    | << { c1 } { c, } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}